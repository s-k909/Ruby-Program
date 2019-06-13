begin
  File.open("some.txt", encoding: "utf-8") do |f|
    print f.gets
  end
rescue => e                                      #例外オブジェクトを調べる場合
  warn "#{e.class} / #{e.message}"
end

# 自分で例外を発生させる場合
# begin
#   raise "ファイルがない！" unless File.exist?("some.txt")
# rescue => e
#   warn e.message
# end