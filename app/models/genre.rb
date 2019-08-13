class Genre < ApplicationRecord
    has_many :songs

    def self.find_genre_id_by_name(name)
        Genre.all.each do |genre|
            if genre.name == name
                return genre.id
            end
        end
    end

end
