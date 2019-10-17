class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :date
      t.string :type_of_pc
      t.string :model_number
      t.text :description

      t.timestamps
    end
  end
end
