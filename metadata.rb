name              "ak-tools"
maintainer        "Akretion"
maintainer_email  "contact@akretion.com"
license           "Apache 2.0"
description       "Akretion tools"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.3"
recipe            "ak-tools::server", "Used on servers"
depends           "apt"
depends           "ssh_known_hosts"

%w{ ubuntu debian }.each do |os|
  supports os
end
