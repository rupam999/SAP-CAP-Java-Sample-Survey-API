package com.rupam.handlers;

import java.util.UUID;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

@Component
@ServiceName("UserService")
public class UserServiceHandler implements EventHandler {

    @Before(event = CqnService.EVENT_CREATE, entity = "UserService.Users")
    public void beforeCreate(CdsCreateEventContext context) {
        System.out.println("INSIDE BEFORE " + context);
        
        context.getCqn().entries().forEach(entry -> {
            if (!entry.containsKey("userId")) {
                entry.put("userId", UUID.randomUUID().toString());
            }
        });
    }

	@On(event = CqnService.EVENT_READ, entity = "UserService.Users")
    public void onRead(CdsReadEventContext context) {
        System.out.println("INSIDE " + context);
    }

}