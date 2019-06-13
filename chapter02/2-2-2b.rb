def triangle(base, height)        # メソッド内に引数を設定
  result = base * height / 2.0    # 戻り値の条件設定
  result                          # 戻り値の確定
end

area = triangle(11, 9)
puts "面積は、#{area}です。"

# 簡略化
# def triangle(base, height)
#   base * height / 2.0
# end

# メソッドの途中で戻り値を指定してメソッドから抜ける場合
# def triangle(base, height)
#   return nil if base < 0 || height < 0
# 引数のどちらかが負の値であったら戻り値がnilになる
#   base * height / 2.0
# end

# if message.empty? then puts "空です。" end    #文字列or配列が空かどうか調べる

# line.chomp!         # lineの末尾の改行を取り除く
# line2 line.chomp    # 末尾の改行を取り除いた新しい文字列を返す