$clientRequestId = [Guid]::NewGuid()
$instance = Read-Host "Please Enter The Instance You Want (Worldwide, China, Germany, USGovDoD, USGovGCCHigh)"
$type = Read-Host "Enter the URL Type (1 for Optimize, 2 for Optimize and Allow)"
$service = Read-Host "Enter the Service you want (Skype, Exchange, Sharepoint, Common)"
$tenantName = Read-Host "Enter Tennant Name"
$proxyIp = Read-Host "Enter Proxy IP"
$proxyPort = Read-Host "Enter Proxy Port"
$proxy = $proxyIp + ":" + $proxyPort

Get-PacFile -Type $type -Instance $instance -TenantName $tenantName -ServiceAreas $service -ClientRequestId $clientRequestId -DefaultProxySettings $proxy > proxy.pac