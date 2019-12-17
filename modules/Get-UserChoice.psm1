
Function Get-UserChoice ($prompt, $options)
{
    Do
    {
        $userChoice = Read-Host -Prompt $prompt
        
        If ($options -NotContains $userChoice)
        {
            Write-Host 'You need to enter one of: $options'
        }
    } Until ($options -Contains $userChoice)
    
    Return $userChoice
}

Export-ModuleMember -Function 'Get-UserChoice'