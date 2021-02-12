defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    # Maybe delegate this too.
    [1,2,x]
  end

  # TODO: DONE. Add a palindrome? function.

  # code for this function inspired by Nat's lecture.
  def palindrome?(str) do
    rstr = to_string(Enum.reverse(String.to_charlist(str)))
    rstr == str
  end
end
