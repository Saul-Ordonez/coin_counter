#!/usr/bin/env ruby
class CoinCombo
  attr_reader(:number_input)
  def initialize(number_input)
    @number_input = number_input
  end
  def coin_counter()
    coin_bag = []
    final_answer = ''
    if @number_input == @number_input.to_s
      final_answer = 'Not a number'
    else
      while @number_input > 0
        if @number_input - 100 >= 0
          coin_bag.push("dollar coin")
          @number_input -= 100
        elsif @number_input - 50 >= 0
          coin_bag.push("fifty-cent coin")
          @number_input -= 50
        elsif @number_input - 25 >= 0
          coin_bag.push('quarter')
          @number_input -= 25
        elsif @number_input - 10 >= 0
          coin_bag.push("dime")
          @number_input -= 10
        elsif @number_input - 5 >= 0
          coin_bag.push("nickel")
          @number_input -= 5
        elsif @number_input - 1 >= 0
          coin_bag.push("penny")
          @number_input -= 1
        end
      end
    end
    coin_names = ['dollar coin','fifty-cent coin','quarter','dime','nickel','penny']
    for coin in coin_names do
      coin_count = coin_bag.count(coin)
      if coin_count == 1 && coin_count > 0
        final_answer = final_answer.concat("#{coin_count} #{coin} ")
      elsif coin_count > 1
        final_answer = final_answer.concat("#{coin_count} #{coin}s ")
      end
    end
    final_answer
  end
end
