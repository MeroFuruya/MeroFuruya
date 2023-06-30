# github autocomplete
Invoke-Expression -Command $(gh completion -s powershell | Out-String)

# boss autocomplete
Invoke-Expression -Command $(boss completion powershell | Out-String)


# Git autocomplete
$GitPromptSettings = $false
Import-Module posh-git

# npm autocomplete
Import-Module npm-completion

# Autompletion
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# oh-my-posh
Invoke-Expression -Command $(oh-my-posh completion powershell | Out-String)
oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/multiverse-neon.omp.json | Invoke-Expression