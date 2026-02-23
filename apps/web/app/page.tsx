// apps/web/app/page.tsx
import Link from 'next/link'

export default function HomePage() {
  return (
    <div className="min-h-screen bg-gradient-to-b from-blue-50 to-white">
      {/* Header */}
      <header className="container mx-auto px-4 py-6">
        <nav className="flex items-center justify-between">
          <div className="text-2xl font-bold text-blue-600">Veripraxis</div>
          <div className="space-x-4">
            <Link href="/login" className="text-gray-600 hover:text-gray-900">
              Login
            </Link>
            <Link 
              href="/register" 
              className="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700"
            >
              Sign Up
            </Link>
          </div>
        </nav>
      </header>

      {/* Hero Section */}
      <main className="container mx-auto px-4 py-20">
        <div className="text-center max-w-4xl mx-auto">
          <h1 className="text-5xl font-bold text-gray-900 mb-6">
            Ace Your Board Exams with Confidence
          </h1>
          <p className="text-xl text-gray-600 mb-8">
            Practice with realistic mock exams, track your progress, and prepare for success
            in your Licensure Examinations.
          </p>
          <div className="flex gap-4 justify-center">
            <Link 
              href="/register"
              className="bg-blue-600 text-white px-8 py-3 rounded-lg text-lg font-semibold hover:bg-blue-700"
            >
              Get Started Free
            </Link>
            <Link 
              href="/exams"
              className="bg-white text-blue-600 px-8 py-3 rounded-lg text-lg font-semibold border-2 border-blue-600 hover:bg-blue-50"
            >
              Browse Exams
            </Link>
          </div>
        </div>

        {/* Features */}
        <div className="grid md:grid-cols-3 gap-8 mt-20">
          <div className="bg-white p-6 rounded-xl shadow-sm">
            <div className="text-4xl mb-4">📝</div>
            <h3 className="text-xl font-semibold mb-2">Realistic Practice Exams</h3>
            <p className="text-gray-600">
              Take mock exams that simulate the actual board exam experience
            </p>
          </div>
          <div className="bg-white p-6 rounded-xl shadow-sm">
            <div className="text-4xl mb-4">📊</div>
            <h3 className="text-xl font-semibold mb-2">Detailed Analytics</h3>
            <p className="text-gray-600">
              Track your performance and identify areas for improvement
            </p>
          </div>
          <div className="bg-white p-6 rounded-xl shadow-sm">
            <div className="text-4xl mb-4">📚</div>
            <h3 className="text-xl font-semibold mb-2">Study Materials</h3>
            <p className="text-gray-600">
              Access comprehensive reviewers and study guides
            </p>
          </div>
        </div>

        {/* Programs */}
        <div className="mt-20">
          <h2 className="text-3xl font-bold text-center mb-10">Available Programs</h2>
          <div className="grid md:grid-cols-3 gap-6">
            <div className="bg-white p-6 rounded-lg border-2 border-gray-200">
              <h4 className="font-semibold text-lg mb-2">SBIT</h4>
              <p className="text-sm text-gray-600">Library & Information Science</p>
            </div>
            <div className="bg-white p-6 rounded-lg border-2 border-gray-200">
              <h4 className="font-semibold text-lg mb-2">SSLATE</h4>
              <p className="text-sm text-gray-600">Education, Psychology, Liberal Arts</p>
            </div>
            <div className="bg-white p-6 rounded-lg border-2 border-gray-200">
              <h4 className="font-semibold text-lg mb-2">SARFAID</h4>
              <p className="text-sm text-gray-600">Architecture & Interior Design</p>
            </div>
          </div>
        </div>
      </main>

      {/* Footer */}
      <footer className="bg-gray-50 mt-20 py-8">
        <div className="container mx-auto px-4 text-center text-gray-600">
          <p>&copy; 2026 Veripraxis. All rights reserved.</p>
        </div>
      </footer>
    </div>
  )
}
