$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$Dest = Join-Path $Root "public\assets\images"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null

$Assets = @(
    @{ Name = "01-hero-black-forest.jpg"; Url = "https://images.pexels.com/photos/7434709/pexels-photo-7434709.jpeg?auto=compress&cs=tinysrgb&w=2200" },
    @{ Name = "02-apartment-nord.jpg"; Url = "https://images.pexels.com/photos/27638171/pexels-photo-27638171.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "03-apartment-wald.jpg"; Url = "https://images.pexels.com/photos/16068765/pexels-photo-16068765.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "04-apartment-tal.jpg"; Url = "https://images.pexels.com/photos/7746559/pexels-photo-7746559.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "05-bedroom-window.jpg"; Url = "https://images.pexels.com/photos/8112918/pexels-photo-8112918.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "06-forest-stream.jpg"; Url = "https://images.pexels.com/photos/32586577/pexels-photo-32586577.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "07-forest-trail.jpg"; Url = "https://images.pexels.com/photos/5174306/pexels-photo-5174306.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "08-mummelsee.jpg"; Url = "https://images.pexels.com/photos/20030105/pexels-photo-20030105.jpeg?auto=compress&cs=tinysrgb&w=1800" },
    @{ Name = "09-winter-forest.jpg"; Url = "https://images.pexels.com/photos/19368559/pexels-photo-19368559.jpeg?auto=compress&cs=tinysrgb&w=1800" }
)

foreach ($Asset in $Assets) {
    $Target = Join-Path $Dest $Asset.Name
    Write-Host "Downloading $($Asset.Name)"
    Invoke-WebRequest -Uri $Asset.Url -OutFile $Target
}

Write-Host "Done. Assets saved to $Dest"
