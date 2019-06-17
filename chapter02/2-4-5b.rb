# 「module モジュール名 〜 end」でモジュールを定義してその中にメソッドを記述
# モジュールにメソッドをまとめて、その機能をクラスに取り入れクラスを拡張する。
# クラスにモジュールを取り込むことをミックスインという。
# クラスと違う点は継承ができないこと、newでインスタンスを作れないこと。
# モジュールは親クラスになれず、親クラスにもなれないが、クラスにミックスインできる。
# Rubyでは複数の親クラスを持つサブクラスを作れないが、複数のモジュールをクラスに取り込める。
module Rader
  def distance_to(other) # ロボット間の距離を計算して返す
    # distance_toメソッドを利用するには、Raderモジュールを取り込むクラスのオブジェクトが属性xとyを持っている必要がある。
    Math.sqrt((self.x - other.x) ** 2 + (self.y - other.y) ** 2)
  end
end

class Robot
  include Rader # includeにモジュールを指定すると、robo1.distance_to(robo2)のように、Raderのインスタンスメソッドを利用できる。
  attr_accessor :name, :x, :y

  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)
    @x += x; @y += y
  end
end

robo1 = Robot.new("ロボ1号")
robo2 = Robot.new("ロボ2号")
robo2.move(12, 35)
puts "距離は #{robo1.distance_to(robo2)} です。"

# モジュールは名前空間としても使える
# モジュールの中でクラスを定義すれば、「モジュール名::クラス名」でクラスを参照できる。

# module ActiveRecord
#   class Base        # ActiveRecordモジュールの中でBaseクラスを定義
#   end               # ActiveRecord::Baseで参照できる。
# end

# クラスの中でクラスを定義できる。

# class ApplicationController < ActionController::Base
#   class Forbidden < StandardError; end
# end