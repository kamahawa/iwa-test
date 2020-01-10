class UpdateIndexOptions < ActiveRecord::Migration[6.0]
  def up
    # remove index cuz we need to
    remove_index :options, :content

    # redo this index to only index the first 255 chars
    add_index :options, :content
  end

  def down
    # remove index cuz we need to
    remove_index :options, :content

    # use the same settings as when i first added this index
    add_index :options, :content, unique: true
  end
end
