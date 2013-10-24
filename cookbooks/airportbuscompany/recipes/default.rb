# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/. 

include_recipe "apt" # java recipe is failing without recipe apt
include_recipe "java"

remote_file "#{node['CHOReOSData']['serviceData']['airportbuscompany']['InstallationDir']}/service-airportbuscompany.jar" do
    source "#{node['CHOReOSData']['serviceData']['airportbuscompany']['PackageURL']}"
    action :create_if_missing
    #notifies :start, "service[service_airportbuscompany_jar]"
end

service "service_airportbuscompany_jar" do
	# Dirty trick to save the java pid to a file
 	start_command "start-stop-daemon -b --start --quiet --oknodo --pidfile /var/run/service-airportbuscompany.pid --exec /bin/bash -- -c \"echo \\$\\$ > /var/run/service-airportbuscompany.pid ; exec java -jar #{node['CHOReOSData']['serviceData']['airportbuscompany']['InstallationDir']}/service-airportbuscompany.jar\""
 	stop_command "start-stop-daemon --stop --signal 15 --quiet --oknodo --pidfile /var/run/service-airportbuscompany.pid"
 	action :start
	status_command "if ps -p `cat /var/run/service-airportbuscompany.pid` > /dev/null  ; then exit 0; else exit 1; fi"
 	supports :start => true, :stop => true, :status => true
end

