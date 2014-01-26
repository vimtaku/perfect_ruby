

t = Thread.fork {
  Thread.stop
  "55"
}

p t.status
p t.stop?
p t.status
p t.status
p t.status
p t.status


