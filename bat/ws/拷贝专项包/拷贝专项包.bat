@echo off
sqlplus lyerp/lyerp@luyan @copy.sql
md C:\Users\ye\Desktop\����ר���
call copy.bat
"D:\Program Files\WinRAR\rar.exe"  a -ep  "C:\Users\ye\Desktop\ÿ���崫��Ӣ��ר���\����ר���"%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2% "C:\Users\ye\Desktop\����ר���\"
rd /s/q   C:\Users\ye\Desktop\����ר���