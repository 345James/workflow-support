# Test script to do a choco find and check the timings
Write-Host "Starting"
$startDate = Get-Date

$endDate = Get-Date

$duration = NEW-TIMESPAN –Start $startDate –End $endDate

$packageName = "notepadplusplus"

$latestPackageVersion = cmd.exe /c choco search $packageName --all --pre | Out-String -Stream | Select-String -Pattern "^$packageName.*$" | Sort-Object -Descending | Select-Object -First 1
  
Write-Host $latestPackageVersion

Write-Host "Ended, duration: $duration"
