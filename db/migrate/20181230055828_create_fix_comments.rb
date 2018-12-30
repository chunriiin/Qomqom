class CreateFixComments < ActiveRecord::Migration[5.2]
  def change
    create_table :fix_comments do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
