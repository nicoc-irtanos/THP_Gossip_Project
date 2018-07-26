class LinkTagsAndGossips < ActiveRecord::Migration[5.2]
  def change
    add_reference :tags, :gossip, foreign_key:true, optional: true
  end
end
