class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :message_thread, foreign_key: true

      t.timestamps
    end
  end
end
