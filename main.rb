puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

while true 
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1〜3の番号を入力して下さい。"
end

case plan_num
when 1
  puts "沖縄旅行ですね。"
  charge = 10000
when 2
  puts "北海道旅行ですね。"
  charge = 20000
when 3
  puts "九州旅行ですね。"
  charge = 15000
end

puts "何名で予約されますか？"

while true 
  print "人数を入力 > "
  member = gets.to_i
  break if member >= 1
  puts "1以上を入力して下さい。"
end

puts "#{member}名ですね。"
total_charges = charge * member
if member >= 5
  puts "5名以上ですので10%割引となります"
  total_charges *= 0.9
end
puts "合計金額は#{total_charges.floor}円になります。"