

require 'logger'

logger = Logger.new("/tmp/logger2.log", 10, 200)
(1..10).each do
  logger.debug("log me")
end
