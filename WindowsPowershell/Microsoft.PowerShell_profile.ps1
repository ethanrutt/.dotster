$env:FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression

# dir traversal aliases
Function CDHome { cd ~ }
Set-Alias -Name home -Value CDHome

Function CDUp { cd .. }
Set-Alias -Name .. -Value CDUp

Function CD2Up { cd .\..\.. }
Set-Alias -Name ... -Value CD2Up

Function CD3Up { cd .\..\..\..\ }
Set-Alias -Name .... -Value CD3Up

# cd into directories with fuzzy finding
Function SearchFiles {
    Get-ChildItem . -Recurse -Attributes Directory | Invoke-Fzf | Set-Location
}
Set-Alias -Name sf -Value SearchFiles

# replace 'Ctrl+t' and 'Ctrl+r' with fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Function Quit { exit }
Set-Alias -Name q -Value Quit


# git aliases
Function GitStatus { git status }
Set-Alias -Name gs -Value GitStatus

Function GitAdd { git add -u }
Set-Alias -Name gau -Value GitAdd 

Function GitLog { git log }
Set-Alias -Name glg -Value GitLog

Function GitPush { git push }
Set-Alias -Name gpsh -Value GitPush

Function GitPull { git pull }
Set-Alias -Name gpll -Value GitPull

Function GitCommit {
    param(
        [string]$Message
    )

    if (-not $Message) {
        Write-Host "Usage: GitCommit 'commit message'"
        return
    }

    git commit -m $Message
}
Set-Alias -Name gcmt -Value GitCommit
