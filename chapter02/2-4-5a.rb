# 継承とは、既存のクラス(親クラス)を元に新しいクラス(サブクラス)を作成し、親クラスの機能を取り込む方法
# サブクラスに機能を追加すれば、親クラスとサブクラスの機能の両方が使えるようになる。
# サブクラスを作成するには、クラスを記述するときに「class サブクラス名 < 親クラス名」

# class FlyingRobot < Robot # サブクラス(飛行するロボット) < 親クラス(ロボット)

# class FlyingRobot < Robot
#   def move(x, y, z) # 親クラスの属性x,yを使えるようにしつつzクラスで高さを出す
#     super(x, y)     # superは親クラスの同名メソッドを呼び出すもの
# super(x,y)でRobotクラスのmoveメソッドを呼び出せば、「@x += x; @y += y」を繰り返し書かなくても、xとyの位置を変更できる。
#     @z += z         # moveメソッドの機能を拡張できる。
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

class FlyingRobot < Robot
  def initialize(name) # 上書きと機能追加(initialize)
    super # サブクラスのメソッドの引数が親クラスと同じ時は、superの引数を省略できる。super(name)と同様になる。
    @z = 0
  end

  def move(x, y, z)
    super(x, y)
    @z += z
  end

  def to_s
    super + ",#{@z}" # super = #{@name}: #{@x},#{@y}
  end
end

robo1 = FlyingRobot.new("飛行ロボ1号")
robo1.move(20, 10, 30)
puts robo1