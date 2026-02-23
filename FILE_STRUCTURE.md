# Veripraxis Mock Exam System - Complete File Structure

## 📁 Essential Files & Folders Checklist

### ✅ ROOT LEVEL
```
veripraxis-mock-exam/
├── .gitignore                    # Version control ignore rules
├── .env.local                    # Environment variables (DO NOT COMMIT)
├── README.md                     # Project documentation
├── package.json                  # Root package.json (workspace)
├── pnpm-workspace.yaml           # Monorepo configuration
└── tsconfig.json                 # TypeScript configuration
```

### ✅ APPS/WEB (Next.js Frontend)
```
apps/web/
├── app/                          # Next.js App Router
│   ├── layout.tsx                # Root layout (✅ CRITICAL)
│   ├── page.tsx                  # Landing page (✅ CRITICAL)
│   ├── globals.css               # Global styles (✅ CRITICAL)
│   │
│   ├── (auth)/                   # Auth routes (grouped)
│   │   ├── login/
│   │   │   └── page.tsx          # Login page
│   │   ├── register/
│   │   │   └── page.tsx          # Registration page
│   │   └── forgot-password/
│   │       └── page.tsx          # Password reset
│   │
│   ├── (dashboard)/              # Dashboard routes (grouped)
│   │   ├── student/
│   │   │   └── page.tsx          # Student dashboard
│   │   ├── admin/
│   │   │   └── page.tsx          # Admin dashboard
│   │   └── reviewer/
│   │       └── page.tsx          # Reviewer dashboard
│   │
│   ├── exams/                    # Exam pages
│   │   ├── page.tsx              # Exam list
│   │   └── [id]/
│   │       ├── page.tsx          # Exam details
│   │       └── take/
│   │           └── page.tsx      # Take exam
│   │
│   ├── results/                  # Results pages
│   │   ├── page.tsx              # Results list
│   │   └── [id]/
│   │       └── page.tsx          # Individual result
│   │
│   ├── reviewers/                # Study materials
│   │   ├── page.tsx              # Reviewers list
│   │   └── [id]/
│   │       └── page.tsx          # Reviewer content
│   │
│   ├── analytics/
│   │   └── page.tsx              # Analytics dashboard
│   │
│   ├── profile/
│   │   └── page.tsx              # User profile
│   │
│   └── api/                      # API routes
│       ├── exams/
│       │   ├── route.ts          # GET /api/exams
│       │   └── [id]/
│       │       └── route.ts      # GET /api/exams/:id
│       ├── submissions/
│       │   └── route.ts          # POST /api/submissions
│       ├── analytics/
│       │   └── route.ts          # GET /api/analytics
│       ├── users/
│       │   └── route.ts          # User management
│       └── upload/
│           └── route.ts          # File uploads
│
├── components/                   # Reusable components
│   ├── ui/                       # UI primitives
│   │   ├── button.tsx
│   │   ├── card.tsx
│   │   ├── input.tsx
│   │   ├── modal.tsx
│   │   └── toast.tsx
│   ├── layout/                   # Layout components
│   │   ├── header.tsx
│   │   ├── sidebar.tsx
│   │   ├── footer.tsx
│   │   └── nav.tsx
│   ├── forms/                    # Form components
│   │   ├── login-form.tsx
│   │   ├── register-form.tsx
│   │   └── exam-form.tsx
│   ├── exam/                     # Exam-specific
│   │   ├── question-card.tsx
│   │   ├── timer.tsx
│   │   ├── progress-bar.tsx
│   │   └── answer-sheet.tsx
│   └── analytics/
│       ├── score-chart.tsx
│       ├── performance-graph.tsx
│       └── stats-card.tsx
│
├── features/                     # Feature modules
│   ├── auth/
│   │   ├── components/
│   │   ├── hooks/
│   │   │   ├── useAuth.ts
│   │   │   └── useUser.ts
│   │   └── utils/
│   │       └── auth-helpers.ts
│   ├── exams/
│   │   ├── components/
│   │   ├── hooks/
│   │   │   ├── useExam.ts
│   │   │   └── useSubmission.ts
│   │   └── types/
│   │       └── exam.types.ts
│   ├── results/
│   │   ├── components/
│   │   └── hooks/
│   ├── analytics/
│   │   ├── components/
│   │   └── charts/
│   ├── admin/
│   │   ├── components/
│   │   └── forms/
│   ├── reviewers/
│   │   ├── components/
│   │   └── editor/
│   └── students/
│       └── components/
│
├── lib/                          # Shared utilities
│   ├── supabase/                 # Supabase client (✅ CRITICAL)
│   │   ├── client.ts             # Browser client
│   │   ├── server.ts             # Server client
│   │   ├── middleware.ts         # Auth middleware
│   │   └── queries/              # Database queries
│   │       ├── exams.ts
│   │       ├── users.ts
│   │       ├── submissions.ts
│   │       ├── analytics.ts
│   │       └── schools-programs.ts
│   ├── utils/                    # Utility functions
│   │   ├── format.ts
│   │   ├── date.ts
│   │   └── validators.ts
│   ├── validations/              # Zod schemas
│   │   ├── auth.ts
│   │   ├── exam.ts
│   │   └── user.ts
│   ├── types/                    # TypeScript types
│   │   ├── database.types.ts
│   │   ├── schools-programs.ts
│   │   └── index.ts
│   ├── hooks/                    # Custom React hooks
│   │   ├── useToast.ts
│   │   └── useLocalStorage.ts
│   └── constants/                # Constants
│       └── index.ts
│
├── public/                       # Static assets
│   ├── images/
│   │   ├── logo.png
│   │   ├── hero/
│   │   └── placeholders/
│   ├── icons/
│   │   └── favicon.ico
│   └── fonts/
│
├── styles/                       # Additional styles
│   ├── variables.css
│   └── animations.css
│
├── middleware.ts                 # Next.js middleware (✅ CRITICAL)
├── .env.local                    # Environment variables (✅ CRITICAL)
├── .env.local.example            # Env template
├── next.config.js                # Next.js config (✅ CRITICAL)
├── tailwind.config.js            # Tailwind config (✅ CRITICAL)
├── postcss.config.js             # PostCSS config
├── tsconfig.json                 # TypeScript config
└── package.json                  # Dependencies (✅ CRITICAL)
```

