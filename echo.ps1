param (
    [int]$cols,
    [int]$rows,
    [string]$text
)

function Set-CursorPosition {
    param (
        [int]$row,
        [int]$col
    )
    Write-Host "`e[$row;${col}H" -NoNewline
}

for ($i = 1; $i -le $rows; $i++) {
    for ($j = 1; $j -le $cols; $j++) {
        Set-CursorPosition -row $i -col ($j * 4)
        Write-Host "$text" -NoNewline
    }
}
Write-Host "`n"
