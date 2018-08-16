class CreateFooditems < ActiveRecord::Migration
  def change
    create_table :fooditems do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :section

      t.timestamps null: false
    end
  end
end
