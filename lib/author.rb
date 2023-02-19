class Author
    attr_reader :name

    def initialize(name)
        @name = name
    end

    # Returns an array of Article instances the author has written
    def articles
        Article.all.select do |article|
            article.author == self
        end
    end

   
end

