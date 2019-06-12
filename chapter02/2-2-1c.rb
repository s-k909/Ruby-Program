# if 条件式1
#  条件式1が正しい場合に実行するプログラム
# elsif 条件式2
#  条件式2が正しい場合に実行するプログラム
# else
#  条件式1も2も正しくないときに実行するプログラム

print "価格を入力してください："
num = gets.to_i
if num >= 1500
  puts "送料無料です。"
elsif 0 < num && num < 1500
  puts "送料300円です。"
else
  puts "入力が間違っています。"
end

# 条件が正しくない時に実行するunless式
# unless num % 2 == 0
#   puts "偶数ではありません。"
# end

# 後置きのunless
# puts "偶数ではありません。" unless num % 2 == 0

# 以下の式の場合、変数numが奇数であっても変数messageが作成される。
# messageの値はnilなので何も表示されないが、エラーにはならない。
# if num % 2 == 0
#   message = "偶数です。"
# end
# puts message