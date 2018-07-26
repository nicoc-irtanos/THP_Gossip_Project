class AddLinksToLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :comment, foreign_key:true, optional: true
    add_reference :likes, :gossip, foreign_key: true, optional: true
  end
end
