class AddColumnToCommunity < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :language, :string
  end
end
