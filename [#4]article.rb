class Article
  
  
  def initialize(title, content, author)
    @title = title
	@content = content
	@author = author
	@created_at = Time.now
	@likes = 0
    @dislikes = 0
  end
   
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
      return @content	
	end
    return @content[0..limit-3] + "..."
  end
  
  def include?(elem)
    @content.include?(elem)
  end
  
  def words
    @content.split(/\W+/)
  end
  
  def distinct_words
    return words.uniq
  end
end