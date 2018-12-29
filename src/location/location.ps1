function Clonish-Location {
    $location = Get-Location
    return "Set-Location -Path '$location'"
}
