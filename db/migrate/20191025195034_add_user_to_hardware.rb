class AddUserToHardware < ActiveRecord::Migration[5.2]
  def change
    add_reference :hardwares, :user, foreign_key: true
  end
end
