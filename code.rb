$items = [{name: "Snickers", code: "A01", quantity: 10, price: 250},
		{name: "Pepsi", code: "A02", quantity: 5, price: 350},
		{name: "Orange Juice", code: "A03", quantity: 10, price: 400},
		{name: "Bon Aqua", code: "A04", quantity: 7, price: 120},
		{name: "Bounty", code: "A05", quantity: 10, price: 270}]

def store(i)
	input_code = i.split[0]
	input_price = i.split[1].to_i

	product = $items.detect{|a| a[:code] == input_code}

	return "#{product[:name]} закончился" if product[:quantity] == 0

	if input_price == product[:price]
	  product[:quantity] -= 1
	  product[:name]

	elsif input_price < product[:price]
	  "#{product[:name]} Внесите еще #{product[:price] - input_price}"

	else
	  product[:quantity] -= 1
	  "#{product[:name]} ваша сдача #{input_price - product[:price]} "

	end
end

loop do
  puts "Введите код товара и сумму оплаты"
  input = gets.chomp
break if input == 'stop'

  puts store(input)
  
end








	  

	  		  	

	

