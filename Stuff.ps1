$myObject = [PSCustomObject]@{
    Make  = 'Ford'
    Model = 'F150'
    Color = 'Blue'
    Year  = 2010
}
$myCar = [Vehicle]@{
    Make  = 'Chevy'
    Model = 'Van'
    Color = 'Green'
    Year  = 2000
}

$myObject
$myCar

Function Stuff {
    $PSScriptRoot
}