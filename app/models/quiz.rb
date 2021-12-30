class Quiz < ApplicationRecord
  belongs_to :expression
  belongs_to :option
end
