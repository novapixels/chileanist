class Quiz < ApplicationRecord
  has_many :expressions
  has_many :options
  has_many :scores
end
