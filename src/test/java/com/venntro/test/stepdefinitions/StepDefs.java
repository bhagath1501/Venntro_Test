package com.venntro.test.stepdefinitions;

import com.venntro.test.util.WebConnector;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefs {

	WebConnector cucumber = WebConnector.getInstance();

	@Given("^I open \"([^\"]*)\"$")
	public void I_Open_Browser(String browser) {
		cucumber.OpenBrowser(browser);
	}

	@When("^I navigate \"([^\"]*)\"$")
	public void I_navigate(String url) {
		cucumber.navigate(url);
	}

	@And("^I enter \"([^\"]*)\" as \"([^\"]*)\"$")
	public void I_enter(String prop, String text) {
		cucumber.type(prop, text);
	}

	@When("^I click on \"([^\"]*)\"$")
	public void I_click_on(String property) {
		cucumber.click(property);
	}

	@Then("^Check the \"([^\"]*)\" with \"([^\"]*)\"$")
	public void check(String actualResult, String expectedResult) throws InterruptedException {
		Thread.sleep(3000);
		cucumber.verify(actualResult, expectedResult);
	}

	@And("^I close the browser$")
	public void close_the_browser() {
		cucumber.closeBrowser();

	}
}
