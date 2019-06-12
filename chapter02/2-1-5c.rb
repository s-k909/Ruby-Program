a = 2; b = 3; c = 4
puts a + b * c        # 掛け算が優先される
puts (a + b) * c      # 足し算が優先される

a = 2; b = 3
c = a +
b       # cは5
d = a
+ b     # dは2
e = a \
+ b     # eは5

a = "hello"
s2 = s
  .upcase     # 変数s2には"HELLO"が入る