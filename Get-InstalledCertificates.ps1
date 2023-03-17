function GIC {
    Get-ChildItem Cert:\LocalMachine\Root\* | ft -AutoSize
}

Set-Alias -Name Get-InstalledCertificates -Value GIC
