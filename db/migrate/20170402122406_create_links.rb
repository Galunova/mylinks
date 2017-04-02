class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.text   :url
      t.integer :user_id
      t.boolean :private
      t.timestamps
    end
  end
end
