# Configuration file installation script.

# Variables ====================================================================

$DOTS_ROOT_DIR = $PSScriptRoot
$DOTS_CONF_DIR = Join-Path -Path $PSScriptRoot -ChildPath "config" 

# Functions ====================================================================

Function Install-Config($src, $trg)
{
    if ($src | Test-Path) {
        Write-Host "$conf already exists; creating back-up."
        Move-Item $src "$($(src).bak)"
    }

    New-Item `
        -ItemType SymbolicLink `
        -Path $src `
        -Target $trg
}

# Installation =================================================================

# bug.n ------------------------------------------------------------------------

Install-Config($env:APPDATA\bug.n\Config.ini, $DOTS_CONF_DIR\bug.n\Config.ini)

# mpv --------------------------------------------------------------------------

Install-Config($env:APPDATA\mpv\mpv.conf, $DOTS_CONF_DIR\mpv\mpv.conf)
Install-Config($env:APPDATA\mpv\input.conf, $DOTS_CONF_DIR\mpv\input.conf)

# neovim -----------------------------------------------------------------------

Install-Config($env:LOCALAPPDATA\nvim\init.vim, $DOTS_CONF_DIR\nvim\init.vim)

# PowerShell -------------------------------------------------------------------

Install-Config($PROFILE, $DOTS_CONF_DIR\powershell\Microsoft.PowerShell_profile.ps1)

# VSCodium ---------------------------------------------------------------------

Install-Config($env:APPDATA\VSCodium\Users\settings.json, $DOTS_CONF_DIR\vscodium\settings.json)

# Windows Terminal -------------------------------------------------------------

# TODO: Get Windows Terminal directory.

