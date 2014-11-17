require_relative "../../article"
require "test/unit"

class Test_article < Test::Unit::TestCase

  def setup
    @art = Article.new("Test title", "Test content.", "Test Author")
  end
  
  def test_initialize
    assert_equal("Test title", @art.title)
    assert_equal("Test content.", @art.content)
    assert_equal("Test Author", @art.author)
  end
  
  def test_likes
    @art.like!()
    assert_equal(1, @art.likes)
  end
  
  def test_dislikes
    @art.dislike!()
    assert_equal(1, @art.dislikes)
  end
  
  def test_positive_votes
    assert_equal(0, @art.positive_votes())
  end
  
  def test_votes
    assert_equal(2, @art.votes())
  end
  
  def test_shortened_to
    assert_equal("Test...", @art.shortened_to(6))
    assert(@art.include?("Test"))
  end	
  
  def test_words
    assert_equal(["Test", "content"], @art.words())
    assert_equal(["Test", "content"], @art.distinct_words())
  end
end