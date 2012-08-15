#activeRecord
#das M aus MVC
#example
require 'active_record'

ActiveRecord::Schema.define do 
	create_table :albums do |table|
		table.column :title, :string
		table.column :performer, :string
	end
	create_table :tracks do |table|
		table.column :album_id, :integer
		table.column :track_number, :integer
		table.column :title, :string
	end
end

#actioncontroller
#steuert zugrif zwischen model und controller
#example
require 'active_controller'
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create params[:post]
    redirect_to posts_path
  end
end

#actionview
#das V aus MVC
#example in html.erb
#<b>Names of all the people</b>
#<% @people.each do |person| %>
#  Name: <%= person.name  <br/> %>
#<% end %>

#actiondispatch
resources :photos #index, show, new, edit, create, update and destroy
# In routes.rb
match '/login' => 'accounts#login', :as => 'login'
root :to => 'blogs#index'
# With render, redirect_to, tests, etc.
redirect_to login_url