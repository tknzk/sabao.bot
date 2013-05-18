require 'twitter'

Twitter.configure do |config|
    config.consumer_key         = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret      = ENV['TWITTER_CONSUMER_SECRET']
    config.oauth_token          = ENV['TWITTER_OAUTH_TOKEN']
    config.oauth_token_secret   = ENV['TWITTER_OAUTH_TOKEN_SECRET']
end

f=open("post.txt")

tweetList = Array.new
while line=f.gets
    tweetList<<line
end
f.close

Twitter.update(tweetList[rand(tweetList.size)])

