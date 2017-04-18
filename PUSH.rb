require 'io/console'
require 'timeout'

countA = 0
countB = 0
count = 0


while count <=  4


  puts "Ready...\n\n"
  n = rand(10)+1
  #puts n
  n = 1
  sleep(n)

  m = ["PUSH!\n\n","BUSH!\n\n","PSUH!\n\n",]
  m1 = m[rand(3)]
  puts m1

case m1

when "PUSH!\n\n"
  begin
    Timeout.timeout(3) do # 3秒でタイムアウト
      @key = STDIN.getch                 # 何かの処理
    end

  if @key == "a"
    puts "WINNER PlayerA\n\n"
    countA +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  elsif @key == "l"
    puts "WINNER PlayerB\n\n"
    countB +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  else
    puts "error"
  end

rescue Timeout::Error
  puts 'next'       # タイムアウト発生時の処理
end


when "BUSH!\n\n","PSUH!\n\n"
  begin
    Timeout.timeout(3) do # 3秒でタイムアウト
      @key = STDIN.getch                 # 何かの処理
    end

  if @key == "a"
    puts "PlayerA OTETSUKI!\n\n"
    countB +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  elsif @key == "l"
    puts "PlayerB OTETSUKI!\n\n"
    countA +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  else
    puts "error"
  end
rescue Timeout::Error
  puts 'next'       # タイムアウト発生時の処理
end



end

end
