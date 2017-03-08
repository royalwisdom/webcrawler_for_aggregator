    def search_terms
        search_hash = get_updated_search_hash
        possible_additions = Hash.new
        headline = headline.strip_tags
        headline_split = headline.split(" ")

        headline_split.each do |word|
            if possible_additions.include?(word)
                possible_additions[addition] += 1
            else
                possible_additions[addition] = 1
            end
        end
        
        threshold = 10
        
        possible_additions.each do |addition|
            if possible_addition[addition] > threshold
                search_hash[addition] = search_hash.length + 1
            end
        end
    end
