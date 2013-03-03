include_recipe "apt::default"

directory "/usr/local/lib/ak-lib" do
  group "root"
  owner "root"
  mode "0755"
  notifies :run, "execute[apt-get update]", :immediately
end

template "/etc/motd" do
  owner "root"
  group "root"
  mode 00777
  source "motd.erb"
  variables :product_name => node[:ak_tools][:product_name]
end

cookbook_file "/usr/local/bin/extract" do
  source "extract"
  owner "root"
  group "root"
  mode "0755"
end

script "extend bash.bashrc with a custom aliases file" do
  interpreter "ruby"
  user "root"
  group "root"
  code <<-EOH
    File.open("/etc/bash.bashrc", 'a') do |f|
      f.puts("if [ -f /etc/bash_aliases ]; then . /etc/bash_aliases; fi")
    end
    EOH
  not_if "grep 'bash_aliases' /etc/bash.bashrc", :user => "root", :group => "root"
end

template "/etc/bash_aliases" do
  owner "root"
  group "root"
  mode 00777
  source "bash_aliases.erb"
  variables :bash_aliases => node[:ak_tools][:bash_aliases]
end


(node[:ak_tools][:apt_packages] + node[:ak_tools][:apt_packages_extra]).each {|pack| package pack}
