@echo off
echo ========================================
echo Creating Complete Veripraxis Project Structure
echo ========================================
echo.

cd /d C:\Users\marti\veripraxis-mock-exam

REM ==============================================
REM APPS/WEB - Next.js Frontend
REM ==============================================

echo [1/10] Creating app directory structure...
mkdir apps\web\app\(auth)\login 2>nul
mkdir apps\web\app\(auth)\register 2>nul
mkdir apps\web\app\(auth)\forgot-password 2>nul
mkdir apps\web\app\(dashboard) 2>nul
mkdir apps\web\app\(dashboard)\student 2>nul
mkdir apps\web\app\(dashboard)\admin 2>nul
mkdir apps\web\app\(dashboard)\reviewer 2>nul
mkdir apps\web\app\exams 2>nul
mkdir apps\web\app\exams\[id] 2>nul
mkdir apps\web\app\exams\[id]\take 2>nul
mkdir apps\web\app\results 2>nul
mkdir apps\web\app\results\[id] 2>nul
mkdir apps\web\app\reviewers 2>nul
mkdir apps\web\app\reviewers\[id] 2>nul
mkdir apps\web\app\analytics 2>nul
mkdir apps\web\app\profile 2>nul

echo [2/10] Creating components...
mkdir apps\web\components\ui 2>nul
mkdir apps\web\components\layout 2>nul
mkdir apps\web\components\forms 2>nul
mkdir apps\web\components\exam 2>nul
mkdir apps\web\components\analytics 2>nul

echo [3/10] Creating features...
mkdir apps\web\features\auth\components 2>nul
mkdir apps\web\features\auth\hooks 2>nul
mkdir apps\web\features\auth\utils 2>nul
mkdir apps\web\features\exams\components 2>nul
mkdir apps\web\features\exams\hooks 2>nul
mkdir apps\web\features\exams\types 2>nul
mkdir apps\web\features\results\components 2>nul
mkdir apps\web\features\results\hooks 2>nul
mkdir apps\web\features\analytics\components 2>nul
mkdir apps\web\features\analytics\charts 2>nul
mkdir apps\web\features\admin\components 2>nul
mkdir apps\web\features\admin\forms 2>nul
mkdir apps\web\features\reviewers\components 2>nul
mkdir apps\web\features\reviewers\editor 2>nul
mkdir apps\web\features\students\components 2>nul

echo [4/10] Creating lib structure...
mkdir apps\web\lib\supabase 2>nul
mkdir apps\web\lib\supabase\queries 2>nul
mkdir apps\web\lib\utils 2>nul
mkdir apps\web\lib\validations 2>nul
mkdir apps\web\lib\types 2>nul
mkdir apps\web\lib\hooks 2>nul
mkdir apps\web\lib\constants 2>nul

echo [5/10] Creating API routes...
mkdir apps\web\app\api\exams 2>nul
mkdir apps\web\app\api\exams\[id] 2>nul
mkdir apps\web\app\api\submissions 2>nul
mkdir apps\web\app\api\submissions\[id] 2>nul
mkdir apps\web\app\api\analytics 2>nul
mkdir apps\web\app\api\users 2>nul
mkdir apps\web\app\api\reviewers 2>nul
mkdir apps\web\app\api\upload 2>nul
mkdir apps\web\app\api\webhooks 2>nul

echo [6/10] Creating styles and assets...
mkdir apps\web\styles 2>nul
mkdir apps\web\public\images 2>nul
mkdir apps\web\public\images\hero 2>nul
mkdir apps\web\public\images\placeholders 2>nul
mkdir apps\web\public\icons 2>nul
mkdir apps\web\public\fonts 2>nul

REM ==============================================
REM SERVICES - Python Backend
REM ==============================================

echo [7/10] Creating Python service structure...
mkdir services\python-exam-engine\app\routes 2>nul
mkdir services\python-exam-engine\app\core 2>nul
mkdir services\python-exam-engine\app\utils 2>nul
mkdir services\python-exam-engine\app\models 2>nul
mkdir services\python-exam-engine\app\middleware 2>nul
mkdir services\python-exam-engine\tests 2>nul
mkdir services\python-exam-engine\tmp 2>nul

REM ==============================================
REM SUPABASE
REM ==============================================

echo [8/10] Creating Supabase structure...
mkdir supabase\migrations 2>nul
mkdir supabase\functions 2>nul
mkdir supabase\functions\grade-exam 2>nul
mkdir supabase\functions\generate-report 2>nul

REM ==============================================
REM INFRASTRUCTURE & CONFIG
REM ==============================================

echo [9/10] Creating infrastructure...
mkdir infrastructure 2>nul
mkdir .github\workflows 2>nul
mkdir docs 2>nul
mkdir docs\api 2>nul
mkdir docs\guides 2>nul

REM ==============================================
REM MOBILE (Future)
REM ==============================================

echo [10/10] Creating mobile placeholder...
mkdir apps\mobile 2>nul
echo # Mobile App (Future Development) > apps\mobile\README.md

echo.
echo ========================================
echo Folder structure created!
echo Now creating essential files...
echo ========================================
echo.

REM Create essential configuration files
echo Created by setup script > apps\web\.env.local.example
echo Created by setup script > services\python-exam-engine\.env.example
echo Created by setup script > .gitignore

echo.
echo ========================================
echo Setup complete!
echo ========================================
pause
