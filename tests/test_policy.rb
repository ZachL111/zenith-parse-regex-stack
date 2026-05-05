require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = ZenithParseRegexStack::Signal.new(demand: 75, capacity: 96, latency: 8, risk: 16, weight: 4)
    assert_equal 130, ZenithParseRegexStack.score(signal_case_1)
    assert_equal 'review', ZenithParseRegexStack.classify(signal_case_1)
    signal_case_2 = ZenithParseRegexStack::Signal.new(demand: 94, capacity: 86, latency: 15, risk: 9, weight: 13)
    assert_equal 199, ZenithParseRegexStack.score(signal_case_2)
    assert_equal 'accept', ZenithParseRegexStack.classify(signal_case_2)
    signal_case_3 = ZenithParseRegexStack::Signal.new(demand: 77, capacity: 90, latency: 19, risk: 12, weight: 4)
    assert_equal 108, ZenithParseRegexStack.score(signal_case_3)
    assert_equal 'review', ZenithParseRegexStack.classify(signal_case_3)
  end
end
