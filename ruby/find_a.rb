# ファイル名を指定
filename = 'textfile.txt'

# ファイルを開いて各行を処理する
File.open(filename, 'r') do |file|
  file.each_line do |line|
    # 'a' を含む5文字の文字列をチェック
    puts line if line.include?('a') && line.chomp.length == 5
  end
end
