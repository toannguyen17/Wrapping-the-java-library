package org.usefullibs.greeter.impl;

import org.usefullibs.greeter.Greeter;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class HelloWorldTest {
	@Test
	public void testGreeter(){
		Greeter greeter = new HelloWorld();
		String actual   = greeter.gress();
		String expected = "Hello Word!";
		assertEquals(expected, actual);
	}
}
