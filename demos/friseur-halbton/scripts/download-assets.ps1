$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Out = Join-Path $Root "public\assets\images"
New-Item -ItemType Directory -Force -Path $Out | Out-Null

$Assets = @(
    @{ Name = "01-hero.jpg"; Url = "https://images.pexels.com/photos/3993312/pexels-photo-3993312.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "02-colour.jpg"; Url = "https://images.pexels.com/photos/3993311/pexels-photo-3993311.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "03-cut.jpg"; Url = "https://images.pexels.com/photos/3993442/pexels-photo-3993442.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "04-process.jpg"; Url = "https://images.pexels.com/photos/3993453/pexels-photo-3993453.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "05-wash.jpg"; Url = "https://images.pexels.com/photos/3993449/pexels-photo-3993449.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "06-finish.jpg"; Url = "https://images.pexels.com/photos/3065171/pexels-photo-3065171.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "07-studio.jpg"; Url = "https://images.pexels.com/photos/7750098/pexels-photo-7750098.jpeg?cs=srgb&fm=jpg" },
    @{ Name = "08-tools.jpg"; Url = "https://images.pexels.com/photos/7440054/pexels-photo-7440054.jpeg?cs=srgb&fm=jpg" }
)

foreach ($Asset in $Assets) {
    $Target = Join-Path $Out $Asset.Name
    Write-Host "Downloading $($Asset.Name)"
    Invoke-WebRequest -Uri $Asset.Url -OutFile $Target
}

Write-Host "Assets downloaded to $Out"
