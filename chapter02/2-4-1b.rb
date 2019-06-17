s1 = "hello"
s2 = s1             # 左辺に右辺の値を参照させる
puts s1.object_id
puts s2.object_id

s1.upcase!          # 大文字に変更
puts s2


# 被りを防ぐためにdupメソッドでオブジェクトの複製を作る
# s1 = "hello"
# s2 = s1.dup

# s1 = "hello"
# puts s1.class                 # String
# puts s1.kind_of?(String)      # true
# puts s1.kind_of?(Object)      # true
# puts s1.instance_of?(String)  # true
# puts s1.instance_of?(Object)  # false