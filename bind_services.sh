#!/bin/bash

# define URIs here, filling the IP field, plz
airport='http://IP:8004/airport'
airportbuscompany='http://IP:8023/airportbuscompany'
airportdisplayactuatorsaggregator='http://IP:8006/airportdisplayactuatorsaggregator'
airportinfraredsensorsaggregator='http://IP:8007/airportinfraredsensorsaggregator' 
aiportnoisesensorsaggregator='http://IP:8008/aiportnoisesensorsaggregator' 
aiportpressuresensorsaggregator='http://IP:8024/aiportpressuresensorsaggregator' 
airportsignactuatorsaggregator='http://IP:8010/airportsignactuatorsaggregator' 
airportspeakeractuatorsaggregator='http://IP:8011/airportspeakeractuatorsaggregator' 
bookableamenity='http://IP:8013/bookableamenity' 
luggagehandlingcompany='http://IP:8017/luggagehandlingcompany' 
middisplayactuatorsaggregator='http://IP:8018/middisplayactuatorsaggregator' 
midlocationsensorsaggregator='http://IP:8019/midlocationsensorsaggregator' 
midmicrophonesensorsaggregator='http://IP:8020/midmicrophonesensorsaggregator' 
securitycompany='http://IP:8021/securitycompany' 
standandgatemanagement='http://IP:8022/standandgatemanagement'

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

