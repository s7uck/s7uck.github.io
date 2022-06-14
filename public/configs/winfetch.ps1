# $image = "~/winfetch.png"
# $noimage = $true

# Set the version of Windows to derive the logo from.
# $logo = "Windows 7"

# Make the logo not blink
$blink = $false

# Display all built-in info segments.
# $all = $true

# Add a custom info line
function info_username {
	return @{
		title = "Hi~ !"
		content = "${e}[1;33m{0}${e}[0m@${e}[1;33m{1}${e}[0m" -f [System.Environment]::UserName,$env:COMPUTERNAME
	}
}

function info_underline {
	$windowSize = (Get-Host).UI.RawUI.MaxWindowSize.Width
	$title = "—————————" * ($windowSize / 9)
	return @{
		title = $title
	}
}

function info_separator {
	return info_blank
}

# Configure which disks are shown
$ShowDisks = @("C:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
$cpustyle = 'bartext'
$memorystyle = 'bartext'
$diskstyle = 'bartext'
$batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

clear
@(
	"username"
	"underline"
	"os"
	"kernel"
	"computer"
	"pwsh"
	"cpu"
	"gpu"
	"separator"
	"uptime"
	"disk"
	"battery"
	"separator"
	"weather"
	"local_ip"
	"public_ip"
)
