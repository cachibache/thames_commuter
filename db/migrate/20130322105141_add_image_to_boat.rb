class AddImageToBoat < ActiveRecord::Migration
  def change
    add_column :boats, :image, :string
  end
end
