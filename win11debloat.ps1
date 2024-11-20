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
    Get-AppxPackage "$app*" -AllUsers | Remove-AppxPackage -ErrorAction SilentlyContinue
}
