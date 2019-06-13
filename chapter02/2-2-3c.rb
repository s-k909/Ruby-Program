arr = ["apple", "orange", "grape"]
arr.each do |item|
  # eachメソッドは、ブロックパラメータに配列の要素を入れながら、配列の要素数だけブロックを繰り返す
  print item + ", "
end