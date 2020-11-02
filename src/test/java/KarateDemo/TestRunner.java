package KarateDemo;

/*
The API layer contains the business logic of an application -
the rules of how users can interact with services, data, or functions of the app.
 The portal has 5 main functionalities: user can submit an LBA instruction or a Full Instruction, the user can convert an
 LBA Instruction to Full, they can send LBA chasers and they can search for existing cases.
 For these processes to run correctly, we send API calls  to our database backend and to other web services like the DVLA API
 to get details of the vehicles involved in the incident,
 Address Lookup API, and Insurers API. In addition to this, ping authenticates users trying to login to the portal so that's
 another API call being made from the portal.
 */
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
