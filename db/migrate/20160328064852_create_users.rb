class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :salary, default: 0, null: false
      t.string :contact

      t.timestamps null: false
    end
  end
end
