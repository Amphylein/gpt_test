$ErrorActionPreference = 'Stop'

$RootDir = Split-Path -Parent $PSScriptRoot
$OutDir = Join-Path $RootDir 'public/assets/images'
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$assets = @(
    @{ File = '01-hero-kitchen.jpg'; Url = 'https://images.pexels.com/photos/6933769/pexels-photo-6933769.jpeg?cs=srgb&dl=pexels-artbovich-6933769.jpg&fm=jpg' },
    @{ File = '02-kitchen-cabinetry.jpg'; Url = 'https://images.pexels.com/photos/8143944/pexels-photo-8143944.jpeg?cs=srgb&dl=pexels-artbovich-8143944.jpg&fm=jpg' },
    @{ File = '03-staircase.jpg'; Url = 'https://images.pexels.com/photos/7031583/pexels-photo-7031583.jpeg?cs=srgb&dl=pexels-artbovich-7031583.jpg&fm=jpg' },
    @{ File = '04-dark-kitchen.jpg'; Url = 'https://images.pexels.com/photos/6284237/pexels-photo-6284237.jpeg?cs=srgb&dl=pexels-artbovich-6284237.jpg&fm=jpg' },
    @{ File = '05-workshop.jpg'; Url = 'https://images.pexels.com/photos/5490164/pexels-photo-5490164.jpeg?cs=srgb&dl=pexels-rachel-claire-5490164.jpg&fm=jpg' },
    @{ File = '06-measuring.jpg'; Url = 'https://images.pexels.com/photos/5973968/pexels-photo-5973968.jpeg?cs=srgb&dl=pexels-ono-kosuki-5973968.jpg&fm=jpg' },
    @{ File = '07-sanding.jpg'; Url = 'https://images.pexels.com/photos/5974332/pexels-photo-5974332.jpeg?cs=srgb&dl=pexels-ono-kosuki-5974332.jpg&fm=jpg' },
    @{ File = '08-craftsperson.jpg'; Url = 'https://images.pexels.com/photos/7480453/pexels-photo-7480453.jpeg?cs=srgb&dl=pexels-cottonbro-7480453.jpg&fm=jpg' }
)

foreach ($asset in $assets) {
    $target = Join-Path $OutDir $asset.File
    Write-Host "Downloading $($asset.File)"
    Invoke-WebRequest -Uri $asset.Url -OutFile $target
}

Write-Host "`nDone. Assets written to: $OutDir"
Write-Host 'Review public/assets/ASSETS.md before public/commercial publication.'
