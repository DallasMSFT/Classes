$myObject = [PSCustomObject]@{
    PSTypeName = 'dkc.Vehicle'
    Make       = 'Ford'
    Model      = 'F150'
    Color      = 'Blue'
    Year       = 2050
}
# $myCar = [Vehicle]@{
#     Make  = 'Chevy'
#     Model = 'Van'
#     Color = 'Green'
#     Year  = 2000
# }


$TypeData = @{
    TypeName                  = 'dkc.Vehicle'
    DefaultDisplayPropertySet = 'Make', 'Model'
}
Update-TypeData @TypeData -Force -ErrorAction SilentlyContinue


$myObject
$myCar

Function Stuff {
    $PSScriptRoot
}
