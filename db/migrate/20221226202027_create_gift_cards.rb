class CreateGiftCards < ActiveRecord::Migration[5.0]
  def change
    create_table :gift_cards do |t|

      t.timestamps
    end
  end
end
