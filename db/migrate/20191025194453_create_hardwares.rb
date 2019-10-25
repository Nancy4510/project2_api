class CreateHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :hardwares do |t|
      t.string :date
      t.string :name_of_hardware
      t.string :processor_speed
      t.string :memory
      t.string :serial_number

      t.timestamps
    end
  end
end
