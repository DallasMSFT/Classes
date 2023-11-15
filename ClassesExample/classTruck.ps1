Class Truck : vehicle {

    [int]$BedLength

    Truck($Make, $Model, $Year, $Color) {
        # This is not working...fix it!
        [vehicle]::new($Make, $Model, $color, $year)
    }

}
