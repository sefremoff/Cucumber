package cucumber.features;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepsDefenitions {

	@Given("^I am on my zoo website$")
	public void shouldNavigateToZooWebsite() throws Throwable {
		System.out.println("executed the navigate zoo method");
	}

	@When("^I click on contact link$")
	public void shouldClickOnContactLink() throws Throwable {
		System.out.println("executed the click on contact click method");
	}

	@When("^populate contact form$")
	public void populate_contact_form() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("^I should be on contact confirmation page$")
	public void shouldBeOnContactConfirmationPage() throws Throwable {
		System.out.println("checked that I am on contact confirmation page");
	}
	
}
