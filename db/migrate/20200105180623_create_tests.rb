class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    add_index :tests, :name, unique: true
  end
end
