using NUnit.Framework;
using System;

namespace Person
{
	[TestFixture]
	public class PersonTest
	{

		private Person jeff;
		private Person susy;

		[SetUp]
		public void Setup ()
		{
			jeff = new Person ("Jeff");
			susy = new Person ("Susy");
		}

		[Test]
		public void TestName ()
		{
			Assert.AreEqual (jeff.Name, "Jeff");
		}

		[Test]
		public void TestGreetHelloJeff ()
		{
			Assert.AreEqual ("Hi, I'm Jeff", jeff.Greet ("Hello"));
		}

		[Test]
		public void TestGreetHelloSusy ()
		{
			Assert.AreEqual ("Hi, I'm Susy", susy.Greet ("Hello"));
		}

		[Test]
		public void TestGreetGoodbye ()
		{
			Assert.AreEqual ("Bye", jeff.Greet ("Goodbye"));
		}

		[Test]
		public void TestGreetOther ()
		{
			Assert.AreEqual ("Yo", jeff.Greet ("Yo"));
		}
	}
}
