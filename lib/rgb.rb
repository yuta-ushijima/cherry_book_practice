# def to_hex(r,g,b)
#   '#' + r.to_s(16).rjust(2, '0') + 
#        g.to_s(16).rjust(2, '0')  +
#        b.to_s(16).rjust(2, '0')
# end

# リファクタリング1
def to_hex(r, g, b)
  #最初の繰り返し処理でhexに'#'が入る
  [r, g, b].inject('#') do |hex, n|
    #下記の処理で作成された文字列は次の繰り返し処理のhexに入る
    hex + n.to_s(16).rjust(2, '0')
    #ループが最後まで到達したら、ブロックの戻り値がinjectメソッド自身の戻り値になる
  end
end

# def to_ints(hex)
#   r = hex[1..2]#引数の文字列から1文字目から3文字目までを取り出す
#   g = hex[3..4]#引数の文字列から2文字目から4文字目までを取り出す
#   b = hex[5..6]#引数の文字列から3文字目から5文字目までを取り出す
#   ints = []
#   #3つの16進数を配列に入れ、ループを回しながら10進数の整数に変換した値を別の配列に詰め込こむ
#   [r, g, b].each do |s|   
#     ints << s.hex
#   end
#   ints #10進数の整数が入った配列を返す
# end

# リファクタリング2
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     #　わざわざintsのような変数を用意する必要がなくなる
#     s.hex
#   end
# end

# リファクタリング3
# def to_ints(hex)
#   # 改行せずに多重代入を使って1行にする
#   r,g,b = hex[1..2], hex[3..4], hex[5..6]
#   [r, g, b].map do |s| 
#     s.hex
#   end
# end

# リファクタリング4
# def to_ints(hex)
#   # scanメソッドと正規表現で文字列を一気に3つの16進数に分割
#   r,g,b = hex.scan(/\w\w/)
#   # scanメソッドが配列を返すのを利用して多重代入
#   [r, g, b].map do |s| 
#     s.hex
#   end
# end

# リファクタリング5
# def to_ints(hex)
#   hex.scan(/\w\w/).map do |s|
#     s.hex
#   end
# end

# リファクタリング6
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
   

# 自分のリファクタリング
# def to_ints(hex)
#   r = hex[1..2]#引数の文字列から1文字目から3文字目までを取り出す
#   g = hex[3..4]#引数の文字列から2文字目から4文字目までを取り出す
#   b = hex[5..6]#引数の文字列から3文字目から5文字目までを取り出す
#   ints = []
#   #3つの16進数を配列に入れ、ループを回しながら10進数の整数に変換した値を別の配列に詰め込こむ
#   [r, g, b].map(&:hex)
# end