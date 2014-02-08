

require "fileutils"
require "pathname"

FileUtils.cp_r("fuga", "new_fuga")


FileUtils.cp_r(Dir.glob("../3/*.rb"), "new_fuga")

## こんなんもできる
FileUtils.cp_r(Pathname.glob("*.rb"), "new_fuga")

FileUtils.mkdir_p 'foo/bar/baz'
