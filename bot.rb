require 'twitter'

Twitter.configure do |config|
    config.consumer_key         = ''
    config.consumer_secret      = ''
    config.oauth_token          = ''
    config.oauth_token_secret   = ''
end

f=open("post.txt")

tweetList = Array.new
while line=f.gets
    tweetList<<line
end
f.close

Twitter.update(tweetList[rand(tweetList.size)])

