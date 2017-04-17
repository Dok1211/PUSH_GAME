require 'io/console'

countA = 0
countB = 0
count = 0


while count <=  4


  puts "Ready...\n\n"
  n = rand(10)+1
  #puts n
  #n = 1
  sleep(n)

  m = ["PUSH!\n\n","BUSH!\n\n","PSUH!\n\n",]
  m1 = m[rand(3)]
  puts m1
  key = STDIN.getch


case m1

when "PUSH!\n\n"

  if key == "a"
    puts "WINNER PlayerA\n\n"
    countA +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  elsif key == "l"
    puts "WINNER PlayerB\n\n"
    countB +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  else
    puts "error"
  end

when "BUSH!\n\n","PSUH!\n\n"
  timer(3) do
    puts "3秒経った"
  end

  if key == "a"
    puts "PlayerA OTETSUKI!\n\n"
    countB +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  elsif key == "l"
    puts "PlayerB OTETSUKI!\n\n"
    countA +=1
    count +=1
    puts "WIN A#{countA} WIN B#{countB}"
  else
    puts "error"
  end



end

end
