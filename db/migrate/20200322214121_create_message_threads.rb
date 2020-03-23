class CreateMessageThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :message_threads do |t|
      t.string :uuid
      t.string :name
      t.boolean :private, default: false

      t.timestamps
    end
  end
end
