# クラス自体に特定の機能を持たせるにはクラスメソッドを作成する
# クラスメソッドは「クラス名.メソッド名」のように呼び出せる。
# クラスメソッドを定義するには「def self.メソッド名〜end」と記述します。
# loadメソッドはカンマ区切りテキストを読み込んで、Robotオブジェクトの配列を返す
# selfはRobotクラスを指すので、16行目のnewはRobot.newと同じになる

class Robot
  def initialize(name, x, y)
    @name = name
    @x = x; @y = y
  end

  def to_s
    "#{@name}: (#{@x}, #{@y})"
  end

  def self.load(fname)
    robots = []
      File.open(fname, encoding: "utf-8") do |f|
        f.each_line do |line|
          cols = line.chomp.split(",")
          robots << new(cols[0], cols[1].to_i, cols[2].to_i)
        end
      end
    robots
  end
end

robots = Robot.load("robots.txt")
robots.each { |r| puts r }

# クラスメソッドは次のようにも記述できる
# class Robot
#   class << self
#     def load(fname)
#       クラスメソッドの内容... # クラスメソッドは複数置ける
#     end
#   end
# end