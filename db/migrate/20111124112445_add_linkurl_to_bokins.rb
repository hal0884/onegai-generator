class AddLinkurlToBokins < ActiveRecord::Migration
  def change
    add_column :bokins, :linkurl, :string
  end
end
