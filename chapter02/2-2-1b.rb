# if 条件式
#   条件式が正しい場合に実行するプログラム
# end

print "整数を入力してください："
num = gets.to_i
if num % 2 == 0
  puts "偶数です。"
end

# 1行で書く時
# if num % 2 == 0 then puts "偶数です。" end

# if 条件式を後ろに置く場合
# puts "偶数です。" if num % 2 == 0