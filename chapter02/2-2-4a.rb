# begin
#   例外が発生する可能性のあるプログラム
# rescue
#   例外の発生後に処理するプログラム
# else
#   例外が発生しなかった場合のプログラム
# end

# def メソッド名(引数)
#   例外が発生する可能性のあるプログラム
# rescue
#   例外の発生後に実行するプログラム
# else
#   例外が発生しなかった場合のプログラム
# end

begin
  file.open("some.txt", encoding: "utf-8") do |f|
    print f.gets
  end
rescue
  warn "エラー発生！"
end