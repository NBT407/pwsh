function Get-WorkdaysBetweenDates {
    param (
        [DateTime]$StartDate,
        [DateTime]$EndDate
    )

    $workdays = 0
    $currentDate = $StartDate

    while ($currentDate -le $EndDate) {
        if ($currentDate.DayOfWeek -ne 'Saturday' -and $currentDate.DayOfWeek -ne 'Sunday') {
            $workdays++
        }
        $currentDate = $currentDate.AddDays(1)
    }

    return $workdays
}

# Example usage:
$startDate = Get-Date '2023-01-01'
$endDate = Get-Date '2023-01-15'

$workdays = Get-WorkdaysBetweenDates -StartDate $startDate -EndDate $endDate
Write-Host "Number of workdays between $startDate and $endDate = $workdays"
