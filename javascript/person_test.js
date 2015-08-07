'use strict';

if (typeof window === 'undefined') {
  // We're running node. Make sure
  // to export Person in person.js
  var Person = require('./person.js');
}

QUnit.module('Person', {
  setup: function() {
    this.jeff = new Person('Jeff');
    this.susy = new Person('Susy');
  }
});

test('has a name', function() {
  equal(this.jeff.getName(), 'Jeff');
});

test('introduces when I say Hello to Jeff', function () {
  equal(this.jeff.greet('Hello'), "Hi, I'm Jeff");
});

test('introduces when I say Hello to Susy', function () {
  equal(this.susy.greet('Hello'), "Hi, I'm Susy");
});

test('says Bye when I says Goodbye', function () {
  equal(this.jeff.greet('Goodbye'), 'Bye');
});

test('says everything else I say', function () {
  equal(this.jeff.greet('Yo'), 'Yo');
});
