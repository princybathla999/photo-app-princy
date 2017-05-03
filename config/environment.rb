# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    #:port => '465',
    :port => '587',
    :authentication => :plain,
    #:user_name => ENV['SMTP_RELAY_USERNAME'],
    #:user_name => ENV['GMAIL_USERNAME'],
    :user_name => ENV['SENDGRID_USERNAME'],
    #:password => ENV['GMAIL_PASSWORD'],
    #:password => ENV['SMTP_RELAY_PASSWORD'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'yahoo.com',
    #:domain => 'heroku.com',
    :enable_starttls_auto => true
}