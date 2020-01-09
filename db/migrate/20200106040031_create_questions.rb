class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.text :description
      t.references :test

      t.timestamps
    end
    
    add_index :questions, :content, unique: true
  end
end
