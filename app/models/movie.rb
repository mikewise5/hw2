class Movie < ApplicationRecord
    has_many :roles
    has_many :people
end
