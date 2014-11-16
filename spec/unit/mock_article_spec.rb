require_relative "../../mock_article"
require "test/unit"

class Test_mockarticle < Test::Unit::TestCase

  def test_mockarticle
    art = MockArticle.new()
    assert_not_nil(art.title, [message])
    assert_not_nil(art.content, [message])
    assert_not_nil(art.author, [message])
    assert_not_nil(art.likes, [message])
    assert_not_nil(art.dislikes, [message])
  end
end