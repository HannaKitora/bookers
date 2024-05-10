class Book < ApplicationRecord
  validates :title, presence: true  # title属性を必須にするためのバリデーション

end
