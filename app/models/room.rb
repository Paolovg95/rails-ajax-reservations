class Room < ApplicationRecord
  DAYS = ["Segunda","Terca","Quarta","Quinta","Sexta"]

  belongs_to :user
end
