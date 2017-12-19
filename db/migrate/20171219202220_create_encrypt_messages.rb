class CreateEncryptMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :encrypt_messages do |t|
      t.string :message
      t.references :rsa, foreign_key: true

      t.timestamps
    end
  end
end
