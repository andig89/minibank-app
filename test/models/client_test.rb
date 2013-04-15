require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "init" do
    c = Client.new
    assert c.invalid?
  end

  test "name length" do
    c = Client.new
    c.valid?
    assert c.errors[:name].any?
    c.name = 'X'
    c.valid?
    assert c.errors[:name].any?
    c.name = 'Ala'
    c.valid?
    assert c.errors[:name].empty?
  end

  test "email format" do
    c = Client.new
    c.valid?
    assert c.errors[:email].any?
    c.email = 'ala'
    c.valid?
    assert c.errors[:email].any?
    c.email = 'ala@wp.pl'
    c.valid?
    assert c.errors[:email].empty?
  end

  test "phone format" do
    c = Client.new
    c.valid?
    assert c.errors[:phone].any?
    c.phone = '734'
    c.valid?
    assert c.errors[:phone].any?
    c.phone = '504-234-334'
    c.valid?
    assert c.errors[:phone].empty?
  end
end
