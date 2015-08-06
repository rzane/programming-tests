<?php

require_once('Person.php');

class PersonTest extends PHPUnit_Framework_TestCase {
  public function setUp(){
    $this->jeff = new Person('Jeff');
    $this->susy = new Person('Susy');
  }

  public function testGetName() {
    $this->assertEquals($this->jeff->getName(), 'Jeff');
  }

  public function testGreetHelloJeff() {
    $greeting = $this->jeff->greet('Hello');
    $this->assertEquals("Hi, I'm Jeff", $greeting);
  }

  public function testGreetHelloSusy() {
    $greeting = $this->susy->greet('Hello');
    $this->assertEquals("Hi, I'm Susy", $greeting);
  }

  public function testGreetGoodbye() {
    $greeting = $this->susy->greet('Goodbye');
    $this->assertEquals('Bye', $greeting);
  }

  public function testGreetOther() {
    $greeting = $this->jeff->greet('Yo');
    $this->assertEquals('Yo', $greeting);
  }
}
?>
