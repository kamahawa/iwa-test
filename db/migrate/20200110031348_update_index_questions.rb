class UpdateIndexQuestions < ActiveRecord::Migration[6.0]
  def up
    # remove index cuz we need to
    remove_index :questions, :content

    # redo this index to only index the first 255 chars
    add_index :questions, :content
  end

  def down
    # remove index cuz we need to
    remove_index :questions, :content

    # use the same settings as when i first added this index
    add_index :questions, :content, unique: true
  end
end
