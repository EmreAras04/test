package com.exemple;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class AppTest {

    @Test
    public void testAppHasAGreeting() {
        App app = new App();
        assertNotNull("App should have a greeting", app.getGreeting());
    }
}
