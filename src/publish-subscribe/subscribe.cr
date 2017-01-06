require "redis"

redis = Redis.new
redis.subscribe("mychannel") do |on|
  on.message do |channel, message|
    redis.ping
  end
end
