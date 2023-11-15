[cmdletbinding()]
Param()
Try {

    Write-Host 'Before code'
    $myVariable = 'Dallas'

    $myDir = Get-ChildItem -Path C:\temp\FRB

    Write-Verbose "Found $($myDir.Count) items"
    Write-debug $myDir.ToString()

    Write-Host "myName: $myVariable" -ForegroundColor DarkMagenta

    #1 / 0

    Write-Host 'After Code'

}
Catch [System.DivideByZeroException] {
    
    Throw 'You cannot divide by zero, Dallas' 
}
Catch [System.SystemException] {
    write-host 'SystemError'
}
catch {

    Write-Host $error[0] -ForegroundColor Magenta

}

