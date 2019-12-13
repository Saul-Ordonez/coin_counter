#!/usr/bin/env ruby
require 'tty-font'
require 'pastel'
require 'rainbow'
require 'io/console'
require ('./lib/coin_combo.rb')

# frontend logic
@font = TTY::Font.new(:doom)
@pastel = Pastel.new

puts Rainbow(@pastel.blue(@font.write("Enter your name:"))).blink
name_input = STDIN.noecho(&:gets).chomp
puts Rainbow(@pastel.blue(@font.write("Enter a number:"))).blink
number_input = STDIN.noecho(&:gets).to_i

coin_combo = CoinCombo.new(number_input)
puts Rainbow(@pastel.red(@font.write(name_input + " has:"))).blink
final_answer = coin_combo.coin_counter()

puts Rainbow(@pastel.red(@font.write(final_answer))).blink
