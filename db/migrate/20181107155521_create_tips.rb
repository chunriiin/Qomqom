class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.references :user, foreign_key: true
      t.string :msg
      t.integer :pts

      t.timestamps
    end
  end
end
