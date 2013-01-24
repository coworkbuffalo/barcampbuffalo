class AddTShirtSizeToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :tshirt_size, :string
  end
end
