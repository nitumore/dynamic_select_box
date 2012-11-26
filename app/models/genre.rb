class Genre < ActiveRecord::Base
    attr_accessible :name

  	has_many :artists
  	has_many :songs, :through => :artists
end
