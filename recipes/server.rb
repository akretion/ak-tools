include_recipe "apt::default"

directory "/usr/local/lib/ak-lib" do
  group "root"
  owner "root"
  mode "0755"
  notifies :run, resources(:execute => "apt-get update"), :immediately
end

template "/etc/motd" do
  owner "root"
  group "root"
  mode 00777
  source "motd.erb"
  variables :product_name => node[:ak_tools][:product_name]
end

(node[:ak_tools][:apt_packages] + node[:ak_tools][:apt_packages_extra]).each {|pack| package pack}
