class CreateMessageTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :message_templates do |t|
      t.string :body
      t.string :name

      t.timestamps
    end
  end
end
