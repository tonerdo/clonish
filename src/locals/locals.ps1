function Clonish-Locals {
    $variables = Get-Variable
    $expressions = New-Object System.Collections.Generic.List[System.String]
    
    for ($i=0; $i -lt $variables.length; $i++) {
        $name = $variables[$i].Name
        $value = $variables[$i].Value

        $expression = "$"
        $expression += "$name = $value"
        $expressions.Add($expression)
    }

    return $expressions
}