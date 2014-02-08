

require "syslog"

syslog = Syslog.open("PerfectRubySample");
syslog.debug "deeeeeeeeeeeebug !"
syslog.info "infoo !"
syslog.notice "notice !"
syslog.err "err !"
p syslog.inspect
syslog.close
