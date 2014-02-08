num = 1
p `head -#{num} ~/.vimrc`

system("uname")
p $?

# exec 'uname'
# p "never execute this line"

# pid = spawn("sleep 5")
# Process.waitpid pid

ENV["HOGE"] = "hogehoge"
system("echo $HOGE")

p :hoge => "piyo"

system( {"HOGE" => "piyo"}, 'echo $HOGE')

pid=spawn({'HOGE'=>'piyo'}, 'echo $HOGE')

# p pid
# Process.waitpid

#exec({'HOGE' => 'moge'}, 'echo $HOGE') 

p "moooooooooooooooooooooo"
system("echo `pwd`",  chdir: '/tmp')

