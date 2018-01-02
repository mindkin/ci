Set-ItemProperty "HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters" -Name "MaxUserPort " `
  -Value 65534
Set-ItemProperty "HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpTimedWaitDelay" `
  -Value 60
