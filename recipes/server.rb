powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  action :run
end

file 'c:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>'
end

service 'w3svc' do
  action [:enable, :start]
end
