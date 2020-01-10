class UpdateIndexTests < ActiveRecord::Migration[6.0]
  def change
    def up
      remove_index :tests, :name
      add_index :tests, :name
    end
  
    def down
      remove_index :tests, :name
      add_index :tests, :name, unique: true
    end
  end
end
