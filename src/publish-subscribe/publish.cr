require "redis"

redis = Redis.new
puts "Connected to Redis"
redis.publish("mychannel", "mymessage")
puts "Done"
