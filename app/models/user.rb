# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :tickets
  has_many :hardwares
  has_many :examples
end
