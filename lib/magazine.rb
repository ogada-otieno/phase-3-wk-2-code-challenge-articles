class Magazine
    attr_accessor :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

    def articles
        Article.all {|article| article.magazine == self}
    end

    def authors
        articles.collect {|article| article.author}.uniq
    end

    # Returns an array of Author instances who have written for this magazine
    def contributors
        Article.all.filter { |article| article.magazine == self }.map { |article| article.author.name }.uniq
    end

    # Given a string of magazine name, this method returns the first magazine object that matches
    def self.find_by_name(name)
        Article.all.find { |magazine| magazine.name == name}
    end
end

