require 'test_helper'

class SprintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without sprint number" do
    sprint = Sprint.new
    assert !sprint.save
  end

  test "should save with sprint number" do
    sprint = Sprint.new(:number => 1)
    assert sprint.save
  end

  test "should not save with before date after end date" do
    sprint = Sprint.new(:number => 1,
                        :begin_on => Date.current,
                        :end_on => Date.current.change(:year => 2001)
                        )
    assert !sprint.save
  end

  test "should save with begin and end dates both same" do
    sprint = Sprint.new(:number => 1,
                        :begin_on => Date.current,
                        :end_on => Date.current
                        )
    assert sprint.save
  end
end
