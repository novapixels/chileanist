class Quiz < ApplicationRecord
  has_many :expressions
  has_many :scores
end
