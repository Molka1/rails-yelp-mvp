class Restaurant < ApplicationRecord
    SEPCIALITY = ["chinese", "italian", "japanese", "french", "belgian"]
    has_many :reviews, dependent: :destroy
    validates :name, :address, presence: true
    validates :category, presence: true, inclusion: { in: SEPCIALITY }

end
