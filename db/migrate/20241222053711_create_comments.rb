class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|

      t.text :text, null: false
      t.references :user
      t.references :prototype
      t.timestamps
    end
  end
end
