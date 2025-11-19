import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import './App.css';

// Create a client for React Query
const queryClient = new QueryClient();

// Placeholder pages (to be implemented)
const Home = () => (
  <div className="min-h-screen bg-gray-100 p-8">
    <div className="max-w-4xl mx-auto">
      <h1 className="text-4xl font-bold text-gray-800 mb-4">
        ITI Examination System
      </h1>
      <p className="text-gray-600 mb-8">
        Welcome to the ITI Examination System. Manage exams, students, courses, and grades.
      </p>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        <DashboardCard title="Students" count="--" link="/students" />
        <DashboardCard title="Courses" count="--" link="/courses" />
        <DashboardCard title="Exams" count="--" link="/exams" />
      </div>
    </div>
  </div>
);

const DashboardCard = ({ title, count, link }: { title: string; count: string; link: string }) => (
  <a href={link} className="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
    <h3 className="text-lg font-semibold text-gray-800">{title}</h3>
    <p className="text-3xl font-bold text-blue-600 mt-2">{count}</p>
  </a>
);

const NotFound = () => (
  <div className="min-h-screen flex items-center justify-center bg-gray-100">
    <div className="text-center">
      <h1 className="text-6xl font-bold text-gray-800">404</h1>
      <p className="text-gray-600 mt-2">Page not found</p>
      <a href="/" className="text-blue-600 hover:underline mt-4 inline-block">
        Go Home
      </a>
    </div>
  </div>
);

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          {/* Add more routes as you build pages */}
          {/* <Route path="/login" element={<Login />} /> */}
          {/* <Route path="/students" element={<Students />} /> */}
          {/* <Route path="/courses" element={<Courses />} /> */}
          {/* <Route path="/exams" element={<Exams />} /> */}
          <Route path="*" element={<NotFound />} />
        </Routes>
      </Router>
    </QueryClientProvider>
  );
}

export default App;
