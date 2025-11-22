import { useEffect, useState } from 'react';
import Layout from '../components/Layout';

interface StudentGrade {
  student_name: string;
  crs_name: string;
  exam_type: string;
  exam_date: string | null;
  grade: string | null;  // Changed from number to string - backend returns letter grades (A, B, C, etc.)
  status: string;
  intake_year: number;
  track_name: string | null;
  bran_name: string | null;
}

interface UpcomingExam {
  ex_id: number;
  crs_name: string;
  crs_description: string | null;
  exam_date: string | null;
  start_time: string | null;
  end_time: string | null;
  exam_type: string;
  instructor_name: string;
  days_until_exam: number | null;
  hours_until_start: number | null;
  submission_status: string;
  my_score: number | null;
  my_grade: string | null;  // Changed from number to string - backend returns letter grades
  result: string | null;
  availability_status: string;
  can_take_exam: number;
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
        const token = localStorage.getItem('token');

        // Fetch student's grades
        const gradesResponse = await fetch(`http://localhost:8000/api/student/grades`, {
          headers: { 'Authorization': `Bearer ${token}` }
        });

        if (!gradesResponse.ok) {
          throw new Error('Failed to fetch grades');
        }

        const gradesData = await gradesResponse.json();
        setGrades(gradesData);

        // Fetch upcoming exams
        const examsResponse = await fetch(`http://localhost:8000/api/student/upcoming-exams`, {
          headers: { 'Authorization': `Bearer ${token}` }
        });

        if (!examsResponse.ok) {
          throw new Error('Failed to fetch upcoming exams');
        }

        const examsData = await examsResponse.json();
        setUpcomingExams(examsData);

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

  // Note: Backend returns status as 'Pass' or 'Fail' (not 'Passed' or 'Failed')
  const passedExams = grades.filter(g => g.status === 'Pass').length;
  const failedExams = grades.filter(g => g.status === 'Fail').length;

  // Since grades are letter grades (A, B, C, etc.), we need to fetch the numeric scores
  // from upcoming exams which have my_score field
  const completedExams = upcomingExams.filter(e => e.my_score !== null);
  const averageScore = completedExams.length > 0
    ? completedExams.reduce((sum, e) => sum + (e.my_score || 0), 0) / completedExams.length
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
                  <div key={exam.ex_id} className="border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow">
                    <div className="flex justify-between items-start">
                      <div className="flex-1">
                        <div className="flex items-start justify-between">
                          <div>
                            <h3 className="font-semibold text-lg text-gray-900">{exam.crs_name}</h3>
                            <p className="text-sm text-gray-600 mt-1">
                              {exam.exam_date || 'Date TBD'} • {exam.start_time || 'TBD'} - {exam.end_time || 'TBD'}
                            </p>
                            <p className="text-sm text-gray-600">
                              Instructor: {exam.instructor_name} • Type: {exam.exam_type}
                            </p>
                          </div>
                          <div className="ml-4">
                            {exam.days_until_exam !== null && exam.days_until_exam >= 0 && (
                              <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                                exam.days_until_exam === 0 ? 'bg-red-100 text-red-800' :
                                exam.days_until_exam <= 3 ? 'bg-orange-100 text-orange-800' :
                                'bg-blue-100 text-blue-800'
                              }`}>
                                {exam.days_until_exam === 0 ? 'Today' : `${exam.days_until_exam} days`}
                              </span>
                            )}
                          </div>
                        </div>
                        <div className="mt-2 flex items-center gap-2">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            exam.submission_status === 'Submitted' ? 'bg-green-100 text-green-800' :
                            exam.submission_status === 'Not Submitted' ? 'bg-gray-100 text-gray-800' :
                            'bg-yellow-100 text-yellow-800'
                          }`}>
                            {exam.submission_status}
                          </span>
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            exam.availability_status === 'Available' ? 'bg-green-100 text-green-800' :
                            exam.availability_status === 'Upcoming' ? 'bg-blue-100 text-blue-800' :
                            'bg-gray-100 text-gray-800'
                          }`}>
                            {exam.availability_status}
                          </span>
                          {exam.result && (
                            <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                              exam.result === 'Pass' ? 'bg-green-100 text-green-800' :
                              exam.result === 'Fail' ? 'bg-red-100 text-red-800' :
                              'bg-yellow-100 text-yellow-800'
                            }`}>
                              {exam.result} ({exam.my_grade || 'N/A'})
                            </span>
                          )}
                        </div>
                      </div>
                      <button
                        className={`ml-4 px-4 py-2 rounded-lg transition-colors ${
                          exam.can_take_exam === 1 ?
                          'bg-iti-red text-white hover:bg-iti-maroon' :
                          'bg-gray-300 text-gray-600 cursor-not-allowed'
                        }`}
                        disabled={exam.can_take_exam !== 1}
                      >
                        {exam.submission_status === 'Submitted' ? 'View Result' : 'Take Exam'}
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
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Track/Branch</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Date</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Type</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Grade</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-200">
                    {grades.map((grade, index) => (
                      <tr key={`${grade.crs_name}-${grade.exam_date}-${index}`} className="hover:bg-gray-50">
                        <td className="px-4 py-3 text-sm font-medium text-gray-900">{grade.crs_name}</td>
                        <td className="px-4 py-3 text-sm text-gray-600">{grade.track_name || 'N/A'} - {grade.bran_name || 'N/A'}</td>
                        <td className="px-4 py-3 text-sm text-gray-600">{grade.exam_date || 'N/A'}</td>
                        <td className="px-4 py-3 text-sm">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            grade.exam_type === 'Normal' ? 'bg-blue-100 text-blue-800' : 'bg-orange-100 text-orange-800'
                          }`}>
                            {grade.exam_type}
                          </span>
                        </td>
                        <td className="px-4 py-3 text-sm font-semibold text-gray-900">
                          {grade.grade !== null ? grade.grade : 'N/A'}
                        </td>
                        <td className="px-4 py-3 text-sm">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            grade.status === 'Pass' ? 'bg-green-100 text-green-800' :
                            grade.status === 'Fail' ? 'bg-red-100 text-red-800' :
                            'bg-yellow-100 text-yellow-800'
                          }`}>
                            {grade.status}
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
