package 'httpd' do
  action :install
end



file '/var/www/html/index.html' do
  content "<h1>THIS IS FIRST APACHE INSTALLATION, WELCOME...!</h1>
    <h2> HOSTNAME: #{node['hostname']} </h2>
    <h2> IPADDRESS: #{node['ipaddress']} </h2>
"
end

service 'httpd' do
  action [:enable, :start]
end
