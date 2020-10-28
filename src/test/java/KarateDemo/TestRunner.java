package KarateDemo;


import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@CucumberOptions(
        features = {"features/userDetails.feature"}
)
public class TestRunner
{


}
