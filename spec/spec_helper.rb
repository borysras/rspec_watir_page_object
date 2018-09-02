require 'page-object'

Dir["#{File.dirname(__FILE__)}/pages/*_page.rb"].each { |file| require file }

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
  end

  config.after do
    @browser.close
  end
end
