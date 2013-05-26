
template '/etc/init.d/aria2' do
  source 'aria2.init.erb'
  variables :user => node['aria2']['user']
  owner 'root'
  group 'root'
  mode 00775
end

file '/etc/aria2.conf' do
  content node.generate_aria2_conf
  owner 'root'
  group 'root'
  mode 00660
  notifies :restart, "service[aria2]"
end

service 'aria2' do
  action [:enable, :start]
end
