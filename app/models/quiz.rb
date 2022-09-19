class Quiz < ApplicationRecord
  has_one :score
  has_many :expressions
end
