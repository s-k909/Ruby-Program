class Robot
  def name                  # 名前の読み出し:戻り値として変数@nameを返す
    @name                   # name = robo1.nameで@nameを取り出せる
  end

  def name=(name)           # 名前の書き込み:代入演算子の代わり
    @name = name
  end
end

robo1 = Robot.new
robo1.name = "ロボ1号"       # name=メソッドが呼ばれ、代入演算子の右辺が引数になる
puts robo1.name             # @nameが"ロボ1号"を指すようになる