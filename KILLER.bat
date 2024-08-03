@echo off
set APP=KILLER
set AUTHOR=POMBO
set AVATAR=\Õ/
set MADE_BY=MADE BY:
set SPACE= 
set KEY=EWEP
echo %APP%%SPACE%%MADE_BY%%SPACE%%AUTHOR%%SPACE%%AVATAR%%SPACE%%KEY%

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Selecione um programa para ser encerrado!', 'KILLER', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information);}"

powershell -Command "Get-Process | Where-Object { $_.MainWindowTitle } | Select-Object Id, ProcessName, MainWindowTitle | Out-GridView -PassThru -Title 'KILLER - Selecione o programa para encerrar:' | ForEach-Object { & taskkill /f /t /pid $_.Id }"

exit
