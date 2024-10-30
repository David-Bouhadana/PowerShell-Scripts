# All Entra ID Powershell scripts description

## Retrieve Entra Applications and Recent Sign-Ins

This PowerShell script connects to Microsoft Graph to retrieve a list of all Entra applications and the most recent interactive sign-in for each. It uses the `AuditLog.Read.All` permissions to access audit logs and creates a custom object for each application with the following information:

- **Id**: The application's identifier.
- **DisplayName**: The application's display name.
- **LastSignIn**: The date and time of the most recent interactive sign-in.

## Usage

1. **Connect to Microsoft Graph**: Ensure you have the necessary permissions (`AuditLog.Read.All`) to access audit logs.
2. **Run the Script**: Execute the script in your PowerShell environment.
3. **Review the Output**: The script will output a list of applications with their IDs, display names, and the date and time of their most recent interactive sign-in.
