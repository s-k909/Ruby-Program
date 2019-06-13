# def メソッド名(引数, 引数, ……)
#   メソッドの内容となるプログラム
# end

# 引数のないメソッド
def hello
  puts "こんにちは。"
  puts "それではまた。"
end

hello                 # 出力


# ローカル変数のスコープ
# num = 123
# def method
#   num = 456
#   puts num
# end

# method        # 456と表示(メソッド内のnum)
# puts num      # 123と表示(メソッド外のnum)