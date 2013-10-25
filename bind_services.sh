#!/bin/bash

# define URIs here, plz
airport=''
airportbuscompany=''
airportdisplayactuatorsaggregator=''
airportinfraredsensorsaggregator='' 
aiportnoisesensorsaggregator='' 
aiportpressuresensorsaggregator='' 
airportsignactuatorsaggregator='' 
airportspeakeractuatorsaggregator='' 
bookableamenity='' 
luggagehandlingcompany='' 
middisplayactuatorsaggregator='' 
midlocationsensorsaggregator='' 
midmicrophonesensorsaggregator='' 
securitycompany='' 
standandgatemanagement=''

#airport
java -jar context_sender.jar $airport airportbuscompany airportbuscompany $airportbuscompany
java -jar context_sender.jar $airport airportdisplayactuatorsaggregator airportdisplayactuatorsaggregator $airportdisplayactuatorsaggregator
java -jar context_sender.jar $airport airportinfraredsensorsaggregator airportinfraredsensorsaggregator $airportinfraredsensorsaggregator
java -jar context_sender.jar $airport aiportnoisesensorsaggregator aiportnoisesensorsaggregator $aiportnoisesensorsaggregator
java -jar context_sender.jar $airport aiportpressuresensorsaggregator aiportpressuresensorsaggregator $aiportpressuresensorsaggregator
java -jar context_sender.jar $airport airportsignactuatorsaggregator airportsignactuatorsaggregator $airportsignactuatorsaggregator
java -jar context_sender.jar $airport airportspeakeractuatorsaggregator airportspeakeractuatorsaggregator $airportspeakeractuatorsaggregator
java -jar context_sender.jar $airport bookableamenity bookableamenity $bookableamenity
java -jar context_sender.jar $airport luggagehandlingcompany luggagehandlingcompany $luggagehandlingcompany
java -jar context_sender.jar $airport middisplayactuatorsaggregator middisplayactuatorsaggregator $middisplayactuatorsaggregator
java -jar context_sender.jar $airport midlocationsensorsaggregator midlocationsensorsaggregator $midlocationsensorsaggregator
java -jar context_sender.jar $airport securitycompany securitycompany $securitycompany
java -jar context_sender.jar $airport standandgatemanagement standandgatemanagement $standandgatemanagement

#airportbuscompany 
java -jar context_sender.jar $airportbuscompany airport airport $airport

#airportdisplayactuatorsaggregator 
# no deps

#airportinfraredsensorsaggregator 
# no deps

#aiportnoisesensorsaggregator 
# no deps

#aiportpressuresensorsaggregator 
# no deps

#airportsignactuatorsaggregator 
# no deps

#airportspeakeractuatorsaggregator 
# no deps

#bookableamenity 
# no deps

#luggagehandlingcompany 
java -jar context_sender.jar $luggagehandlingcompany airport airport $airport

#middisplayactuatorsaggregator 
# no deps

#midlocationsensorsaggregator 
# no deps

#midmicrophonesensorsaggregator 
# no deps

#securitycompany 
java -jar context_sender.jar $securitycompany airport airport $airport

#standandgatemanagement
java -jar context_sender.jar $standandgatemanagement airport airport $airport

