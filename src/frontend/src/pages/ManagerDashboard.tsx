import { useEffect, useState } from 'react';
import Layout from '../components/Layout';

interface DashboardStats {
  total_students: number;
  current_intake_students: number;
  total_instructors: number;
  total_courses: number;
  total_branches: number;
  total_tracks: number;
  total_exams: number;
  current_intake_exams: number;
  normal_exams: number;
  corrective_exams: number;
  total_submissions: number;
  overall_avg_score: number | null;
  total_passes: number;
  total_failures: number;
  overall_pass_rate: number;
  active_students: number;
  graduated_students: number;
  withdrawn_students: number;
  current_intake_year: number | null;
}

export default function ManagerDashboard() {
  const [stats, setStats] = useState<DashboardStats | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const user = JSON.parse(localStorage.getItem('user') || '{}');
  const userName = user.full_name || "Manager";

  useEffect(() => {
    const fetchDashboardData = async () => {
      try {
        const response = await fetch('http://localhost:8000/api/dashboard/stats');
        if (!response.ok) throw new Error('Failed to fetch dashboard data');
        const data = await response.json();
        setStats(data);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    };

    fetchDashboardData();
  }, []);

  if (loading) {
    return (
      <Layout>
        <div className="flex items-center justify-center h-64">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-iti-red"></div>
        </div>
      </Layout>
    );
  }

  if (error || !stats) {
    return (
      <Layout>
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded">
          Error: {error || 'Failed to load dashboard data'}
        </div>
      </Layout>
    );
  }

  const statCards = [
    { label: 'Total Students', value: stats.total_students, subtitle: `${stats.graduated_students} graduated`, color: 'bg-blue-500' },
    { label: 'Active Students', value: stats.active_students, subtitle: `${stats.withdrawn_students} withdrawn`, color: 'bg-green-500' },
    { label: 'Total Instructors', value: stats.total_instructors, subtitle: 'Teaching staff', color: 'bg-purple-500' },
    { label: 'Total Courses', value: stats.total_courses, subtitle: 'Available courses', color: 'bg-orange-500' },
    { label: 'Total Exams', value: stats.total_exams, subtitle: `${stats.corrective_exams} corrective`, color: 'bg-red-500' },
    { label: 'Branches', value: stats.total_branches, subtitle: 'Nationwide', color: 'bg-indigo-500' },
    { label: 'Tracks', value: stats.total_tracks, subtitle: 'Specializations', color: 'bg-pink-500' },
    { label: 'Pass Rate', value: `${stats.overall_pass_rate.toFixed(1)}%`, subtitle: `${stats.total_passes} passed`, color: 'bg-teal-500' },
  ];

  return (
    <Layout>
      <div className="space-y-6">
        {/* Header */}
        <div>
          <h1 className="text-3xl font-bold text-iti-charcoal">Manager Dashboard</h1>
          <p className="text-gray-500 mt-1">Welcome back, {userName}! System-wide overview.</p>
        </div>

        {/* Stats Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {statCards.map((stat, index) => (
            <div key={index} className="bg-white rounded-lg shadow p-6 hover:shadow-lg transition-shadow">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm font-medium text-gray-600">{stat.label}</p>
                  <p className="text-2xl font-bold text-gray-900 mt-2">{stat.value}</p>
                  <p className="text-xs text-gray-500 mt-1">{stat.subtitle}</p>
                </div>
                <div className={`w-12 h-12 ${stat.color} rounded-lg`}></div>
              </div>
            </div>
          ))}
        </div>

        {/* Additional Info */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <div className="bg-white rounded-lg shadow p-6">
            <h2 className="text-xl font-bold text-gray-900 mb-4">Current Intake</h2>
            <div className="space-y-2">
              <div className="flex justify-between">
                <span className="text-gray-600">Year:</span>
                <span className="font-semibold">{stats.current_intake_year || 'N/A'}</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600">Students:</span>
                <span className="font-semibold">{stats.current_intake_students}</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600">Exams:</span>
                <span className="font-semibold">{stats.current_intake_exams}</span>
              </div>
            </div>
          </div>

          <div className="bg-white rounded-lg shadow p-6">
            <h2 className="text-xl font-bold text-gray-900 mb-4">Performance Overview</h2>
            <div className="space-y-2">
              <div className="flex justify-between">
                <span className="text-gray-600">Total Submissions:</span>
                <span className="font-semibold">{stats.total_submissions}</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600">Average Score:</span>
                <span className="font-semibold">{stats.overall_avg_score?.toFixed(1) || 'N/A'}%</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600">Pass/Fail:</span>
                <span className="font-semibold">{stats.total_passes} / {stats.total_failures}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
}
