# Replace 'YOUR_APP_ID' with your Open Exchange Rates API key
#$apiKey = 'YOUR_APP_ID'
$baseUrl = 'https://open.er-api.com/v6/latest'

# Specify the base and target currencies
$baseCurrency = 'SEK'
$targetCurrency = 'DKK'

# Build the API URL
$url = "$baseUrl/$baseCurrency"

# Make the API request
$response = Invoke-RestMethod -Uri $url -Method Get

# Extract the exchange rate
$exchangeRate = $response.rates.$targetCurrency

# Display the result
Write-Output "1 $baseCurrency = $exchangeRate $targetCurrency"
$DKK = $response.rates.SEK / $response.rates.DKK
Write-Output "1 $targetCurrency = $DKK"


