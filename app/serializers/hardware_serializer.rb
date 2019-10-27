class HardwareSerializer < ActiveModel::Serializer
  attributes :id, :date, :name_of_hardware, :processor_speed, :memory, :serial_number, :user_id
end
