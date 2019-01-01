function Clonish-Functions {
    $functions = Get-ChildItem function:*
    $expressions = New-Object System.Collections.Generic.List[System.String]

    for ($i = 0; $i -lt $functions.length; $i++) {
        $name = $functions[$i].Name
        $body = (Get-Command $name).Definition

        $expression = @"
function $name {
    $body
}
"@

        $expressions.Add($expression)
    }

    return $expressions
}