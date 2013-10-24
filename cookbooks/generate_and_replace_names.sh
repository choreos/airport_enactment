#!/bin/bash

names=( airport airportbuscompany airportdisplayactuatorsaggregator airportinfraredsensorsaggregator aiportnoisesensorsaggregator aiportpressuresensorsaggregator airportsignactuatorsaggregator airportspeakeractuatorsaggregator bookableamenity luggagehandlingcompany middisplayactuatorsaggregator midlocationsensorsaggregator midmicrophonesensorsaggregator securitycompany standandgatemanagement) 

for name in "${names[@]}"
do
   cp -r jar_template $name
   cd $name
   sed -i "s/\$NAME/$name/g" attributes/default.rb
   sed -i "s/\$NAME/$name/g" recipes/default.rb
   cd ..
done





