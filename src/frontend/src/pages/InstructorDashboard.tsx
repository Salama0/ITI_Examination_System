import { useEffect, useState } from 'react';
import Layout from '../components/Layout';

interface InstructorCourse {
  course_id: number;
  course_name: string;
  total_students: number;
  total_exams: number;
}

interface InstructorExam {
  exam_id: number;
  course_name: string;
  exam_date: string | null;
  exam_type: string;
  submissions: number;
  avg_score: number | null;
}

export default function InstructorDashboard() {
  const [courses, setCourses] = useState<InstructorCourse[]>([]);
  const [exams, setExams] = useState<InstructorExam[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const user = JSON.parse(localStorage.getItem('user') || '{}');
  const userName = user.full_name || "Instructor";
  const instructorId = user.instructor_id;

  useEffect(() => {
    const fetchInstructorData = async () => {
      if (!instructorId) {
        setError('Instructor ID not found');
        setLoading(false);
        return;
      }

      try {
        // TODO: Implement backend endpoints for instructor-specific data
        // For now, using placeholder data
        const token = localStorage.getItem('token');

        // Fetch instructor's courses
        // const coursesResponse = await fetch(`http://localhost:8000/api/instructor/courses`, {
        //   headers: { 'Authorization': `Bearer ${token}` }
        // });

        // Fetch instructor's exams
        // const examsResponse = await fetch(`http://localhost:8000/api/instructor/exams`, {
        //   headers: { 'Authorization': `Bearer ${token}` }
        // });

        // Placeholder data for now
        setCourses([
          { course_id: 1, course_name: 'Database Fundamentals', total_students: 45, total_exams: 3 },
          { course_id: 2, course_name: 'Web Development', total_students: 38, total_exams: 2 },
        ]);

        setExams([
          { exam_id: 1, course_name: 'Database Fundamentals', exam_date: '2025-11-15', exam_type: 'Normal', submissions: 42, avg_score: 78.5 },
          { exam_id: 2, course_name: 'Web Development', exam_date: '2025-11-18', exam_type: 'Normal', submissions: 35, avg_score: 82.3 },
        ]);

        setLoading(false);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
        setLoading(false);
      }
    };

    fetchInstructorData();
  }, [instructorId]);

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

  return (
    <Layout>
      <div className="space-y-6">
        {/* Header */}
        <div>
          <h1 className="text-3xl font-bold text-iti-charcoal">Instructor Dashboard</h1>
          <p className="text-gray-500 mt-1">Welcome back, {userName}! Manage your courses and exams.</p>
        </div>

        {/* Quick Stats */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">My Courses</p>
            <p className="text-3xl font-bold text-gray-900 mt-2">{courses.length}</p>
            <p className="text-xs text-gray-500 mt-1">Active courses</p>
          </div>
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">Total Students</p>
            <p className="text-3xl font-bold text-gray-900 mt-2">
              {courses.reduce((sum, c) => sum + c.total_students, 0)}
            </p>
            <p className="text-xs text-gray-500 mt-1">Across all courses</p>
          </div>
          <div className="bg-white rounded-lg shadow p-6">
            <p className="text-sm font-medium text-gray-600">My Exams</p>
            <p className="text-3xl font-bold text-gray-900 mt-2">{exams.length}</p>
            <p className="text-xs text-gray-500 mt-1">Created by you</p>
          </div>
        </div>

        {/* My Courses */}
        <div className="bg-white rounded-lg shadow">
          <div className="px-6 py-4 border-b border-gray-200">
            <h2 className="text-xl font-bold text-gray-900">My Courses</h2>
          </div>
          <div className="p-6">
            {courses.length === 0 ? (
              <p className="text-gray-500 text-center py-8">No courses assigned yet</p>
            ) : (
              <div className="space-y-4">
                {courses.map((course) => (
                  <div key={course.course_id} className="border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow">
                    <div className="flex justify-between items-start">
                      <div>
                        <h3 className="font-semibold text-lg text-gray-900">{course.course_name}</h3>
                        <p className="text-sm text-gray-600 mt-1">
                          {course.total_students} students • {course.total_exams} exams
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

        {/* Recent Exams */}
        <div className="bg-white rounded-lg shadow">
          <div className="px-6 py-4 border-b border-gray-200">
            <h2 className="text-xl font-bold text-gray-900">My Recent Exams</h2>
          </div>
          <div className="p-6">
            {exams.length === 0 ? (
              <p className="text-gray-500 text-center py-8">No exams created yet</p>
            ) : (
              <div className="overflow-x-auto">
                <table className="min-w-full divide-y divide-gray-200">
                  <thead>
                    <tr>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Course</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Date</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Type</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Submissions</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Avg Score</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-200">
                    {exams.map((exam) => (
                      <tr key={exam.exam_id} className="hover:bg-gray-50">
                        <td className="px-4 py-3 text-sm font-medium text-gray-900">{exam.course_name}</td>
                        <td className="px-4 py-3 text-sm text-gray-600">{exam.exam_date || 'N/A'}</td>
                        <td className="px-4 py-3 text-sm">
                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                            exam.exam_type === 'Normal' ? 'bg-blue-100 text-blue-800' : 'bg-orange-100 text-orange-800'
                          }`}>
                            {exam.exam_type}
                          </span>
                        </td>
                        <td className="px-4 py-3 text-sm text-gray-600">{exam.submissions}</td>
                        <td className="px-4 py-3 text-sm font-semibold text-gray-900">
                          {exam.avg_score?.toFixed(1) || 'N/A'}%
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
