

Function Start-SqlPlusJob ($sqlPlusLogin, $sqlPlusCommand)
{
    Write-Host "Starting SQLPlus Job: "
    Write-Host "Command: $sqlPlusCommand"
    
    &sqlplus $sqlPlusLogin AS SYSDBA $sqlPlusCommand    
}

Export-ModuleMember -Function 'Start-SqlPlusJob'
