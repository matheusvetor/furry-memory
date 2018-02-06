if Rails.env.test?
  require 'simplecov'
  SimpleCov.start :rails do
    add_filter '/lib/'
    add_group 'Services', 'app/services'
  end
end
