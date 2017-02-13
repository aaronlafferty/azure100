function Start-ImmersionPostDeployScript {
    param(
        $Credentials,
        $TenantId,
        $Region,
        $UserEmail,
        $UserPassword,
        $ResourceGroupName,
        $StorageAccountName
    )

    #Grant access to Automation Account
    $AutoScope = (Find-AzureRmResource -ResourceGroupNameContains $resourcegroupname -ResourceType Microsoft.RecoveryServices/vaults).ResourceId
    New-AzureRmRoleAssignment -SignInName $UserEmail -RoleDefinitionName Contributor -Scope $AutoScope -ErrorAction SilentlyContinue
}