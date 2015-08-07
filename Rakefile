# These tasks will run the test files for each language.
# To run them, you'll need rake installed. Then run:
#   $ rake <language>

task :java do
  # Requires that gradle is installed
  system 'gradle', 'test -b', File.join('java', 'build.gradle')
end

task :javascript do
  code_file = File.join('javascript', 'person.js')
  test_file = File.join('javascript', 'person_test.js')

  # Requires that qunit is installed. To install:
  #   $ npm install -g qunit
  system 'qunit', '-c', code_file, '-t', test_file
end

task :php do
  # Requires that phpunit is installed.
  system 'phpunit', File.join('php', 'PersonTest.py')
end

task :python do
  system 'python', File.join('python', 'person_test.py')
end

task :ruby do
  system 'ruby', File.join('ruby', 'person_test.rb')
end