$instance = Read-Host "Please Enter The Instance You Want (Worldwide, China, Germany, USGovDoD, USGovGCCHigh)"
$ws = "https://endpoints.office.com"
$clientRequestId = [GUID]::NewGuid().Guid

$endpointSets = Invoke-RestMethod -Uri ($ws + "/version/" + $instance + "?clientRequestId=" + $clientRequestId)
Write-Output $endpointSets | Out-File Endpoints.txt	