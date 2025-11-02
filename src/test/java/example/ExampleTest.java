package example;

import com.intuit.karate.junit5.Karate;

class ExampleTest {

    @Karate.Test
    Karate testPodcast() {
        return Karate.run("Podcast").relativeTo(getClass());
    }

    @Karate.Test 
    Karate testToken() {
        return Karate.run("Token").relativeTo(getClass());
    }

    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:example");
    }
}