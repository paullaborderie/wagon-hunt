class AddTwitterUrlToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :twitter_url, :string
  end
end
