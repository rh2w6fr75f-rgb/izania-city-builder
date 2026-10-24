param(
  [Parameter(Mandatory=$false)][string]$Message = "Update Izania game"
)
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$zip = Join-Path $root "Izania-Playtest.zip"
if (Test-Path -LiteralPath $zip) { Remove-Item -LiteralPath $zip }
Compress-Archive -LiteralPath (Join-Path $root "index.html"),(Join-Path $root "Playtest-README.txt") -DestinationPath $zip
Set-Location $root
git add index.html Playtest-README.txt Izania-Playtest.zip README.md AGENTS.md .github/workflows/pages.yml
git commit -m $Message
