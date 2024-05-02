class ChangeBoughtToGifts < ActiveRecord::Migration[7.0]
  def change
    change_column :gifts, :bought, :boolean, default: false
  end
end
