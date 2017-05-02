@echo off
sqlplus lyerp/lyerp@luyan @copy.sql
md C:\Users\ye\Desktop\鹭燕专项包
call copy.bat
"D:\Program Files\WinRAR\rar.exe"  a -ep  "C:\Users\ye\Desktop\每周五传给英克专项包\鹭燕专项包"%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2% "C:\Users\ye\Desktop\鹭燕专项包\"
rd /s/q   C:\Users\ye\Desktop\鹭燕专项包