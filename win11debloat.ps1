# Befehl als Admin ausführen: Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JPsLab/win11debloat/refs/heads/main/win11debloat.ps1" -UseBasicParsing).Content
# Liste der App-Namen
$appNames = @(
    "Microsoft.ZuneMusic",
    "Microsoft.Todos",
    "Microsoft.YourPhone",
    "Microsoft.DevHome",
    "Microsoft.Copilot",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.OutlookForWindows",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.GamingApp",
    "Microsoft.BingWeather",
    "Microsoft.BingNews",
    "Clipchamp.Clipchamp"
)

# Entfernen der Apps
foreach ($app in $appNames) {
    Get-AppxPackage "$app*" | Remove-AppxPackage -ErrorAction SilentlyContinue
}
