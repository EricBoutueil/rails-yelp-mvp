class Restaurant < ApplicationRecord
    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
    has_many :reviews, dependent: :destroy
    validates :address, presence: true
    validates :name, presence: true
    validates :category, inclusion: { in: CATEGORIES,
    message: "%{value} is not a valid category" }
end


# A restaurant must have at least a name and an address. OK
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"]. OK

# A review must have a parent restaurant.

# When a restaurant is destroyed, all of its reviews should be destroyed as well.
