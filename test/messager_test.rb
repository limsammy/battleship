gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/messager'

class MessagerTest < Minitest::Test

  def setup
    @messager = Messager.new($stdin, $stdout)
  end

  def test_it_can_print_intro
    assert_equal"I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\nEnter the squares for the two-unit ship:", @messager.print_intro
  end
end
