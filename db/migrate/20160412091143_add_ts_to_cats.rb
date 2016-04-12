class AddTsToCats < ActiveRecord::Migration
  def change
    add_column :cats, :created_at, :datetime, null: false
    add_column :cats, :updated_at, :datetime, null: false
  end
end
