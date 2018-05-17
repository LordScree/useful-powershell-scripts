Write-Host "Killing VBCSCompiler..."

Get-Process | 
    Where-Object {$_.Path -like "*VBCSCompiler*"} | 
        Stop-Process
        
Write-Host "Dead."

Pause