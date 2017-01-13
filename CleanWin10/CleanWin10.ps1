$apps = @(
'Microsoft.BingNews',
'9E2F88E3.Twitter',
'flaregamesGmbH.RoyalRevolt2',
'Microsoft.MinecraftUWP',
'Microsoft.WindowsMaps',
'Microsoft.WindowsCalculator',
'Microsoft.BingWeather',
'Microsoft.People',
'Microsoft.XboxApp',
'Microsoft.WindowsAlarms',
'Microsoft.MicrosoftSolitaireCollection',
'Microsoft.3DBuilder',
'4DF9E0F8.Netflix',
'Facebook.Facebook',
'king.com.CandyCrushSodaSaga',
'Microsoft.Office.OneNote'
)



foreach ($app in $apps) 
{
    Get-AppxPackage -name $app | Remove-AppxPackage
}



