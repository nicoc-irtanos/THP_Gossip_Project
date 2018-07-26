class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.timestamp :date
      t.integer :recipient_id
      t.integer :sender_id
    end
  end
end
