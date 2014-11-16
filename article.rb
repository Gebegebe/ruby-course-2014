class Article
  
  def initialize(title, content, author)
    @title, @content, @author = title, content, author
    @created_at = Time.now
    @likes = @dislikes = 0
  end
  attr_reader :author
  attr_reader :content
  attr_reader :title
  attr_reader :likes
  attr_reader :dislikes
   
  def like!
    @likes += 1
  end
  
  def dislike!
    @dislikes += 1
  end
  
  def positive_votes
    @likes - @dislikes
  end
  
  def votes
    @likes + @dislikes
  end
  
  def shortened_to(limit)
    if limit > @content.length
      @content	
    end
    @content[0..limit-3] + "..."
  end
  
  def include?(elem)
    @content.include?(elem)
  end
  
  def words
    @content.split(/\W+/)
  end
  
  def distinct_words
    words.uniq
  end
end
