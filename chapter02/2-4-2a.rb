# class Robot
#   def move(x, y)        # インスタンスメソッドを作成
#     @x += x; @y += y    # 現在位置を移動するmoveメソッドをRobotクラスに追加
#   end
#
#   def to_s
#     "#{@name}: #{x},#{@y}"  # ロボットの情報を文字列で返すメソッドをRobotクラスに追加
#   end
# end

# class Robot
#   def initialize(name)    # 初期化用のメソッド
#     @name = name          # 引数nameの値を@nameに保存
#     @x = @y = 0           # @xと@yの値を0に設定
#   end
# end

class Robot
  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)
    @x += x; @y += y
  end

  def to_s
    "#{@name}: #{@x},#{@y}"
  end
end

robo1 = Robot.new("ロボ1号")  # ロボットのインスタンス1
robo2 = Robot.new("ロボ2号")  # ロボットのインスタンス2
puts robo1
robo2.move(10, 20)           # moveメソッドで位置を変更
puts robo2