#!/bin/bash

names=( airport airportbuscompany airportdisplayactuatorsaggregator airportinfraredsensorsaggregator aiportnoisesensorsaggregator aiportpressuresensorsaggregator airportsignactuatorsaggregator airportspeakeractuatorsaggregator bookableamenity luggagehandlingcompany middisplayactuatorsaggregator midlocationsensorsaggregator midmicrophonesensorsaggregator securitycompany standandgatemanagement) 

for name in "${names[@]}"
do
   rm -rf $name
done
