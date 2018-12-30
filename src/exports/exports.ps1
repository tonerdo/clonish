function Clonish-Exports {
    $exports = Get-ChildItem Env:*
    $expressions = New-Object System.Collections.Generic.List[System.String]

    for ($i=0; $i -lt $exports.length; $i++) {
        $name = $exports[$i].Name
        $value = $exports[$i].Value

        $expression = "[Environment]::SetEnvironmentVariable('$name', '$value')"
        $expressions.Add($expression)
    }

    return $expressions
}