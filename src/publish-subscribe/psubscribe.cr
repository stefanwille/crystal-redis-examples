require "redis"

redis = Redis.new
redis.psubscribe("mychan*") do |on|
  on.pmessage do |channel_pattern, channel, message|
    puts "Received #{message} from #{channel} while listening to #{channel_pattern}"
  end
end
