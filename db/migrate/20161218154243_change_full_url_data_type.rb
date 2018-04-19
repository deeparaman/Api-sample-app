##
# Change full_url data_type
class ChangeFullUrlDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :tiny_urls, :full_url, :text
  end
end
