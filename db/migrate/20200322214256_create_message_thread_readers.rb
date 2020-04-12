class CreateMessageThreadReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :message_thread_readers do |t|
      t.references :user, foreign_key: true
      t.references :message_thread, foreign_key: true

      t.timestamps
    end
  end
end
