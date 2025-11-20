import { useEffect, useState } from 'react';
import Layout from '../components/Layout';

interface StudentGrade {
  exam_id: number;
  course_name: string;
  exam_date: string | null;
  exam_type: string;
  student_score: number | null;
  max_score: number;
  percentage: number | null;
  passed: boolean;
}

interface UpcomingExam {
  exam_id: number;
  course_name: string;
  exam_date: string | null;
  instructor_name: string;
}

export default function StudentDashboard() {
  const [grades, setGrades] = useState<StudentGrade[]>([]);
  const [upcomingExams, setUpcomingExams] = useState<UpcomingExam[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const user = JSON.parse(localStorage.getItem('user') || '{}');
  const userName = user.full_name || "Student";
  const studentId = user.student_id;
  const trackName = user.track_name || 'N/A';
  const branchName = user.branch_name || 'N/A';

  useEffect(() => {
    const fetchStudentData = async () => {
      if (!studentId) {
        setError('Student ID not found');
        setLoading(false);
        return;
      }

      try {
        // TODO: Implement backend endpoints for student-specific data
        // For now, using placeholder data
        const token = localStorage.getItem('token');

        // Fetch student's grades
        // const gradesResponse = await fetch(`http://localhost:8000/api/student/grades`, {
        //   headers: { 'Authorization': `Bearer ${token}` }
        // });

        // Fetch upcoming exams
        // const examsResponse = await fetch(`http://localhost:8000/api/student/upcoming-exams`, {
        //   headers: { 'Authorization': `Bearer ${token}` }
        // });

        // Placeholder data for now
        setGrades([
          { exam_id: 1, course_name: 'Database Fundamentals', exam_date: '2025-10-15', exam_type: 'Normal', student_score: 85, max_score: 100, percentage: 85, passed: true },
          { exam_id: 2, course_name: 'Web Development', exam_date: '2025-10-20', exam_type: 'Normal', student_score: 72, max_score: 100, percentage: 72, passed: true },
          { exam_id: 3, course_name: 'Python Programming', exam_date: '2025-10-25', exam_type: 'Normal', student_score: 55, max_score: 100, percentage: 55, passed: false },
        ]);

        setUpcomingExams([
          { exam_id: 4, course_name: 'Advanced Databases', exam_date: '2025-11-25', instructor_name: 'Dr. Ahmed Mohamed' },
          { exam_id: 5, course_name: 'React Framework', exam_date: '2025-11-28', instructor_name: 'Eng. Sara Ali' },
        ]);

        setLoading(false);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
        setLoading(false);
      }
    };

    fetchStudentData();
  }, [studentId]);

  if (loading) {
    return (
      <Layout>
        <div className="flex items-center justify-center h-64">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-iti-red"></div>
        </div>
      </Layout>
    );
  }

  if (error) {
    return (
      <Layout>
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded">
          Error: {error}
        </div>
      </Layout>
    );
  }

  const passedExams = grades.filter(g => g.passed).length;
  const failedExams = grades.filter(g => !g.passed).length;
  const averageScore = grades.length > 0
    ? grades.reduce((sum, g) => sum + (g.percentage || 0), 0) / grades.length
    : 0;

  return (
    <Layout>
      <div className="space-y-6">
        {/* Header */}
        <div>
          <h1 className="text-3xl font-bold text-iti-charcoal">Student Dashboard</h1>
          <p className="text-gray-500 mt-1">Welcome back, {userName}!</p>
          <p className="text-sm text-gray-400">{trackName} • {branchName}</p>
        </div>

        {/* Quick Stats */}
        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">Exams Taken</p>
            <p className="text-3xl font-bold text-gray-900 mt-2">{grades.length}</p>
            <p className="text-xs text-gray-500 mt-1">Total exams</p>
          </div>
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">Passed</p>
            <p className="text-3xl font-bold text-green-600 mt-2">{passedExams}</p>
            <p className="text-xs text-gray-500 mt-1">Successful</p>
          </div>
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">Failed</p>
            <p className="text-3xl font-bold text-red-600 mt-2">{failedExams}</p>
            <p className="text-xs text-gray-500 mt-1">Need improvement</p>
          </div>
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">Average Score</p>
            <p className="text-3xl font-bold text-iti-red mt-2">{averageScore.toFixed(1)}%</p>
            <p className="text-xs text-gray-500 mt-1">Overall performance</p>
          </div>
        </div>

        {/* Upcoming Exams */}
        <div className="bg-white rounded-lg shadow">
          <div className="px-6 py-4 border-b border-gray-200">
            <h2 className="text-xl font-bold text-gray-900">Upcoming Exams</h2>
          </div>
          <div className="p-6">
            {upcomingExams.length === 0 ? (
              <p className="text-gray-500 text-center py-8">No upcoming exams</p>
            ) : (
              <div className="space-y-4">
                {upcomingExams.map((exam) => (
                  <div key={exam.exam_id} className="border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow">
                    <div className="flex justify-between items-start">
                      <div>
                        <h3 className="font-semibold text-lg text-gray-900">{exam.course_name}</h3>
                        <p className="text-sm text-gray-600 mt-1">
                          {exam.exam_date || 'Date TBD'} • Instructor: {exam.instructor_name}
                        </p>
                      </div>
                      <button className="px-4 py-2 bg-iti-red text-white rounded-lg hover:bg-iti-maroon transition-colors">
                        View Details
                      </button>
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>

        {/* My Grades */}
        <div className="bg-white rounded-lg shadow">
          <div className="px-6 py-4 border-b border-gray-200">
            <h2 className="text-xl font-bold text-gray-900">My Exam Results</h2>
          </div>
          <div className="p-6">
            {grades.length === 0 ? (
              <p className="text-gray-500 text-center py-8">No grades available yet</p>
            ) : (
              <div className="overflow-x-auto">
                <table className="min-w-full divide-y divide-gray-200">
                  <thead>
                    <tr>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Course</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Date</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Type</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Score</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Percentage</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Result</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-200">
                    {grades.map((grade) => (
                      <tr key={grade.exam_id} className="hover:bg-gray-50">
                        <td className="px-4 py-3 text-sm font-medium text-gray-900">{grade.course_name}</td>
                        <td className="px-4 py-3 text-sm text-gray-600">{grade.exam_date || 'N/A'}</td>
                        <td className="px-4 py-3 text-sm">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            grade.exam_type === 'Normal' ? 'bg-blue-100 text-blue-800' : 'bg-orange-100 text-orange-800'
                          }`}>
                            {grade.exam_type}
                          </span>
                        </td>
                        <td className="px-4 py-3 text-sm text-gray-600">
                          {grade.student_score || 'N/A'} / {grade.max_score}
                        </td>
                        <td className="px-4 py-3 text-sm font-semibold text-gray-900">
                          {grade.percentage?.toFixed(1) || 'N/A'}%
                        </td>
                        <td className="px-4 py-3 text-sm">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            grade.passed ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'
                          }`}>
                            {grade.passed ? 'Passed' : 'Failed'}
                          </span>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            )}
          </div>
        </div>
      </div>
    </Layout>
  );
}
