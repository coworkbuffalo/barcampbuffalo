class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :key
      t.string :email
      t.string :twitter
      t.string :name
      t.string :topic

      t.timestamps
    end
  end
end
