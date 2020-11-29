class Article < ApplicationRecord

    validates :title, presence: true, length: { minimum: 5 }
    # each title will have a title that is at least 5 characters long.
    
end
