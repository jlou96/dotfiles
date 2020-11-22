# PowerShell Profile

# Modules ======================================================================

# Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1' -Verbose
Import-Module wfetch

# Functions ====================================================================

function Prompt
{
    $home_dir = "C:\Users\Julian"
    $base_dir = (Split-Path (Get-Location) -Leaf)

    $depth = (Get-Location -Stack).Count
    $depth_color = If ($depth -eq 0) { "Blue"  } Else { "DarkBlue"  }
    $drive = (Get-Location).Drive.Name
    $drive_color = "Blue"

    Write-Host "[$drive]"  -ForegroundColor $drive_color -NoNewLine;
    Write-Host "[$depth] " -ForegroundColor $depth_color -NoNewLine;
    Write-Host "hei"       -ForegroundColor DarkRed      -NoNewLine;
    Write-Host "@"         -ForegroundColor Red          -NoNewLine;
    Write-Host "irohasu"   -ForegroundColor DarkYellow   -NoNewLine;
    Write-Host ":"         -ForegroundColor Green        -NoNewLine;
    Write-Host $base_dir   -ForegroundColor Magenta      -NoNewLine;
    Write-Host " %"        -ForegroundColor DarkMagenta  -NoNewLine;

    return " "
}

# Usage: cd to the folder and just run Rename-Sort with no arguments.
function Rename-Sort
{
    Get-ChildItem -File |
    ForEach-Object -Begin {
        $Count = 0
        $Size = (Get-ChildItem -File | Measure-Object).Count
        $Digits = [int]($Size.ToString().Length)
    } -Process {
        $Count++
        $Extension = [System.IO.Path]::GetExtension($_.Name)
        $FileName = $Count.ToString()

        if ($FileName.Length -ne $Digits)
        {
            $FileName = "0" * ($Digits - $FileName.Length) + $FileName                                                    
        }

        Rename-Item -Path $_.Name -NewName ($FileName + $Extension)
    }
}

