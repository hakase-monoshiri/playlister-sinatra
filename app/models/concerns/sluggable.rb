module Sluggable
    module InstanceMethods

        def slug
            name = self.name
            name_single_word_array = name.split(" ")
            words = name_single_word_array.map do |word| 
                word.gsub(/[@#$%&*!';()]./, "")
                word.downcase 
            end
            my_slug = words.join("-")
            my_slug
        end

    end

    module ClassMethods

        def find_by_slug(search_slug)
            self.find_by(slug: search_slug)
        end

    end 
    


    
end
