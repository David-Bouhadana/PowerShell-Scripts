# Connect to Microsoft Graph with permission to read reports
Connect-MgGraph -Scope Reports.Read.All

# Retrieve information on Azure AD Premium licenses
$Report = Invoke-MgGraphRequest -Method GET -Uri "/beta/reports/azureADPremiumLicenseInsight" -OutputType PSObject

# Display information on P1 and P2 licenses
$Report | Select-Object -Property p1FeatureUtilizations, p2FeatureUtilizations
