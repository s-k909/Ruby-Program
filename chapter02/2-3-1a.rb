# respond_to?メソッドにシンボルを渡すと、そのオブジェクトがメソッドを持っているか調べられる。
# obj.find(1) if obj.respond_to?(:find)

# link_to "会員一覧", :members

# link_to "Home", root_path, class: "menu"
# link_toの第3引数にハッシュでオプションを渡す

# シンボルは文字列を整数で表したもの
# シンボルはRubyの内部では文字列→一意の整数の変換が行われ、整数値として管理される
# シンボルは、1つの文字列が1つのオブジェクトに1対1で対応する
# シンボルの内容は変更できない。