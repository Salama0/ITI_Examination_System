/**
 * API Service
 * Axios configuration for backend communication
 */

import axios from 'axios';

// Create axios instance with default config
const api = axios.create({
  baseURL: '/api',
  headers: {
    'Content-Type': 'application/json',
  },
});

// Request interceptor - add auth token
api.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token');
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error) => Promise.reject(error)
);

// Response interceptor - handle errors
api.interceptors.response.use(
  (response) => response,
  (error) => {
    if (error.response?.status === 401) {
      // Handle unauthorized - redirect to login
      localStorage.removeItem('token');
      window.location.href = '/login';
    }
    return Promise.reject(error);
  }
);

export default api;

// ============================================================================
// API Functions (examples - to be expanded)
// ============================================================================

// Health check
export const checkHealth = () => api.get('/health');

// Test database connection
export const testDatabase = () => api.get('/test-db');

// Students
export const getStudents = () => api.get('/students');
export const getStudent = (id: number) => api.get(`/students/${id}`);

// Courses
export const getCourses = () => api.get('/courses');

// Exams
export const getExams = () => api.get('/exams');
export const getExam = (id: number) => api.get(`/exams/${id}`);

// Grades
export const getStudentGrades = (studentId: number) =>
  api.get(`/students/${studentId}/grades`);
