# 配列、ハッシュ、範囲
# fruits = ["apple", "orange", "banana"]
# puts "OK" if fruits.include?("banana")
# include? メソッドは、引数が配列に含まれているときにtrueを返す

# if式でAが1,2,3のどれかの場合という条件を記述するときに利用
# print "合い言葉:"
# word = gets.chomp
# if["apple", "orange", "banana"].include?(word)
#   puts "OK"
# end

# all?メソッドで全ての条件を満たすかどうか、any?メソッドでどれか1つが条件を満たすかどうか
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# puts "OK" if numbers.all? { |item| item > 0 } # 全て0より大きいか
# puts "OK" if numbers.any? { |item| item % 2 == 0 } # 偶数が含まれるか

# 条件を満たす要素を1つ取り出すにはdetectメソッドを使う
# 条件を満たす要素を全て取り出して配列にするにはfind_allメソッドを使う
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# number = numbers.detect { |item| item > 5 }     # 5より大きい数1つ
# numbers2 = numbers.find_all { |item| item > 5 } # 5より大きい数すべて

# mapメソッドは。ブロックの戻り値を集めた新しい配列を作る
fruits = ["apple", "orange", "banana"]
big_fruits = fruits.map { |item| item.upcase}
p big_fruits

# big_fruits = fruits.map(&:upcase) # 上記と同じ結果になる