class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title
    end

    create_table :tags_gossips, id: false do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :gossip, optional: true, index: true
    end
  end
end
