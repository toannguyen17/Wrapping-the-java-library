package org.usefullibs.greeter.impl;

import org.usefullibs.greeter.Greeter;

public class HelloWorld implements Greeter {
	@Override
	public String gress() {
		return "Hello Word!";
	}
}
