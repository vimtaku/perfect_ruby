

require "logger"

logger = Logger.new("/tmp/perfect_ruby.log")
hash = {
  :moge => "mogemoge"
}

logger.info "info level log."
logger.debug "debug level log."
logger.debug hash

logger.close
