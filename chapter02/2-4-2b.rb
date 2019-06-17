# メソッドの呼び出し制限
# public = メソッドはどこからでも呼び出せる
# protected = 同じクラスやサブクラスないのメソッド内だけで呼び出せる　レシーバ対応
# private = 同じクラスやサブクラスないのメソッド内だけで呼び出せる　レシーバ非対応
# レシーバ = robo1

class Robot
  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)        # パブリックメソッド
    @x += x; @y += y
    crash if @x < 0 || @y < 0   # ロボットの現在位置が負の数になるとcrashメソッドを呼び出す
  end

  private def crash     # プライベートメソッド
    puts "ドカン！"
  end
end

robo1 = Robot.new("ロボ1号")
robo1.move(200, -100)   # エラーは発生しない
robo1.crash             # エラーが発生する

# プライベートメソッドを前の行に置く書き方もある
# private
# def crash
#   puts "ドカン！"
# end