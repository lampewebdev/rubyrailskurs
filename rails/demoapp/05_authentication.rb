rails new authold
rails g controller users new
rails g model user email:string password_hash:string password_salt:string
rake db:migrate
rails dbconsole
rails g controller sessions new

#Gemfile
gem "bcrypt-ruby", :require => "bcrypt"

#models/user.rb
class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end

#users_controller.rb
def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end
#sessions_controller.rb
def new
end

def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end

#application_controller.rb
helper_method :current_user

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
#routes.rb
get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
root :to => "users#new"
resources :users
resources :sessions
#users/new.html.erb
<h1>Sign Up</h1>

<%= form_for @user do |f| %>
  <% if @user.errors.any? %>
    <div class="error_messages">
      <h2>Form is invalid</h2>
      <ul>
        <% for message in @user.errors.full_messages %>
          <li><%= message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>
  <p>
    <%= f.label :email %><br />
    <%= f.text_field :email %>
  </p>
  <p>
    <%= f.label :password %><br />
    <%= f.password_field :password %>
  </p>
  <p>
    <%= f.label :password_confirmation %><br />
    <%= f.password_field :password_confirmation %>
  </p>
  <p class="button"><%= f.submit %></p>
<% end %>


#sessions/new.html.erb
<h1>Log in</h1>

<%= form_tag sessions_path do %>
  <p>
    <%= label_tag :email %><br />
    <%= text_field_tag :email, params[:email] %>
  </p>
  <p>
    <%= label_tag :password %><br />
    <%= password_field_tag :password %>
  </p>
  <p class="button"><%= submit_tag "Log in" %></p>
<% end %>

#layouts/application.html.erb
<div id="user_nav">
  <% if current_user %>
    Logged in as <%= current_user.email %>.
    <%= link_to "Log out", log_out_path %>
  <% else %>
    <%= link_to "Sign up", sign_up_path %> or
    <%= link_to "log in", log_in_path %>
  <% end %>
</div>

<% flash.each do |name, msg| %>
  <%= content_tag :div, msg, :id => "flash_#{name}" %>
<% end %>