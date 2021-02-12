defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def eval(chars) do
    # x = first item in list + recurse with rest of list
    x = parse_float(hd(chars))
    # arg error from tl of mt list here
    evalHandler(x, tl(chars))
  end

  def evalHandler(firstNum, loChars) do
    cond do
      hd(loChars) == "+" ->
        firstNum + eval(tl(loChars))
      hd(loChars) == "-" ->
        firstNum - eval(tl(loChars))
      hd(loChars) == "*" ->
        tempNum = (firstNum * parse_float(hd(tl(loChars))))
        newArr = tl(tl(loChars))
        evalHandler(tempNum, newArr)
      hd(loChars) == "/" ->
        firstNum / eval(tl(loChars))
      hd(loChars) == "end" ->
        firstNum
    end
  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    arr = String.split(expr, ~r/\s+/) ++ ["end"]
    eval(arr)
  end
end
