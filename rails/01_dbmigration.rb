#Anatomy
class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
 
  def down
    drop_table :products
  end
end

#methoden 
#add_column
#add_index
#change_column
#change_table
#create_table
#drop_table
#remove_column
#remove_index
#rename_column

#typen
#:binary
#:boolean
#:date
#:datetime
#:decimal
#:float
#:integer
#:primary_key
#:string
#:text
#:time
#:timestamp

$ rails generate model Product name:string description:text

#will create
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
 
      t.timestamps
    end
  end
end

#example of change
change_table :products do |t|
  t.remove :description, :name
  t.string :part_number
  t.index :part_number
  t.rename :upccode, :upc_code
end

$ rake db:rollback
$ rake db:rollback STEP=3
$ rake db:reset 