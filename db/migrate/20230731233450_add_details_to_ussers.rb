class AddDetailsToUssers < ActiveRecord::Migration[7.0]
  def change
    add_column :ussers, :name, :string
    add_column :ussers, :nickname, :string
  end
end
