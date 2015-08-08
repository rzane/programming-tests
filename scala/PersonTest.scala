import org.junit.Assert._
import org.junit.Test
import org.junit.Before

class PersonTest {
  var jeff: Person = _
  var susy: Person = _

  @Before def init() {
    jeff = new Person("Jeff")
    susy = new Person("Susy")
  }

  @Test def testName() {
    assertEquals("Jeff", jeff.name)
  }

  @Test def testGreetHelloJeff() {
    var greeting = jeff.greet("Hello")
    assertEquals("Hi, I'm Jeff", greeting)
  }

  @Test def testGreetHelloSusy() {
    var greeting = susy.greet("Hello")
    assertEquals("Hi, I'm Susy", greeting)
  }

  @Test def testGreetGoodbye() {
    assertEquals("Bye", jeff.greet("Goodbye"))
  }

  @Test def testGreetOther() {
    assertEquals("Yo", jeff.greet("Yo"))
  }
}
