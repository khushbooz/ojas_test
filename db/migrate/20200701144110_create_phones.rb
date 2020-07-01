class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :number, null: false
      t.boolean :is_occupied, default: false
      t.integer :client_id
      t.timestamps
    end
  end
end
