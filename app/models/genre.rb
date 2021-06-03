class Genre < ApplicationRecord
    has_many :poems, dependent: :destroy
end
