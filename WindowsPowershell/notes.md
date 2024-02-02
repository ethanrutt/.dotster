Create a symbolic link for workspacer config

```powershell
# inside of ~ directory
PS> New-Item -type SymbolicLink -Path . -name ".workspacer" -Value "C:\Users\skate\.dotster\WindowsPowershell\.workspacer\"
```

