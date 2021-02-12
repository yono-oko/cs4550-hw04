defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def eval(chars) do
    # x = first item in list + recurse with rest of list
    x = parse_float(hd(chars))
    evalHandler(x, tl(chars))
  end

  def evalHandler(firstNum, loChars) do
    cond do
      hd(loChars) == "+" ->
        "plus"
      hd(loChars) == "-" ->
        "minus"
      hd(loChars) == "*" ->
        "multi"
      hd(loChars) == "/" ->
        "division"
    end
  end

  def eval([]) do

  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    # expr
    # |> String.split(~r/\s+/)
    # |> hd
    # |> parse_float
    # |> :math.sqrt()

    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching

    expr
    |> String.split(~r/\s+/)
    #|> postfix
    #|> prefix
    #|> eval
  end
end
