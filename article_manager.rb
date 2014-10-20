class ArticleManager
  def initialize
    @articles = Array.new
  end
  
  def add_article(art)
    @articles << art
  end
  
  def worst_articles
    @articles.sort {|a,b| a.positive_votes <=> b.positive_votes}
  end
  
  def best_articles
    @articles.sort {|a,b| b.positive_votes <=> a.positive_votes}
  end
  
  def worst_article
    @articles.min_by do |element|
      element.positive_votes
    end
  end
  
  def best_article
    @articles.max_by do |element|
      element.positive_votes
    end
  end
  
  def most_popular_article
    @articles.max_by do |element|
      element.votes
    end
  end
  
  def include?(pattern)
    @articles.select {|elem| elem.include?(pattern)}
  end
  
  def authors
    @articles.select {|elem| elem.Author}.uniq
  end
  
  def number_of_authors
    authors.count
  end
  
  def votes
    @articles.incject {|temp, elem| temp += elem.votes}
  end
  
  def to_s
    art = @articles.sort {|a,b| a.Title <=> b.Title}
    art.each {|elem| puts "- " + elem.Title + "\n"}
    
    return ""
  end
end
