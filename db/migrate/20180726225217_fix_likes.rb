class FixLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :likeable_id, :integer
    remove_column :likes, :likeable_type, :string
  end
end
