# 「class クラス名 〜 end」で記述したクラス自体もオブジェクト

class Robot
end

robo1 = Robot.new
robo2 = Robot.new
puts "Robot: #{Robot.object_id}"
puts "robo1: #{robo1.object_id}"
puts "robo2: #{robo2.object_id}"

# 定数Robotは、Robotクラスを表すオブジェクトを指している。
# Classクラスのインスタンス、Classクラスはクラスに関する機能を備えたクラス。
# klass = Robot     # 変数klassはClassオブジェクトを指す
# r = klass.new     # Robot.newと同じ
# r.kind_of?(Robot) # クラスはメソッド引数にもなれる。

# クラス定義の直下にコードを書くと、クラスが読み込まれる時にここも実行されますが表示される。
# Rubyでは、「class ~ end」はクラスの定義というだけでなく、実行されるコードでもある。

# class Robot
#   puts "ここも実行されます。"
# end