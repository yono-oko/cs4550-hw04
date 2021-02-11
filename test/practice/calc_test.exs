defmodule Practice.CalcTest do
  use ExUnit.Case
  import Practice.Calc

  test "additional: tag some tokens" do
    assert tag_tokens(["5", "+", "1"]) == [{:num, 5.0}, {:op, "+"}, {:num, 1.0}]
  end
end
