# Definer registreringsstivejen
$CWRegPath = "HKCU:\SOFTWARE\CaseWare International\Working Papers\2024.00\Settings\CWLS"

# Sikr at stien findes
if (-not (Test-Path $CWRegPath)) {
    New-Item -Path $CWRegPath -Force | Out-Null
}

# Hent brugernavn (uden domæne)
$UserName = $env:USERNAME

# Opret/overskriv værdierne
New-ItemProperty -Path $CWRegPath -Name "Authorization" -PropertyType String -Value "7361472051E284426DB9" -Force
New-ItemProperty -Path $CWRegPath -Name "Alert Frequency" -PropertyType DWord -Value 2 -Force
New-ItemProperty -Path $CWRegPath -Name "Email" -PropertyType String -Value "$UserName@shlr.dk" -Force
New-ItemProperty -Path $CWRegPath -Name "Name" -PropertyType String -Value $UserName -Force
