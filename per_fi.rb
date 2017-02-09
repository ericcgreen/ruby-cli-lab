require "pry"

class Enter_Transaction
  attr_accessor :payee, :input, :date, :category
    @@all = []

    def initialize
      puts "Enter a payee."
        @payee = gets.chomp
      puts "Enter an amount."
        @input = gets.chomp
      puts "Enter the date."
        @date = gets.chomp
      puts "Enter your category."
        @category = gets.chomp
      @@all << self
      end
  end

  class Menu
    def self.display
      while 1
        puts "Choose one of the following:"
        puts "1 - New Transaction"
        puts "2 - Transaction History"
        puts "3 - Current Balance"
        input = gets.chomp
        if ["1","2","3"].include? input
          self.select input
          break
        else
          puts "Invalid option."
        end
      end
    end
    def self.select number
      puts "You selected #{number}"
    end
  end

  Menu.display












binding.pry
