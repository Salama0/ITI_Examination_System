import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import Login from './pages/Login';
import Dashboard from './pages/Dashboard';
import ManagerDashboard from './pages/ManagerDashboard';
import InstructorDashboard from './pages/InstructorDashboard';
import StudentDashboard from './pages/StudentDashboard';

// Create a client for React Query
const queryClient = new QueryClient();

// Placeholder pages
const ComingSoon = ({ title }: { title: string }) => (
  <div className="min-h-screen bg-iti-light flex items-center justify-center">
    <div className="text-center">
      <h1 className="text-3xl font-bold text-iti-charcoal mb-2">{title}</h1>
      <p className="text-gray-500">Coming soon...</p>
    </div>
  </div>
);

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Router>
        <Routes>
          {/* Public routes */}
          <Route path="/login" element={<Login />} />

          {/* Protected routes - Role-based dashboards */}
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/dashboard/manager" element={<ManagerDashboard />} />
          <Route path="/dashboard/instructor" element={<InstructorDashboard />} />
          <Route path="/dashboard/student" element={<StudentDashboard />} />

          {/* Other routes */}
          <Route path="/exams" element={<ComingSoon title="Exams" />} />
          <Route path="/courses" element={<ComingSoon title="Courses" />} />
          <Route path="/students" element={<ComingSoon title="Students" />} />
          <Route path="/grades" element={<ComingSoon title="Grades" />} />

          {/* Redirects */}
          <Route path="/" element={<Navigate to="/login" replace />} />
          <Route path="*" element={<Navigate to="/login" replace />} />
        </Routes>
      </Router>
    </QueryClientProvider>
  );
}

export default App;
