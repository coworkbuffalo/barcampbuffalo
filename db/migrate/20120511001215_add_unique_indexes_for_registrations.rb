class AddUniqueIndexesForRegistrations < ActiveRecord::Migration
  def change
    change_table(:registrations) do |t|
      t.index :name, uniq: true
      t.index :email, uniq: true
    end
  end
end
