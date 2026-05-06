require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = ZenithParseRegexStack::DomainReview.new(signal: 43, slack: 32, drag: 12, confidence: 82)
    assert_equal 164, ZenithParseRegexStack.domain_review_score(item)
    assert_equal "ship", ZenithParseRegexStack.domain_review_lane(item)
  end
end
