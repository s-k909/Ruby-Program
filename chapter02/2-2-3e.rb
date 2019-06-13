# Fileクラスのクラスメソッドopenはブロックを使って呼び出せる
# openメソッドはファイルを開く、ブロックにFileを渡してコードを実行、ファイルを閉じるという処理をする
File.open("output.txt", "w", encoding: "utf-8") do |file|
  # openメソッドの第2引数"w"は書き込み用にファイルを開く、読み込み用であれあば"r"を使うか省略する
  # 第3引数「encoding: "utf-8"」はハッシュでファイルの文字コードを指定
  file.puts "こんにちは"
end