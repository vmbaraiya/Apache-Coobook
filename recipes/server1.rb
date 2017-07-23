package 'httpd' do
  action :install
end



file '/var/www/html/index.html' do
  content '<h1>THIS IS FIRST APACHE INSTALLATION, WELCOME...!</h1>'
end

service 'httpd' do
  action [:enable, :start]
end
