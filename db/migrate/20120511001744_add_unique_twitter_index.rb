class AddUniqueTwitterIndex < ActiveRecord::Migration
  def change
    change_table(:registrations) do |t|
      t.index :twitter, uniq: true
    end
  end
end
