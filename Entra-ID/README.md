# All Entra ID Powershell scripts description

## AzureADPremiumLicenseReport.ps1

This PowerShell script connects to Microsoft Graph and retrieves a report on Azure AD Premium license utilization. The script fetches data on both P1 and P2 license features and displays the utilization details.

## Script Details

- **Connect to Microsoft Graph**: The script establishes a connection to Microsoft Graph with the necessary permissions to read reports.
- **Retrieve License Information**: It sends a GET request to the Microsoft Graph API to obtain information on Azure AD Premium licenses.
- **Display Utilization Data**: The script outputs the utilization details for both P1 and P2 license features.

## Usage

1. **Connect to Microsoft Graph**:
```powershell
Connect-MgGraph -Scope Reports.Read.All
```
2. **Retrieve License Information:**:
```powershell
$Report = Invoke-MgGraphRequest -Method GET -Uri "/beta/reports/azureADPremiumLicenseInsight" -OutputType PSObject
```
3. **Display Utilization Data**:
```powershell
$Report | Select-Object -Property p1FeatureUtilizations, p2FeatureUtilizations
```

## Retrieve Entra Applications and Recent Sign-Ins

This PowerShell script connects to Microsoft Graph to retrieve a list of all Entra applications and the most recent interactive sign-in for each. It uses the `AuditLog.Read.All` permissions to access audit logs and creates a custom object for each application with the following information:

- **Id**: The application's identifier.
- **DisplayName**: The application's display name.
- **LastSignIn**: The date and time of the most recent interactive sign-in.

## Usage

1. **Connect to Microsoft Graph**: Ensure you have the necessary permissions (`AuditLog.Read.All`) to access audit logs.
2. **Run the Script**: Execute the script in your PowerShell environment.
3. **Review the Output**: The script will output a list of applications with their IDs, display names, and the date and time of their most recent interactive sign-in.
