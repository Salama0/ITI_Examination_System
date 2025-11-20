import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import Layout from '../components/Layout';

interface DashboardStats {
  // Entity counts
  total_students: number;
  current_intake_students: number;
  total_instructors: number;
  total_courses: number;
  total_branches: number;
  total_tracks: number;

  // Exam statistics
  total_exams: number;
  current_intake_exams: number;
  normal_exams: number;
  corrective_exams: number;

  // Performance metrics
  total_submissions: number;
  overall_avg_score: number | null;
  total_passes: number;
  total_failures: number;
  overall_pass_rate: number;

  // Student status
  active_students: number;  // Status = 'Student'
  graduated_students: number;
  withdrawn_students: number;

  // Current intake info
  current_intake_year: number | null;
}

interface RecentExam {
  exam_id: number;
  course_name: string;
  exam_date: string | null;
  instructor_name: string;
  track_name: string;
  branch_name: string;
  exam_type: string;
  submissions: number;
  avg_score: number | null;
  passed: number;
  failed: number;
}

interface TopPerformer {
  id: number;
  name: string;
  track: string | null;
  avg_grade: number;
  exams_taken: number;
}

export default function Dashboard() {
  const navigate = useNavigate();
  const [stats, setStats] = useState<DashboardStats | null>(null);
  const [recentExams, setRecentExams] = useState<RecentExam[]>([]);
  const [topPerformers, setTopPerformers] = useState<TopPerformer[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // For now, hardcoded user - will be replaced with auth context later
  // Get user information from localStorage
  const user = JSON.parse(localStorage.getItem('user') || '{}');
  const userName = user.full_name || "User";

  useEffect(() => {
    const fetchDashboardData = async () => {
      try {
        setLoading(true);
        setError(null);

        // Fetch all dashboard data in parallel
        const [statsRes, examsRes, performersRes] = await Promise.all([
          fetch('http://localhost:8000/api/dashboard/stats'),
          fetch('http://localhost:8000/api/dashboard/recent-exams?limit=5'),
          fetch('http://localhost:8000/api/dashboard/top-performers?limit=5')
        ]);

        if (!statsRes.ok || !examsRes.ok || !performersRes.ok) {
          throw new Error('API request failed');
        }

        setStats(await statsRes.json());
        setRecentExams(await examsRes.json());
        setTopPerformers(await performersRes.json());
      } catch (err) {
        console.error('Failed to fetch dashboard data:', err);
        setError('Failed to load dashboard data. Database may be paused - please try again.');
      } finally {
        setLoading(false);
      }
    };

    fetchDashboardData();
  }, []);

  const statCards = stats ? [
    { label: 'Total Students', value: stats.total_students, subtitle: `${stats.graduated_students} graduated`, icon: UsersIcon, color: 'bg-blue-500' },
    { label: 'Instructors', value: stats.total_instructors, subtitle: `${stats.total_branches} branches`, icon: AcademicIcon, color: 'bg-green-500' },
    { label: 'Courses', value: stats.total_courses, subtitle: `${stats.total_tracks} tracks`, icon: BookIcon, color: 'bg-purple-500' },
    { label: 'Total Exams', value: stats.total_exams, subtitle: `${stats.total_submissions} submissions`, icon: DocumentIcon, color: 'bg-iti-red' },
  ] : [];

  return (
    <Layout>
      {/* Header */}
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-iti-charcoal">Dashboard</h1>
        <p className="text-gray-500 mt-1">Welcome back, {userName}! Here's what's happening.</p>
      </div>

      {/* Error Message */}
      {error && (
        <div className="mb-6 p-4 bg-red-50 border border-red-200 text-red-600 rounded-lg">
          {error}
          <button
            onClick={() => window.location.reload()}
            className="ml-4 text-sm underline"
          >
            Retry
          </button>
        </div>
      )}

      {/* Stats Grid */}
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        {loading ? (
          // Loading skeletons
          [...Array(4)].map((_, i) => (
            <div key={i} className="bg-white rounded-xl shadow-sm p-6">
              <div className="flex items-center justify-between">
                <div>
                  <div className="h-4 w-24 bg-gray-200 rounded animate-pulse mb-2"></div>
                  <div className="h-8 w-16 bg-gray-200 rounded animate-pulse"></div>
                </div>
                <div className="w-12 h-12 bg-gray-200 rounded-lg animate-pulse"></div>
              </div>
            </div>
          ))
        ) : (
          statCards.map((stat) => (
            <div key={stat.label} className="bg-white rounded-xl shadow-sm p-6 hover:shadow-md transition-shadow">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-gray-500">{stat.label}</p>
                  <p className="text-3xl font-bold text-iti-charcoal mt-1">
                    {stat.value.toLocaleString()}
                  </p>
                  {stat.subtitle && (
                    <p className="text-xs text-gray-400 mt-1">{stat.subtitle}</p>
                  )}
                </div>
                <div className={`${stat.color} p-3 rounded-lg`}>
                  <stat.icon className="w-6 h-6 text-white" />
                </div>
              </div>
            </div>
          ))
        )}
      </div>

      {/* Pass Rate Card */}
      {stats && (
        <div className="mb-8 bg-gradient-to-r from-iti-red to-iti-maroon rounded-xl shadow-sm p-6 text-white">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm opacity-80">Overall Exam Pass Rate</p>
              <p className="text-4xl font-bold mt-1">{stats.overall_pass_rate}%</p>
              <p className="text-sm mt-2 opacity-80">
                {stats.total_passes.toLocaleString()} passed / {stats.total_submissions.toLocaleString()} submissions
              </p>
              {stats.current_intake_year && (
                <p className="text-xs mt-1 opacity-60">
                  Current intake: {stats.current_intake_year} ({stats.current_intake_students} students)
                </p>
              )}
            </div>
            <div className="text-right">
              <ChartIcon className="w-16 h-16 opacity-50" />
              {stats.overall_avg_score && (
                <p className="text-sm mt-2 opacity-80">Avg: {stats.overall_avg_score}%</p>
              )}
            </div>
          </div>
        </div>
      )}

      {/* Content Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* Recent Exams */}
        <div className="lg:col-span-2 bg-white rounded-xl shadow-sm">
          <div className="p-6 border-b border-gray-100">
            <h2 className="text-lg font-semibold text-iti-charcoal">Recent Exams (Last 30 Days)</h2>
          </div>
          <div className="p-6">
            {loading ? (
              <div className="space-y-4">
                {[...Array(4)].map((_, i) => (
                  <div key={i} className="h-12 bg-gray-100 rounded animate-pulse"></div>
                ))}
              </div>
            ) : recentExams.length > 0 ? (
              <div className="overflow-x-auto">
                <table className="w-full">
                  <thead>
                    <tr className="text-left text-sm text-gray-500">
                      <th className="pb-3 font-medium">Course</th>
                      <th className="pb-3 font-medium">Date</th>
                      <th className="pb-3 font-medium">Track</th>
                      <th className="pb-3 font-medium">Pass/Fail</th>
                      <th className="pb-3 font-medium">Avg Score</th>
                    </tr>
                  </thead>
                  <tbody>
                    {recentExams.map((exam) => (
                      <tr key={exam.exam_id} className="border-t border-gray-50">
                        <td className="py-3">
                          <p className="font-medium text-iti-charcoal">{exam.course_name}</p>
                          <p className="text-xs text-gray-400">{exam.exam_type}</p>
                        </td>
                        <td className="py-3 text-gray-500 text-sm">{exam.exam_date || 'N/A'}</td>
                        <td className="py-3 text-gray-500 text-sm">{exam.track_name}</td>
                        <td className="py-3">
                          <span className="text-green-600 text-sm">{exam.passed}</span>
                          <span className="text-gray-400 text-sm"> / </span>
                          <span className="text-red-600 text-sm">{exam.failed}</span>
                        </td>
                        <td className="py-3">
                          {exam.avg_score !== null ? (
                            <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                              exam.avg_score >= 70 ? 'bg-green-100 text-green-700' :
                              exam.avg_score >= 50 ? 'bg-yellow-100 text-yellow-700' :
                              'bg-red-100 text-red-700'
                            }`}>
                              {exam.avg_score}%
                            </span>
                          ) : (
                            <span className="text-gray-400">-</span>
                          )}
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            ) : (
              <p className="text-gray-500 text-center py-8">No exams in the last 30 days</p>
            )}
            <button
              onClick={() => navigate('/exams')}
              className="mt-4 text-sm text-iti-red hover:text-iti-maroon hover:scale-105 font-medium cursor-pointer transition-all"
            >
              View all exams →
            </button>
          </div>
        </div>

        {/* Top Performers */}
        <div className="bg-white rounded-xl shadow-sm">
          <div className="p-6 border-b border-gray-100">
            <h2 className="text-lg font-semibold text-iti-charcoal">Top Performers</h2>
          </div>
          <div className="p-6">
            {loading ? (
              <div className="space-y-4">
                {[...Array(4)].map((_, i) => (
                  <div key={i} className="h-12 bg-gray-100 rounded animate-pulse"></div>
                ))}
              </div>
            ) : topPerformers.length > 0 ? (
              <div className="space-y-4">
                {topPerformers.map((student, index) => (
                  <div key={student.id} className="flex items-center space-x-3">
                    <div className={`w-8 h-8 rounded-full flex items-center justify-center text-white font-bold text-sm ${
                      index === 0 ? 'bg-yellow-500' :
                      index === 1 ? 'bg-gray-400' :
                      index === 2 ? 'bg-amber-600' :
                      'bg-gray-300'
                    }`}>
                      {index + 1}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-medium text-iti-charcoal text-sm truncate">{student.name}</p>
                      <p className="text-xs text-gray-500">{student.track || 'N/A'}</p>
                    </div>
                    <div className="text-right">
                      <p className="font-bold text-iti-red">{student.avg_grade}%</p>
                      <p className="text-xs text-gray-400">{student.exams_taken} exams</p>
                    </div>
                  </div>
                ))}
              </div>
            ) : (
              <p className="text-gray-500 text-center py-8">No data available</p>
            )}
            <button
              onClick={() => navigate('/students')}
              className="mt-4 text-sm text-iti-red hover:text-iti-maroon hover:scale-105 font-medium cursor-pointer transition-all"
            >
              View all students →
            </button>
          </div>
        </div>
      </div>

      {/* Quick Actions */}
      <div className="mt-8 bg-white rounded-xl shadow-sm p-6">
        <h2 className="text-lg font-semibold text-iti-charcoal mb-4">Quick Actions</h2>
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          <button className="p-4 border border-gray-200 rounded-lg hover:border-iti-red hover:bg-iti-pink/10 transition-all text-left">
            <DocumentIcon className="w-6 h-6 text-iti-red mb-2" />
            <p className="font-medium text-sm text-iti-charcoal">Create Exam</p>
          </button>
          <button className="p-4 border border-gray-200 rounded-lg hover:border-iti-red hover:bg-iti-pink/10 transition-all text-left">
            <UsersIcon className="w-6 h-6 text-iti-red mb-2" />
            <p className="font-medium text-sm text-iti-charcoal">Add Student</p>
          </button>
          <button className="p-4 border border-gray-200 rounded-lg hover:border-iti-red hover:bg-iti-pink/10 transition-all text-left">
            <BookIcon className="w-6 h-6 text-iti-red mb-2" />
            <p className="font-medium text-sm text-iti-charcoal">View Courses</p>
          </button>
          <button className="p-4 border border-gray-200 rounded-lg hover:border-iti-red hover:bg-iti-pink/10 transition-all text-left">
            <ChartIcon className="w-6 h-6 text-iti-red mb-2" />
            <p className="font-medium text-sm text-iti-charcoal">Reports</p>
          </button>
        </div>
      </div>
    </Layout>
  );
}

// Icons
function UsersIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
    </svg>
  );
}

function AcademicIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path d="M12 14l9-5-9-5-9 5 9 5z" />
      <path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z" />
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222" />
    </svg>
  );
}

function BookIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
    </svg>
  );
}

function DocumentIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
    </svg>
  );
}

function ChartIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
    </svg>
  );
}
