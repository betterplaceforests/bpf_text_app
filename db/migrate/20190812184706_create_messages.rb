class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :body
      t.string :status
      t.references :user
      t.references :message_template

      t.timestamps
    end
  end
end
