class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :dob, :datetime
  	add_column :users, :address, :string
  end
end
