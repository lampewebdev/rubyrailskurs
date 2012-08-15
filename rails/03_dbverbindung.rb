class Customer < ActiveRecord::Base
end
 
class Order < ActiveRecord::Base
end

#we want to do something like that
@order = Order.create(:order_date => Time.now, :customer_id => @customer.id)
#or
@orders = Order.where(:customer_id => @customer.id)
@orders.each do |order|
  order.destroy
end
@customer.destroy

#has_many, belongs_to
class Customer < ActiveRecord::Base
  has_many :orders, :dependent => :destroy
end
 
class Order < ActiveRecord::Base
  belongs_to :customer
end

@order = @customer.orders.create(:order_date => Time.now)

@customer.destroy