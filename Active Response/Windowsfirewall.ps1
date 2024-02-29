#Script Inspired by OpenSecure
$INPUT_JSON = Read-Host
$INPUT_ARRAY = $INPUT_JSON | ConvertFrom-Json 
$INPUT_ARRAY = $INPUT_ARRAY | ConvertFrom-Json
$ErrorActionPreference = "SilentlyContinue"
$command = $INPUT_ARRAY."command"
$hostip = (Get-WmiObject -Class Win32_NetworkAdapterConfiguration | where {$_.DHCPEnabled -ne $null -and $_.DefaultIPGateway -ne $null}).IPAddress | 
Select-Object -First 1
$destinationip = $INPUT_ARRAY."parameters"."alert"."data"."win"."eventdata"."destinationIp"

#Add Destination IP to Windows Firewall
if ( $command -eq 'add' -AND $destinationip -ne '127.0.0.1' -And $destinationip -ne '0.0.0.0' -And $destinationip -ne $hostip )
{
New-NetFirewallRule -DisplayName "Wazuh Active Response - $destinationip" -Direction Outbound -Protocol Any -Action Block -RemoteAddress 
$destinationip
echo  "$destinationip added to blocklist via Windows Firewall" | ConvertTo-Json -Compress | Out-File -width 2000 C:\"Program Files (x86)"\ossec- 
agent\active-response\active-responses.log -Append -Encoding ascii
}
