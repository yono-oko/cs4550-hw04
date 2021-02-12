defmodule Practice.CalcTest do
  use ExUnit.Case
  import Practice.Calc

  test "additional: parse some floats" do
    assert parse_float("5") == 5
  end

  test "additional: eval some arrays" do
    # assert eval(["5", "+", "1"]) == 6
    assert eval(["5", "+", "1"]) == "plus"
    assert eval(["5", "-", "1"]) == "minus"
    assert eval(["1", "*", "1"]) == "multi"
    assert eval(["1", "/", "1"]) == "division"
  end
end
