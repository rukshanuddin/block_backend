class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.belongs_to :link, foreign_key: true

      t.timestamps
    end
  end
end