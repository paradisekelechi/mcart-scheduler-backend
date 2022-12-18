# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :appointment

  validates :name, presence: true
end
