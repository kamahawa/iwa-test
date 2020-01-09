class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :content
      t.boolean :is_answer
      t.references :question

      t.timestamps
    end
    add_index :options, :content, unique: true
    add_index :options, :is_answer
  end
end
