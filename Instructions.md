One would think Get-InstalledCertificates would be a thing, but it's not.

Therefore, in Powershell, open up your profile (you can find your profile by running $profile). Then add the following:

function GIC {
    Get-ChildItem Cert:\LocalMachine\Root\* | ft -AutoSize
}

Set-Alias -Name Get-InstalledCertificates -Value GIC

Save and close. Then run & $profile.currentuserallhosts to reload your profile. Get-InstalledCertificates should now be available.
