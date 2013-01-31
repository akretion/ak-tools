include_recipe "ak-openerp::default"

#TODO: some of these files should be added in other recipes!! #FIXME!!
if false #FIXME
['bzr_update_all', 'ak-db', 'ak-server'].each do |file|
  cookbook_file "/usr/local/bin/#{file}" do
    source "aktools/bin-server/#{file}"
    owner "root"
    group "root"
    mode "0755"
  end
end

['ak-db.rb', 'ak-server.rb'].each do |file|
  cookbook_file "/usr/local/lib/ak-lib/#{file}" do
    source "aktools/lib/#{file}"
    owner "root"
    group "root"
    mode "0755"
  end
end
end
