package petstore.runners;
import com.intuit.karate.junit5.Karate;
public class PetStoreRunner { @Karate.Test Karate testAll(){ return Karate.run("classpath:petstore").relativeTo(getClass()); }}