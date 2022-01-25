$instance = Read-Host "Please Enter The Instance You Want (Worldwide, China, Germany, USGovDoD, USGovGCCHigh)"
$format = Read-Host "Please Enter the Format You Want (JSON, CSV, RSS)"
$ws = "https://endpoints.office.com"
$clientRequestId = [GUID]::NewGuid().Guid

$endpointSets = Invoke-RestMethod -Uri ($ws + "/endpoints/" + $instance + "?Format=" + $format + "&clientRequestId=" + $clientRequestId)
Write-Output $endpointSets | Out-File Endpoints.txt	