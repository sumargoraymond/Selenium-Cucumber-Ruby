# simple_ruby_cucumber_appium
Simple Ruby tests written in BDD style for Appium. Steps are defined in step definitions.

**Description:** Tests written in BDD style. Steps are defined in step definitions.

**Prerequisite:**
1. `gem install selenium-cucumber`
2. run `bundle install`

**How to write tests:**
1. Write step definitions at *custom_steps.rb*
2. Write feature file inside *features* folder (Example can be found in *first.feature*)

**How to run:**
1. Run appium from command line
2. Go to `simple_ruby_cucumber_appium` folder then run this command

`cucumber PLATFORM=android APP_PATH=path_to_apk_file.apk`

Example:

`cucumber PLATFORM=android APP_PATH=kudo.apk`
