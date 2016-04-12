class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.string :temperament
      t.date :date_of_birth
    end

  end
end
