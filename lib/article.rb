class Article
    attr_accessor :magazine, :title, :author

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name
    end

    def magazine_name
        self.magazine.name
    end
end