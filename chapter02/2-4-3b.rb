# オブジェクト内のデータにアクセスするにはメソッドを書かなければならない
# 読み出しや書き込み用のメソッドのことをアクセサメソッドと呼ぶ
# アクセサメソッドでやりとりできるデータを属性と呼ぶ
# 属性は変数ではなく、インスタンス変数とメソッドの組み合わせである。
# attr_reader :name # 読み出し用メソッド自動追加
# attr_writer :name # 書き込み用メソッド自動追加

# class Robot
#   attr_reader :name
#   attr_writer :name
#   attr_reader :name
# end

# 読み書き両方のメソッドを作る時
# attr_accessor を使う。
# メソッドを複数使いたい時 attr_accessor :x, :y のように複数並べる

# Robotクラスに読み出し専用の属性nameと読み書きできる属性scoreを設定したもの
class Robot
  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @x = @y = 0
    @score = 10
  end
end

robo1 = Robot.new("ロボ1号")
robo2 = Robot.new("ロボ2号")
robo2.score = 90 # スコアを変更
puts robo1.name, robo1.score
puts robo2.name, robo2.score

# def_change_name(new_name)
#   old_name = name       # nameメソッドの呼び出し
#   name = new_name       # 注意！ nameはローカル変数になる
#   self.name = new_name  # 正しいname=メソッドの呼び出し
# end