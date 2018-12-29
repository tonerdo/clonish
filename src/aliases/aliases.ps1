function Clonish-Aliases {
    $aliases = Get-Alias
    $expressions = New-Object System.Collections.Generic.List[System.String]
    for ($i=0; $i -lt $aliases.length; $i++) {
        $name = $aliases[$i].Name
        $value = $aliases[$i].ResolvedCommandName

        $expression += "Set-Alias $name $value"
        $expressions.Add($expression)
    }

    return $expressions
}