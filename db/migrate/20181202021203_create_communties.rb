class CreateCommunties < ActiveRecord::Migration[5.2]
  def change
    create_table :communties do |t|
      t.text :communityname

      t.timestamps
    end
  end
end
