Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'],
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET'],
  provider :linkedin, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end

OmniAuth.config.on_failure = Proc.new { |env| SessionsController.action(:failure).call(env)}

