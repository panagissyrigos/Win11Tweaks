#Requires -RunAsAdministrator

# The following script checks the UEFI SecureBoot PK to see if the machine it's
# run on, is  affected by the PKFail published on 7/25/2024
#
# relevant article: https://arstechnica.com/security/2024/07/secure-boot-is-completely-compromised-on-200-models-from-5-big-device-makers/


$IsAdmin = [Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544'

if ($IsAdmin) {
    $hostname = Get-WMIObject Win32_ComputerSystem | Select-Object -ExpandProperty Name
    $PKFailFound = [System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI PK).bytes) -match "DO NOT TRUST|DO NOT SHIP"
    Write-Output "$hostname $PKFailFound"
}
else {
    Write-Output "This script requires admin privileges to retrieve the necessary information."
}