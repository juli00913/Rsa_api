class CreateDecryptMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :decrypt_messages do |t|
      t.string :message
      t.references :rsa, foreign_key: true

      t.timestamps
    end
  end
end
