When(/^Ingresa una letra$/) do
  visit '/', :post, "field_name=value"
end

Then(/^Muestre la letra"(.*)"$/) do |text|
   last_response.body.should =~ /#{text}/m
end

