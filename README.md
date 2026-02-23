# Veripraxis Mock Board Examination System

A comprehensive mock board examination platform built with Next.js, Python, and Supabase.

## 🎯 Features

### For Students
- Take practice exams
- View results and analytics
- Access study materials and reviewers
- Track progress over time

### For Administrators
- Create and manage exams
- Upload questions (Excel/PDF)
- Grade submissions (auto and manual)
- View analytics and reports
- Manage users and content

### For Reviewers
- Create study materials
- Review and validate questions
- Provide feedback on submissions

## 🏗️ Project Structure

```
veripraxis-mock-board/
├── apps/
│   └── web/                    # Next.js frontend + API
│       ├── app/                # App Router pages
│       ├── features/           # Feature modules
│       └── lib/                # Utilities and configs
│
├── services/
│   └── python-exam-engine/    # Python microservice
│       └── app/                # Flask application
│
├── supabase/                  # Database and auth
│   └── migrations/
│
└── infrastructure/            # Deployment configs
```

## 🚀 Getting Started

### Prerequisites
- Node.js 18+ and pnpm
- Python 3.11+
- Supabase account

### Setup Steps

1. **Clone and install dependencies**
   ```bash
   cd veripraxis-mock-exam
   pnpm install
   ```

2. **Set up Python service**
   ```bash
   cd services/python-exam-engine
   python -m venv venv
   .\venv\Scripts\activate  # Windows
   pip install -r requirements.txt
   ```

3. **Configure environment variables**
   - Copy `infrastructure/env.example` to `.env.local`
   - Add your Supabase credentials

4. **Run the development servers**

   Frontend (Next.js):
   ```bash
   cd apps/web
   pnpm dev
   ```

   Backend (Python):
   ```bash
   cd services/python-exam-engine
   python app/main.py
   ```

5. **Access the application**
   - Frontend: http://localhost:3000
   - Python API: http://localhost:10000

## 📚 Tech Stack

- **Frontend**: Next.js 15, React, TypeScript, Tailwind CSS
- **Backend**: Python Flask, FastAPI
- **Database**: Supabase (PostgreSQL)
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage
- **Deployment**: Vercel (frontend), Railway/Render (backend)

## 🗂️ Database Schema

### Main Tables
- `users` - User accounts (students, admins, reviewers)
- `exams` - Exam configurations
- `questions` - Question bank
- `submissions` - Student answers
- `results` - Graded results
- `reviewers` - Study materials
- `analytics` - Performance metrics

## 🔐 Authentication & Authorization

- Students: Can take exams, view own results
- Reviewers: Can create study materials, review submissions
- Admins: Full access to all features

## 📊 Key Workflows

1. **Exam Creation**: Admin uploads questions → Python parses → Stored in DB
2. **Taking Exam**: Student accesses exam → Submits answers → Stored in DB
3. **Grading**: Python auto-grades → Manual review if needed → Results generated
4. **Analytics**: Results aggregated → Charts and insights displayed

## 🛠️ Development

### Adding a new feature
1. Create feature folder in `apps/web/features/[feature-name]`
2. Add API routes in `apps/web/app/api/[feature-name]`
3. Create Python routes if needed in `services/python-exam-engine/app/routes`

### Database migrations
```bash
cd supabase
# Create migration
supabase migration new [migration-name]
# Run migrations
supabase db push
```

## 📝 License

MIT License - See LICENSE file for details

## 🤝 Contributing

Contributions welcome! Please read CONTRIBUTING.md first.

## 📧 Contact

For questions or support, contact: [your-email@example.com]
