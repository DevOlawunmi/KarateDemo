package runner;

/*
The API layer contains the business logic of an application -
the rules of how users can interact with services, data, or functions of the app.
The portal has 5 main functionalities: user can submit an LBA instruction or a Full Instruction, the user can convert an
LBA Instruction to Full, they can send LBA chasers and they can search for existing cases.
For these processes to run correctly, we send API calls  to our backend and to other web services like the DVLA API
to get details of the vehicles involved in the incident,
Address Lookup API, and Insurers API. In addition to this, ping authenticates users trying to login to the portal so that's
another API call being made from the portal.
 */
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import com.intuit.karate.Runner;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import com.intuit.karate.Results;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;




public class TestRunner
{
    @Test
    public void testParallel() {
        Results results = Runner.parallel(getClass(), 5);
        generateReport(results.getReportDir());
        
    }


    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] { "json" }, true);
        List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "Karate");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }










}


