class AddFacebookUrlToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :facebook_url, :string
  end
end
