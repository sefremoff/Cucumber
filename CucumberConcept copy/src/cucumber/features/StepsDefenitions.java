package cucumber.features;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepsDefenitions {
	
	WebDriver driver = null;

	@Given("^I am on my numeproducts website$")
	public void shouldNavigateOnNumeproductsWebsite() throws Throwable {
		driver = new FirefoxDriver();
		driver.navigate().to("http://numeproducts.com"); 
	}

	@When("^I click on sets link$")
	public void shouldClickOnSetsLink() throws Throwable {
		driver.findElement(By.xpath(".//*[@id='sub-sets']/a")).click();
	}

	@And("^click on Octowand set$")
	public void shouldClickOnOctowandSet() throws Throwable {
		driver.findElement(By.xpath(".//*[@id='hair-head']/div[1]/div[7]/div[1]/ul[1]/li[1]/span[1]/a/img")).click();
	}

	@Then("^I should be on Octowand page$")
	public void shouldBeOnOctowandPage() throws Throwable {
		assertTrue(equals ("Octowand"));

	}

	private void assertTrue(boolean equals) {
		// TODO Auto-generated method stub
		
	}
	
}