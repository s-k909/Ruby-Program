# 条件式
# if a == b
#   puts "aとbは同じ！"
# end

print "数を入力してください："
num = gets.to_i
b = (0 <= num && num < 10)
# 入力された数値が0以上10未満だった場合true,それ以外の場合はfalseを返す
puts b

# &&,||,and,or 優先順位
# a = true; b = true; c = false
a || b && c       # trueになる
a or b and c      # falseになる