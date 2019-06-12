colors = ["red", "blue", "yellow", "pink"]
puts colors.empty?                          # empty? メソッドで配列が空かどうかを調べる
colors << "green"                           # <<演算子を使い配列に別の要素を追加する
puts colors.length

result = (if a > 0 then "OK" end)           # aが0以上ならOK、そうでなければnil
puts result