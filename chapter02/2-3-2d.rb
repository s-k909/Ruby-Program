def triangle(params)
  params[:base] * params[:height] / 2.0
end
area = triangle(height: 3.4, base: 2.3)
puts "三角形の面積:#{area}"

# ハッシュを引数にしたメソッドの呼び出し
# triangle({ height: 3.4, base: 2.3 })

# ハッシュを引数の最後にするときは{}を省略できる
# triangle(height: 3.4, base: 2.3)

# メソッド呼び出しの()を省略した場合
# triangle height: 3.4, base:2.3