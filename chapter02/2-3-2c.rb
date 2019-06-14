# ハッシュの要素を順に取り出すには、eachメソッドを使う
# キーと値の2つがeachメソッドのブロックパラメータに入る

books = {}
File.open("books.txt", encording: "utf-8") do |f|
  f.each_line do |line|
    cols = line.chomp.split(",")
    books[cols[0]] = cols[1]
  end
end

books.each do |key, val|
  puts "#{key}、 #{val}円"
end

# each_lineはFileクラスのメソッド。ファイルの内容を1行づつ読み込んで文字列を返す。
# splitメソッドはStringクラスのメソッド。文字列を区切り文字で分割して配列を返す。