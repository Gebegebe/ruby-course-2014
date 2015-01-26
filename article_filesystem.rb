class ArticleFilesystem
  
  ARTICLES_FOLDER = "./articles"
  
  def self.save(article)
	str = article.title.downcase.tr(" ", "_")
    File.open(ARTICLES_FOLDER+"\\"+str+".txt",'w') {|f| f.write(article.author+"|"+article.title+"|"+article.content+"|#{article.likes}|#{article.dislikes}")}
  end

  def self.open(path)
  	line = File.read(path).split("|")
  	c = Article.new(line[0],line[1],line[2])

  	1.upto(line[3].to_i){|f| c.like!}
  	1.upto(line[4].to_i){|f| c.dislike!}

  	return c
  end
end