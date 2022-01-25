$oldEndpoints = Get-Content EndpointsVersion.txt
$oldEndpointsVersion = $oldEndpoints[3].Split(" ");
Write-Host $oldEndpointsVersion[1]

$instance = Read-Host "Please Enter The Instance You Want (Worldwide, China, Germany, USGovDoD, USGovGCCHigh)"
$ws = "https://endpoints.office.com"
$clientRequestId = [GUID]::NewGuid().Guid

$endpointVersion = Invoke-RestMethod -Uri ($ws + "/version/" + $instance + "?clientRequestId=" + $clientRequestId) 
Write-Output $endpointVersion | Out-File EndpointsVersion.txt	

$endpointSets = Invoke-RestMethod -Uri ($ws + "/changes/" + $instance + "/" + $oldEndpointsVersion[1] + "?ClientRequestId=" + $clientRequestId)
Write-Output $endpointSets | Out-File Endpoints.json	