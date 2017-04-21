When(/^Ingresa una letra$/) do
  visit '/', :post, "letra=a"
end

Then(/^Muestre la letra a$/) do
   last_response.body.should =~ /#{"a"}/m
end

