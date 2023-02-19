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

    # Returns a unique array of Magazine instances for which the author has contributed to
    def magazines
        articles.collect { |article| article.magazine }.uniq
    end

    

   
end

