package pms.javaee.reports;

import org.testng.annotations.Test;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;

public class ProjectStatus {

	@Test
	public void LoginTest() {
		
		System.out.println("Login to Amazon");
		ExtentHtmlReporter reporter= new ExtentHtmlReporter("./Reports/projectstatus.html");
		
		ExtentReports extent = new ExtentReports();
		
		extent.attachReporter(reporter);
		
		ExtentTest logger=extent.createTest("LoginTest");
		
		logger.log(Status.INFO, "Login to Amazon");
		
		logger.log(Status.PASS, "confirmed");
		
		extent.flush();
		
		
		
	}
}
