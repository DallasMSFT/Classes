Class Vehicle {
    [string]$Color
    [VehicleMake]$Make
    [string]$Model
    [int]$Year

    static [string] $StaticText = 'This is static text'
    hidden [string] $HiddenText = 'This is hidden text'


    Vehicle() {

    }

    Vehicle( [string]$Make, [string]$Model, [int]$Year) {
        $this.Make = $Make
        $this.Model = $Model
        $this.Year = $Year
    }
    Vehicle( [string]$Make, [string]$Model, [int]$Year, [string]$Color) {
        $this.Make = $Make
        $this.Model = $Model
        $this.Year = $Year
        $this.Color = $Color
    }

    [string] Description() {
        Return "A $($this.Make) $($this.Model) year $($this.Year) "
    }
    
    [string] Description([string]$ExtraText) {
        Return "A $($this.Make) $($this.Model) year $($this.Year). $($ExtraText). "
    }

}

# $myCar = [vehicle]::new()
# $mycar.Color = 'Blue'    
# $mycar.make = 'Ford'
# $myCar.Model = 'F150'
# $myCar.Year = 1999
# $myCar