# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/. 

include_recipe "apt" # java recipe is failing without recipe apt
include_recipe "java"

remote_file "#{node['CHOReOSData']['serviceData']['aiportpressuresensorsaggregator']['InstallationDir']}/service-aiportpressuresensorsaggregator.jar" do
    source "#{node['CHOReOSData']['serviceData']['aiportpressuresensorsaggregator']['PackageURL']}"
    action :create_if_missing
    #notifies :start, "service[service_aiportpressuresensorsaggregator_jar]"
end

service "service_aiportpressuresensorsaggregator_jar" do
	# Dirty trick to save the java pid to a file
 	start_command "start-stop-daemon -b --start --quiet --oknodo --pidfile /var/run/service-aiportpressuresensorsaggregator.pid --exec /bin/bash -- -c \"echo \\$\\$ > /var/run/service-aiportpressuresensorsaggregator.pid ; exec java -jar #{node['CHOReOSData']['serviceData']['aiportpressuresensorsaggregator']['InstallationDir']}/service-aiportpressuresensorsaggregator.jar\""
 	stop_command "start-stop-daemon --stop --signal 15 --quiet --oknodo --pidfile /var/run/service-aiportpressuresensorsaggregator.pid"
 	action :start
	status_command "if ps -p `cat /var/run/service-aiportpressuresensorsaggregator.pid` > /dev/null  ; then exit 0; else exit 1; fi"
 	supports :start => true, :stop => true, :status => true
end

