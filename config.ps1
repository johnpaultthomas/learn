$vm_name =$args[0]
$env_name =$args[1]

echo "node_name  '$vm_name'">> c:\chef\client.rb
[System.Environment]::SetEnvironmentVariable('APPENV','$env_name',[System.EnvironmentVariableTarget]::Machine)
Powershell C:\opscode\chef\bin\chef-client.bat -j C:\chef\first-boot.json
