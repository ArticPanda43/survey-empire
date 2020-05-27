class ChangeUniqueness < ActiveRecord::Migration[5.2]
  def change
    remove_index :surveys, :public_bidx
    add_index :surveys, :public_bidx
  end
end
