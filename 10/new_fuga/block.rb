

# people = []
# # %w(Bob Alice).each do |person|
# #     people << person
# # end
# # p  people
# #
#
#
# someone = "Dave"
# people = []
#
# %w(Bob Alice).each do |person;someone|
#     someone = person
# end
#
# p someone



## 3-5-9

# def keywords(hash = {})
#     hash
# end
# p keywords(alice: 'アリス', bob: 'ボブ')
# p keywords alice: 'アリス', bob: 'ボブ'
#
#
# def keywords2(hash = {})
#     defaults = {alice: "アリス", bob: "ボブ"}
#     hash = defaults.merge(hash)
#     hash
# end
# p keywords2(jon: 'ジョン')
# p keywords2(bob: '真のボブ')
#
# def keywords3(hoge: nil, fuga: nil)
#     p hoge
#     p fuga
# end
#
# keywords3(hoge:"hogehoge", fuga: "fugafuga")
# keywords3()
# p keywords3(piyo: "piyo") rescue nil # Argument Error
#
# def keywords_with_options(alice:nil, bob:nil, **others)
#     {alice: alice, bob: bob, others:others}
# end
#
# p keywords_with_options(bob: "ボブゥ")
# p keywords_with_options(charlie: "チャーリー")
# p keywords_with_options(charlie: "チャーリー", alice: 'アリス', bob: 'ボブ')
#
def greet
  puts "hola"
end

greet
puts "hi"

# メソッドの削除
# undef greet, puts
#
# # greet
# puts


alias hola, greet

hola

