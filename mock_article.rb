class MockArticle < Article

  WORDS_LIST = ["add", "method", "generate", "author", "that", "returns", "random", "name", 
                "containing", "two", "words", "remember", "first", "and", "last", "should", 
                "be", "capitalized"]

  def initialize
    @title = generate_title
    @content = generate_content
    @author = generate_author
    @likes = random_number
    @dislikes = random_number
  end
  
  def random_number
    Random.rand(100)
  end
  
  def generate_author
    WORDS_LIST.sample.capitalize + " " + WORDS_LIST.sample.capitalize
  end
  
  def generate_title
    num = Random.rand(4)
    text = WORDS_LIST.sample.capitalize + " "
    
    for i in 0..num-1
      text += WORDS_LIST.sample + " "
    end
	
    text + WORDS_LIST.sample
  end
  
  def generate_sentence
    num = Random.rand(5) + 5
    text = WORDS_LIST.sample.capitalize + " "
    
    for i in 1..num-1
      text += WORDS_LIST.sample + " "
    end
    
    text + WORDS_LIST.sample + "."
  end
  
  def generate_content
    num = Random.rand(4) + 1
    text = ""
    
    for i in 0..num-1
      text += generate_sentence + " " 
    end
    
    text + generate_sentence 
  end
end