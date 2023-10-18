$regPath = "HKCU:\Software\Microsoft\Office\16.0\Outlook\Profiles\CMHA_NEW"
$value = Test-Path $regPath
if($value){
        Write-host "Reg Key already Exists. No Action Required"
 }
Else{
        Remove-Item -Path HKCU:\Software\Microsoft\Office\16.0\Outlook\Profiles\* -Force -Recurse
        
        New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Outlook\Profiles\CMHA_NEW -Force -Recurse
}