class AddGenresToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :genre, :string
  end
end
