class AnyThing < ActiveRecord::Migration[5.2]
  def change

    add_column :reviews, :phone_number, :string
    add_column :reviews, :ambiance, :string
    add_column :reviews, :cuisine, :string
    add_column :reviews, :price, :numeric 

  end
end
