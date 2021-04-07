require_relative "./concerns/sluggable.rb"

class Artist < ActiveRecord::Base

    include Sluggable::InstanceMethods
    extend Sluggable::ClassMethods

    has_many :songs

    has_many :genres, through: :songs

end