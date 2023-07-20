class Topic < ApplicationRecord
    # Validation
    validates :title, {presence: true, length: {maximum: 100}}
end
