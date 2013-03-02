default[:ak_tools][:product_name] = "Ubuntu based Akretion managed server"
default[:ak_tools][:apt_packages] = (node[:ak_tools][:apt_packages] || []) + %w[sudo vim ntpdate]
default[:ak_tools][:apt_packages_extra] = [] #easy to customize with Chef Solo
default[:ak_tools][:bash_aliases] = ["alias ak-solo='sudo chef-solo -c /etc/chef-solo/solo.rb -j /etc/chef/solo/dna.json'"]
