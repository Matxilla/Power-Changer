# Define an array of options
$options = @("Balanced", "Custom")

# Set initial selection to the first option in the list
$selected = 0

# Loop until the user selects an option
while ($true) {
    # Clear the console
    cls

    # Print the header
    Write-Host "Select what Power Plan you want to Set:" -ForegroundColor Green

    # Print the list of options with the selected option highlighted
    for ($i = 0; $i -lt $options.Length; $i++) {
        if ($i -eq $selected) {
            Write-Host ("> " + $options[$i]) -ForegroundColor Yellow
        } else {
            Write-Host ("  " + $options[$i])
        }
    }

    # Get the user's keypress
    $key = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode

    # Process the user's keypress
    switch ($key) {
        # Up arrow
        38 {
            if ($selected -gt 0) {
                $selected--
            }
        }

        # Down arrow
        40 {
            if ($selected -lt ($options.Length - 1)) {
                $selected++
            }
        }

        # Enter
        13 {
            # Run the selected option
            switch ($selected) {
                0 {
                    # Run Option 0
                    Start-Process ".\Balanced.bat" -WindowStyle Hidden
                    Write-Host "Applying Balanced Profile"
                    Start-Sleep -Seconds 3
                }

                1 {
                    # Run Option 1
                    Start-Process ".\No Custom.bat" -WindowStyle Hidden
                    Write-Host "Applying Custom Profile"
                    Start-Sleep -Seconds 3
                }
            }
            exit
        }
    }
}
