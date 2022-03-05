class Datum < ApplicationRecord
  validates :text, presence: true, format: { with: /\A[A-zА-я]/u,
                                             message: "only allows letters" }
  validates :case, presence: true
end
