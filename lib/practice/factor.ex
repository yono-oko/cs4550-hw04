defmodule Practice.Factor do
  def factor(num) do
    # divide num by first prime (2) until there is a remainder
    # then divide by next prime until all that is left are primes
    loPrimes = Factor.NPrimes.get_primes(num)
    loFactors = []
    factor_handler(num, loPrimes, loFactors)
  end

  def factor_handler(num, loPrimes, loFactors) do
    prime = hd(loPrimes)
    cond do
      num == prime ->
        loFactors ++ [num]
      Integer.mod(num, prime) == 0 ->
        # no remainder, divide by prime and add to list of factors
        newNum = trunc(num / prime)
        factor_handler(newNum, loPrimes, loFactors ++ [hd(loPrimes)])
      Integer.mod(num, prime) != 0 ->
        # remainder, move to next prime and try again
        factor_handler(num, tl(loPrimes), loFactors)
    end
  end
end

# the below module borrowed from GitHub user: aditya7iyengar
# and can be located at:
# https://gist.github.com/aditya7iyengar/2487b9ed7f70ed39aa4afec86c730665
# "Given an input, this program returns a list of all prime numbers
#  less than (or, apparently, equal to) the input."
defmodule Factor.NPrimes do
  def get_primes(n) when n < 2, do: []
  def get_primes(n), do: Enum.filter(2..n, &is_prime?(&1))

  defp is_prime?(n) when n in [2, 3], do: true
  defp is_prime?(x) do
    start_lim = div(x, 2)
    Enum.reduce(2..start_lim, {true, start_lim}, fn(fac, {is_prime, upper_limit}) ->
      cond do
        !is_prime -> {false, fac}
        fac > upper_limit -> {is_prime, upper_limit}
        true ->
          is_prime = rem(x, fac) != 0
          upper_limit = if is_prime, do: div(x, fac + 1), else: fac
          {is_prime , upper_limit}
      end
    end) |> elem(0)
  end
end
