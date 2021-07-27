package feature; 

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@KarateOptions(tags = {"@F1","~@F4"})

@RunWith(Karate.class)
public class ApiTestRunner {

}

