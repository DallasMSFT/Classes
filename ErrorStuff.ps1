Function ErrorStuff {
    [cmdletbinding()]
    Param()
    Try {
        Remove-Item -Path 'c:\temp\DoesNotExist' -ErrorAction Stop
    }
    Catch {
        Write-Verbose 'Cannot remove c:\temp\DeosNotExist; this is probably okay.'
    }
    
    Try {
        100 / 10
    }
    Catch {
        Write-Host 'Error here' -ForegroundColor Green
    }
    Finally {
        Write-Host 'In the finally block'
    }
    
    foreach ($f in $foo) {
        Try {
            # Delete 
        }
        Catch {
            # Error 
        } 
    }
    
    
}