class AddColumnToCommunities < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :body, :string
  end
end
