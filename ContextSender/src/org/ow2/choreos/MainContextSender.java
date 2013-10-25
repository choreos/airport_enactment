package org.ow2.choreos;

import java.util.Collections;
import java.util.List;

public class MainContextSender {

    public static void main(String[] args) throws ContextNotSentException {
        String dependentUri = args[0]; 
        String dependencyRole = args[1]; 
        String dependencyName = args[2]; 
        String dependencyUri = args[3]; 
        List<String> dependencies = Collections.singletonList(dependencyUri);
        ContextSender sender = new ContextSender();
        System.out.println("Calling setInvocationAddress in " + dependentUri);
        sender.sendContext(dependentUri, dependencyRole, dependencyName, dependencies);
        System.out.println("Context sent");
    }

}
