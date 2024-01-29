# get script dir
$script_dir=$PSScriptRoot

$env:VCPKG_DISABLE_METRICS=1
$env:VCPKG_ROOT = "$HOME/vcpkg"
Set-Alias -Name vcpkg -Value "$env:VCPKG_ROOT/vcpkg"
