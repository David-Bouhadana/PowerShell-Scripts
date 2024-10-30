# Connexion à Microsoft Graph avec les autorisations nécessaires
Connect-MgGraph -Scopes AuditLog.Read.All

# Récupération de toutes les applications Entra et de leurs dernières connexions interactives
$applications = Get-MgApplication -All
$applications | ForEach-Object {
    $lastSignIn = Get-MgAuditLogSignIn -Filter "appId eq '$($_.AppId)'" -Top 1 -OrderBy 'createdDateTime desc'
    [pscustomobject]@{
        Id = $_.Id
        DisplayName = $_.DisplayName
        LastSignIn = $lastSignIn.CreatedDateTime
    }
}
