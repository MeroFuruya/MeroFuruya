Clear-Host
Write-Host "Heya, hope ur good today."

# this is to remove the load time message whenever the profile is loaded
function Prompt {
    if ( Test-Path Variable:Global:RedactPreviousLine ) { 
        $cursor = New-Object System.Management.Automation.Host.Coordinates
        $cursor.X = $host.ui.rawui.CursorPosition.X
        $cursor.Y = $host.ui.rawui.CursorPosition.Y - 1
        $host.ui.rawui.CursorPosition = $cursor
        Write-host $( " " * ( $host.ui.RawUI.WindowSize.Width - 1 ) )
        $host.ui.rawui.CursorPosition = $cursor

        Remove-Variable RedactPreviousLine -scope global
        } # end if 
    "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) ";
    # .Link
    # https://go.microsoft.com/fwlink/?LinkID=225750
    # .ExternalHelp System.Management.Automation.dll-help.xml
    } # end function prompt



# Git autocomplete
if (!(Get-Module -ListAvailable -Name posh-git)) {
    PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
}
Import-Module posh-git

# gh autocomplete
try {
    Invoke-Expression -Command $(gh completion -s powershell | Out-String)
    
} catch [System.Management.Automation.CommandNotFoundException] {
    Write-Warning "Looks like you dont have Github-cli installed. Go over to 'https://github.com/cli/cli/releases/latest' and get it :)"
}

# npm autocomplete
if (!(Get-Module -ListAvailable -Name npm-completion)) {
    Install-Module npm-completion -Scope CurrentUser
}
Import-Module npm-completion

# Autompletion
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# this removes the load time message whenever the profile is laoded
$global:RedactPreviousLine = $True