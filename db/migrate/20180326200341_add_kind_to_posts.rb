class AddKindToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :kind, :string
  end
end
