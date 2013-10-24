# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/. 

include_recipe "apt" # java recipe is failing without recipe apt
include_recipe "java"

remote_file "#{node['CHOReOSData']['serviceData']['standandgatemanagement']['InstallationDir']}/service-standandgatemanagement.jar" do
    source "#{node['CHOReOSData']['serviceData']['standandgatemanagement']['PackageURL']}"
    action :create_if_missing
    #notifies :start, "service[service_standandgatemanagement_jar]"
end

service "service_standandgatemanagement_jar" do
	# Dirty trick to save the java pid to a file
 	start_command "start-stop-daemon -b --start --quiet --oknodo --pidfile /var/run/service-standandgatemanagement.pid --exec /bin/bash -- -c \"echo \\$\\$ > /var/run/service-standandgatemanagement.pid ; exec java -jar #{node['CHOReOSData']['serviceData']['standandgatemanagement']['InstallationDir']}/service-standandgatemanagement.jar\""
 	stop_command "start-stop-daemon --stop --signal 15 --quiet --oknodo --pidfile /var/run/service-standandgatemanagement.pid"
 	action :start
	status_command "if ps -p `cat /var/run/service-standandgatemanagement.pid` > /dev/null  ; then exit 0; else exit 1; fi"
 	supports :start => true, :stop => true, :status => true
end

