RSpec.configure do |config|
  config.include Warden::Test::Helpers
  config.after :feature do
    Warden.test_reset!
  end
end