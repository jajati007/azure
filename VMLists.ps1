# Login to your Azure account
Connect-AzAccount

# Get all VMs in a specific resource group
$resourceGroupName = "AZ-400"
$vmList = Get-AzVM -ResourceGroupName $resourceGroupName

# Filter VMs based on OS type
$windowsVMs = $vmList | Where-Object { $_.StorageProfile.OSDisk.OSType -eq "Windows" }

$linuxVMs = $vmList | Where-Object { $_.StorageProfile.OSDisk.OSType -eq "Linux" }

# Display the Windows VMs
Write-Host "Windows VMs:"
$windowsVMs | ForEach-Object { Write-Host $_.Name }

# Display the Linux VMs
Write-Host "Linux VMs:"
$linuxVMs | ForEach-Object { Write-Host $_.Name }
