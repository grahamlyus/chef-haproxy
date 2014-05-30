name              "haproxy"
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs and configures haproxy"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.100"

recipe "haproxy", "Installs and configures haproxy"
recipe "haproxy::app_lb", "Installs and configures haproxy by searching for nodes of a particular role"
recipe "haproxy::install_from_package", "Installs haproxy via OS package manager"
recipe "haproxy::install_from_source", "Installs haproxy by compiling from source"
recipe "haproxy::monit", "Installs a monit configuration for monitoring and restarting haproxy"

%w{ debian ubuntu }.each do |os|
  supports os
end

depends "build-essential"
