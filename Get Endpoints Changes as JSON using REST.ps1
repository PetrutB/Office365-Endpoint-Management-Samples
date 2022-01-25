$instance = Read-Host "Please Enter The Instance You Want (Worldwide, China, Germany, USGovDoD, USGovGCCHigh)"
$endpointsVersion = Read-Host "Please Enter The Endpoints Version You Want (YYYYMMDDNN)"
$ws = "https://endpoints.office.com"
$clientRequestId = [GUID]::NewGuid().Guid

$endpointSets = Invoke-RestMethod -Uri ($ws + "/changes/" + $instance + "/" + $endpointsVersion + "?Format=JSON&ClientRequestId=" + $clientRequestId)
Write-Output $endpointSets | Out-File Endpoints.txt	