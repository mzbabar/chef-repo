package 'httpd'

service 'httpd' do
   action [:start, :enable]
end

file '/var/www/html/index.html' do
     content '<html>
         <body>
             <h1> Hello World</h1>
         </body>
     </html>'
end

service 'iptables' do
  action :stop
end
