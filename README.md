# .dotster dot files
---
### my config files for
* bash (WSL)
* powershell
* neovim
* tmux
---
### a setup script for the tools I use
* on both
    * fzf
    * oh-my-posh
    * git
* on WSL
    * nvim
    * npm (for nvim lsp's)
    * tmux
* on windows
    * vim
    * choco
---
### Powershell
* linking a powershell config requires a little bit of extra work
* check the default places that powershell looks for a profile with
```powershell
PS> $profile | select *
```
* to change where powershell looks for a profile, you have to use regedit to change a certain key
* the key is "Personal" under "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
* Powershell looks for the directory under the key `Personal + \WindowsPowershell\*` so by setting that value to `~\.dotster` you are setting it up correctly
---
# TODO
* make setup scripts
