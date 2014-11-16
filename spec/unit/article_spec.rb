require_relative "../../article"
require "test/unit"

class Test_article < Test::Unit::TestCase

  def test_article
    art = Article.new("Test title", "Test content.", "Test Author")
    assert_equal("Test title", art.title)
    assert_equal("Test content.", art.content)
    assert_equal("Test Author", art.author)
    art.like!()
    assert_equal(1, art.likes)
    art.dislike!()
    assert_equal(1, art.dislikes)
    assert_equal(0, art.positive_votes())
    assert_equal(2, art.votes())
    assert_equal("Test...", art.shortened_to(6))
    assert(art.include?("Test"))
    assert_equal(["Test", "content"], art.words())
    assert_equal(["Test", "content"], art.distinct_words())
  end
end