require 'minitest/autorun'
require_relative 'robot'

class RobotTest < MiniTest::Unit::TestCase
  def test_has_name
    assert_match /\w{2}\d{3}/, Robot.new.name
  end

  def test_name_sticks
    # skip
    robot = Robot.new
    robot.name
    assert_equal robot.name, robot.name
  end

  def test_different_robots_have_different_names
    # skip
    assert Robot.new.name != Robot.new.name
  end

  def test_logs_previous_names
    # skip
    robot = Robot.new
    name1 = robot.name
    robot.reset
    name2 = robot.name
    robot.reset
    name3 = robot.name
    robot.reset
    assert_equal 3, robot.previous_names.length
    assert robot.previous_names.include?(name1)
    assert robot.previous_names.include?(name2)
    assert robot.previous_names.include?(name3)
  end

  def test_does_not_assign_same_name
    # skip
    robot = Robot.new
    1000.times do
      robot.reset
    end
    assert robot.previous_names.uniq.length == robot.previous_names.length
  end

  def test_reset_name
    # skip
    robot = Robot.new
    name = robot.name
    robot.reset
    name2 = robot.name
    assert name != name2
    assert_match /\w{2}\d{3}/, name2
  end
end
