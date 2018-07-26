class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.belongs_to :user
      t.string :title
      t.text :content
      t.timestamp :date
    end
  end
end
