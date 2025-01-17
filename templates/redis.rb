redis_db_0 = Redis.new(
  :url => Rails.application.secrets.redis_url,
  :port => Rails.application.secrets.redis_port,
  :db => Rails.application.secrets.redis_db,
)

$redis_default = Redis::Namespace.new(
  Rails.application.secrets.redis_namespace_default, 
  :redis => redis_db_0
)

# http://www.rubydoc.info/github/redis/redis-rb/Redis/Client
# :url => lambda { ENV["REDIS_URL"] },
# :scheme => "redis",
# :host => "127.0.0.1",
# :port => 6379,
# :path => nil,
# :timeout => 5.0,
# :connect_timeout => 5.0,
# :password => nil,
# :db => 0,
# :driver => nil,
# :id => nil,
# :tcp_keepalive => 0,
# :reconnect_attempts => 1,
# :inherit_socket => false