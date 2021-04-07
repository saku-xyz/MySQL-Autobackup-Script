@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%b-%%a-%%c)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a-%%b)
mysqldump -uUSERNAME -pPASSWORD DATABASE_NAME > "BACKUP LOCATION%mydate%_%mytime%.sql"
