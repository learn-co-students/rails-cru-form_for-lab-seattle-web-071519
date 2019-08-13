class Artist < ApplicationRecord
    has_many :songs

    def self.find_artist_id_by_name(name)
        Artist.all.each do |artist|
            if artist.name == name
                return artist.id
            end
        end
    end
end
