package org.ow2.choreos;

import org.apache.log4j.Logger;
import org.ow2.choreos.chors.ChoreographyDeployer;
import org.ow2.choreos.chors.ChoreographyNotFoundException;
import org.ow2.choreos.chors.EnactmentException;
import org.ow2.choreos.chors.client.ChorDeployerClient;
import org.ow2.choreos.chors.datamodel.Choreography;
import org.ow2.choreos.chors.datamodel.ChoreographySpec;

public class AirportEnact {
    
    private static Logger logger = Logger.getLogger(AirportEnact.class);;

    public static void main(String[] args) throws EnactmentException, ChoreographyNotFoundException {
        
        logger.info("Starting Airport Enactment");
        
        // setup
        final String CHOR_DEPLOYER_URI = "http://localhost:9102/choreographydeployer";
        ChoreographyDeployer chorDeployer = new ChorDeployerClient(CHOR_DEPLOYER_URI);
        AirportSpecs specs = new AirportSpecs();
        ChoreographySpec chorSpec = specs.getChorSpec(); 
        
        // action
        String chorId = chorDeployer.createChoreography(chorSpec);
        Choreography chor = chorDeployer.enactChoreography(chorId);
        
        // output
        System.out.println(chor);
        
        logger.info("Airport Enactment finished");
    }

}
