When(/^Ingresa una letra$/) do
  visit '/', :post, "letra=a"
end

Then(/^Muestre la letra$/) do
   last_response.body.should =~ /#{"a"}/m
end

Then(/^Muestre coincidencia$/) do
	   last_response.body.should =~ /#{"Hay coincidencia"}/m
end

