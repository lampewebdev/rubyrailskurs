$ rails c # rails console

>> p = Person.new(:name => "John Doe")
=> #<Person id: nil, name: "John Doe", created_at: nil, :updated_at: nil>
>> p.new_record?
=> true
>> p.save
=> true
>> p.new_record?
=> false

#on create name must be set
class Person < ActiveRecord::Base
  validates :name, :presence => true
end

$ rails c
Person.create(:name => "John Doe").valid? # => true
Person.create(:name => nil).valid? # => false

#der user muss etwas akzeptieren
class Person < ActiveRecord::Base
  validates :terms_of_service, :acceptance => true
end

class Person < ActiveRecord::Base
  validates :terms_of_service, :acceptance => { :accept => 'yes' }
end

#abhaengigkeiten auch kontrollieren
class Library < ActiveRecord::Base
  has_many :books
  validates_associated :books
end
#Don’t use validates_associated on both ends of your associations. They would call each other in an infinite loop. !!!!!!!!!!!!!!!!!!!!

#confirmation
class Person < ActiveRecord::Base
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
end

#exclusion
class Account < ActiveRecord::Base
  validates :subdomain, :exclusion => { :in => %w(www us ca jp),
    :message => "Subdomain %{value} is reserved." }
end

#format
class Product < ActiveRecord::Base
  validates :legacy_code, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed" }
end

#inclusion
class Coffee < ActiveRecord::Base
  validates :size, :inclusion => { :in => %w(small medium large),
    :message => "%{value} is not a valid size" }
end

#length
lass Person < ActiveRecord::Base
  validates :name, :length => { :minimum => 2 }
  validates :bio, :length => { :maximum => 500 }
  validates :password, :length => { :in => 6..20 }
  validates :registration_number, :length => { :is => 6 }
end
#validates
class LineItem < ActiveRecord::Base
  belongs_to :order
  validates :order_id, :presence => true
end

#uniq
class Account < ActiveRecord::Base
  validates :email, :uniqueness => true
end

class Holiday < ActiveRecord::Base
  validates :name, :uniqueness => { :scope => :year,
    :message => "should happen once per year" }
end

#noch mehr hier http://guides.rubyonrails.org/active_record_validations_callbacks.html