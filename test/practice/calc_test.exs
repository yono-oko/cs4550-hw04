defmodule Practice.CalcTest do
  use ExUnit.Case
  import Practice.Calc

  test "additional: parse some floats" do
    assert parse_float("5") == 5
  end

  test "additional: eval some arrays" do
    assert eval(["5", "+", "1", "end"]) == 6
    assert eval(["5", "-", "1", "end"]) == 4
    assert eval(["2", "*", "10", "end"]) == 20
    assert eval(["10", "/", "2", "end"]) == 5
  end
end