### ✅ SERVICES/PYTHON-EXAM-ENGINE (Python Backend)
```
services/python-exam-engine/
├── app/
│   ├── main.py                   # Flask app entry (✅ CRITICAL)
│   ├── __init__.py
│   │
│   ├── routes/                   # API endpoints
│   │   ├── __init__.py
│   │   ├── upload.py             # File upload routes
│   │   ├── grading.py            # Grading routes
│   │   └── parsing.py            # Excel/PDF parsing
│   │
│   ├── core/                     # Core functionality
│   │   ├── __init__.py
│   │   ├── config.py             # Configuration
│   │   └── security.py           # Security utilities
│   │
│   ├── utils/                    # Utility functions
│   │   ├── __init__.py
│   │   ├── file_parser.py        # File parsing
│   │   ├── excel_handler.py      # Excel operations
│   │   └── pdf_processor.py      # PDF operations
│   │
│   ├── models/                   # Data models
│   │   └── __init__.py
│   │
│   └── middleware/               # Middleware
│       ├── __init__.py
│       └── auth.py
│
├── tests/                        # Unit tests
│   ├── __init__.py
│   └── test_routes.py
│
├── tmp/                          # Temporary files
│
├── requirements.txt              # Python dependencies (✅ CRITICAL)
├── .env                          # Environment variables (✅ CRITICAL)
├── .env.example                  # Env template
├── Dockerfile                    # Docker configuration
└── .gitignore
```

### ✅ SUPABASE
```
supabase/
├── migrations/                   # Database migrations (✅ CRITICAL)
│   ├── 20240101_initial_schema.sql
│   ├── 20240102_rls_policies.sql
│   ├── 20240103_schools_programs.sql
│   └── 20240104_seed_data.sql
│
├── functions/                    # Edge functions (optional)
│   ├── grade-exam/
│   └── generate-report/
│
├── types.ts                      # Generated TypeScript types
├── seed.sql                      # Seed data
├── config.toml                   # Supabase config
└── SETUP.md                      # Setup instructions
```

### ✅ INFRASTRUCTURE
```
infrastructure/
├── vercel.json                   # Vercel deployment config
├── env.example                   # Environment template
└── docker-compose.yml            # Docker compose (optional)
```

### ✅ GITHUB / CI/CD
```
.github/
└── workflows/
    ├── ci.yml                    # Continuous integration
    ├── deploy-frontend.yml       # Frontend deployment
    └── deploy-backend.yml        # Backend deployment
```

### ✅ DOCUMENTATION
```
docs/
├── api/                          # API documentation
│   └── endpoints.md
├── guides/                       # User guides
│   ├── setup.md
│   ├── deployment.md
│   └── development.md
└── README.md
```

## 🎯 Priority Files (Must Create First)

### High Priority (Setup Phase)
1. ✅ `apps/web/.env.local` - Environment variables
2. ✅ `apps/web/app/layout.tsx` - Root layout
3. ✅ `apps/web/app/page.tsx` - Landing page
4. ✅ `apps/web/app/globals.css` - Global styles
5. ✅ `apps/web/lib/supabase/client.ts` - Supabase client
6. ✅ `apps/web/lib/supabase/server.ts` - Supabase server
7. ✅ `apps/web/middleware.ts` - Auth middleware
8. ✅ `services/python-exam-engine/app/main.py` - Python app
9. ✅ `services/python-exam-engine/requirements.txt` - Python deps
10. ✅ `supabase/migrations/*.sql` - Database schema

### Medium Priority (Development Phase)
11. Authentication pages (login, register)
12. Dashboard pages (student, admin)
13. Exam components and pages
14. API routes
15. Database query functions

### Low Priority (Enhancement Phase)
16. Analytics components
17. Admin management tools
18. Mobile app setup
19. Additional features

## 📝 Notes
- Files marked with (✅ CRITICAL) are essential for the app to run
- Folders with `__init__.py` are Python packages
- Folders with `page.tsx` are Next.js routes
- All `.env` files should NEVER be committed to git
