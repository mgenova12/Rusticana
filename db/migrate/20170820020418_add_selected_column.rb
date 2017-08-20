class AddSelectedColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :specials, :selected, :boolean, default: false

  end
end
