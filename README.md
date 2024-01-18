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
        * make sure to set the themes directory in .bashrc/powershellprofile.ps1
    * git
* on WSL
    * nvim
    * npm (for nvim lsp's)
    * tmux
* on windows
    * vim
    * choco
    * nvim
    * vscodium
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
### VSCodium
* I am also using VSCode Neovim extension by asvetliakov for windows development
* This is in case I need some extension that VSCode has, but can still get a fully integrated neovim window inside of VSCode
* Using VSCodium bc it's a clean slate, and fully integrates with VSCode LSP's while still getting non-laggy vim keybindings
* steps
    * install vscodium and nvim with choco
    * point to executable (was weird error with escape characters since windows filepaths contain `\`, make sure this is good in settings.json)
    * point to init.lua (should be in Appdata/local/nvim)
* note: have to go into keybindings.json and change `<C-q>` to send `<C-v>` to nvim so that I can enter visual block mode with `<C-v>`
---
# TODO
* make setup scripts
