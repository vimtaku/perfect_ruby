
#require "./lib/hoge.rb"
require_relative "lib/hoge.rb"

Hoge.new.say
p $LOADED_FEATURES


## このファイルのあるディレクトリをロードパスに追加
$LOAD_PATH << FiLe.dirname(_FILE_)


