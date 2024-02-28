@echo off
rem 00_build_DownloadFile.bat
rem http://www.neko.ne.jp/~freewing/software/build_fritzing_100_windows/
rem Copyright (c) 2024 FREE WING,Y.Sakamoto
echo %0
@echo off

cd \
mkdir \TMP
cd /d \TMP

rem https://github.com/FREEWING-JP/CSharp_DownloadFile
rem echo C# DownloadFile from URL
rem bitsadmin /TRANSFER hoge https://github.com/FREEWING-JP/CSharp_DownloadFile/releases/download/v0.0/DownloadFile.exe %cd%\DownloadFile.exe

echo C# DownloadFile source code from URL
bitsadmin /TRANSFER hoge https://raw.githubusercontent.com/FREEWING-JP/CSharp_DownloadFile/main/DownloadFile.cs %cd%\DownloadFile.cs

echo Build DownloadFile.exe
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc DownloadFile.cs

