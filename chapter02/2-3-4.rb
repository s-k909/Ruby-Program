# 日時オブジェクトを日付オブジェクトに変換する
# Time.current.to_date

# t = Time.current
# puts t.month # 月を表示
# puts t.year  # 年を表示
# puts t.day   # 日を表示
# puts t.wday  # 曜日を表示

# t = Time.current
# puts t.hour # 時を表示
# puts t.min  # 分を表示
# puts t.sec  # 秒を表示

# Time.zone.local(2018, 4, 21, 20, 12, 25)

# yesterdayメソッドは24時間前、tomorrowメソッドは24時間後を返す
# last_weekメソッドは１週間前の同時刻、next_weekメソッドは1週間後の同時刻を返す。
# week,month,yearで置き換えると上記と同様の結果で月前後、年前後となる
# Time.current.next_month.tomorrow # 今から1ヶ月後の24時間後

# beginning_of_dayメソッドはその日の初めを返す。
# week,month,yearで置き換えれば週の初め月の初め年の初めになる。
# Time.current.tomorrow.beginning_of_day # 明日の午前0時

# advanceメソッドに「days: 日数」を指定すると、その日数だけ日時を進める。
# マイナスも指定可、置き換えて週月年を表示もできる
# Time.current.advance(days: 3).beginning_of_day

# 日付および日時を好きな形式の文字列に変換したい時はstrftimeメソッドを使う。
# 引数の文字列に「%文字」を埋め込む
require "active_support/all"

time = Time.current
puts time.strftime("%Y/%m/%d %H:%M") # 年/月/日 時:分