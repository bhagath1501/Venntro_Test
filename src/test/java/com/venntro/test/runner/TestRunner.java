package com.venntro.test.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/tes/resources",
		glue = {"com/venntro/test/stepdefinitions"},
		plugin = {"html:target/cucumber-hrml-reports",
				  "json:target/cucumber.json"})
public class TestRunner {
	
}
