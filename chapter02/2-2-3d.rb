# 配列の要素とともに要素の番号も扱いたいときは、each_with_indexメソッドを使用する
arr = ["apple", "orange", "grape"]
arr.each_with_index do |item, i|    # 要素、番号
  print "#{i}.#{item}"
  print ", " if i < arr.length - 1
end