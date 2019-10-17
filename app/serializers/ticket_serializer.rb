class TicketSerializer < ActiveModel::Serializer
  attributes :id, :date, :type_of_pc, :model_number, :description
end
