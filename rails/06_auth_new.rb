rails new auth_new

class SecretController < ApplicationController
  http_basic_authenticate_with :name => "frodo", :password => "thering"
  def index
  end
end
#wichtig das das password so benannt ist wie unten!
$ rails g model user email:string password_digest:string

#/app/models/user.rb
has_secure_password
validates_presence_of :password, :on => :create

rails g controller users

#/app/views/users/new.html.erb
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
  <div class="field">
    <%= f.label :email %>
    <%= f.text_field :email %>
  </div>
  <div class="field">
    <%= f.label :password %>
    <%= f.password_field :password %>
  </div>
  <div class="field">
    <%= f.label :password_confirmation %>
    <%= f.password_field :password_confirmation %>
  </div>
  <div class="actions"><%= f.submit %></div>
<% end %>


$ rails g controller sessions

#/app/views/sessions/new.html.erb
  def new
  end

def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
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


#/app/controllers/application_controller.rb
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

#/app/models/user.rb
  attr_accessible :email, :password, :password_confirmation