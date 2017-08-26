class AddPaperclipToPost < ActiveRecord::Migration[5.0]
  def change
    add_attachment :specials, :image
  end
end
