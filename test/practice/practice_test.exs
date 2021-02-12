defmodule Practice.PracticeTest do
  use ExUnit.Case
  import Practice

  test "double some numbers" do
    assert double(4) == 8
    assert double(3.5) == 7.0
    assert double(21) == 42
    assert double(0) == 0
  end

  test "factor some numbers" do
    assert factor(5) == [5]
    assert factor(8) == [2,2,2]
    assert factor(12) == [2,2,3]
    assert factor(226037113) == [3449, 65537]
    assert factor(1575) == [3,3,5,5,7]
  end

  test "evaluate some expressions" do
    assert calc("5") == 5
    assert calc("5 + 1") == 6
    assert calc("5 * 3") == 15
    assert calc("10 / 2") == 5
    assert calc("10 - 2") == 8
    assert calc("5 * 3 + 8") == 23
    assert calc("8 + 5 * 3") == 23
  end


  # TODO: DONE. Add two unit tests for palindrome.

  test "is this a palindrome" do
    assert palindrome?("hello") == false
    assert palindrome?("exe") == true
  end

  test "testing more palindromes" do
    assert palindrome?("racecar") == true
    assert palindrome?("12321") == true
    assert palindrome?("asdfgfdsa asdfgfdsa") == true
    assert palindrome?("?non?") == true
    assert palindrome?("nope") == false
    assert palindrome?("12345") == false
    assert palindrome?("not a palindrome") == false
  end
end
