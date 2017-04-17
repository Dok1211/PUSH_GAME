require 'io/console'

countA = 0
countB = 0
count = 0

require 'time'
def timer(arg, &proc)
  x = case arg
  when Numeric then arg
  when Time    then arg - Time.now
  when String  then Time.parse(arg) - Time.now
  else raise   end

  sleep x if block_given?
  yield
end


while count <=  4


  puts "Ready...\n\n"
  n = rand(10)+1
  #puts n
  n = 1
  sleep(n)

  m = ["PUSH!\n\n","BUSH!\n\n","PSUH!\n\n",]
  m1 = m[rand(3)]
  puts m1
  key = STDIN.getch
# i = 0
# while (key = STDIN.getch) !="\C-c"
#   puts "#{i += 1}:#{key.inspect} キーが押されました"
# end


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
