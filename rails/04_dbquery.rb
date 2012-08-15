client = Client.find(10)

client = Client.first

client = Client.last

client = Client.find([1, 10]) # Or even Client.find(1, 10)

Fruit.all

Fruit.all(:conditions => { :color => 'yellow' })
Fruit.all(:conditions => "name = 'banana' OR name = 'apple'")

# DO NOT do this! NEVER !!!!!
Fruit.first(:conditions => "name = '#{params[:name]}')

# dangerous params[:name] value
'; DROP TABLE fruits;

