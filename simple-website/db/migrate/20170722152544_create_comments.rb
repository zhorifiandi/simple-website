class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :image_id
      t.string :user_email
      t.string :content
      t.timestamps
    end
  end
end
