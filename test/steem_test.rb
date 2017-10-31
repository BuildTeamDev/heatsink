require 'minitest/autorun'
require 'heatsink'

class SteemTest < Minitest::Test
  def test_has_version_number
    refute_nil Heatsink::VERSION
  end
end
