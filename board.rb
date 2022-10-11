class Board
	attr_accessor :board
	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
		@list = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
		@one, @two, @three, @four, @five, @six, @seven, @eight, @nine = @list
		place('1', '1')
	end
	def turn(icon)
		@icon = icon
		pos = '0'
		until @list.include?(pos)
			puts "Choose a number 1-9 for: #{icon}"
			pos = gets.chomp
		end
		@list.delete_at(@list.index(pos.to_s))
		place(icon, pos)
		puts @board
	end
	private
	def place(icon, pos)
		case pos
		when '1'
			@one = icon
		when '2'
			@two = icon
		when '3'
			@three = icon
		when '4'
			@four = icon
		when '5'
			@five = icon
		when '6'
			@six = icon
		when '7'
			@seven = icon
		when '8'
			@eight = icon
		when '9'
			@nine= icon
		end
		@board = """
		.______.______.______
		|     ||     ||     |
		|  #{@one}  ||  #{@two}  ||  #{@three}  |
		|_____||_____||_____|
		.______.______.______
		|     ||     ||     |
		|  #{@four}  ||  #{@five}  ||  #{@six}  |
		|_____||_____||_____|
		.______.______.______
		|     ||     ||     |
		|  #{@seven}  ||  #{@eight}  ||  #{@nine}  |
		|_____||_____||_____|"""
	end
	public
	def check
		value = [@one == @two && @two == @three,
		@one == @four && @four == @seven,
		@one == @five && @five == @nine,
		@two == @five && @five == @eight,
		@three == @six && @six == @nine,
		@three == @five && @five == @seven,
		@four == @five && @five == @six,
		@seven == @eight && @eight == @nine
		].any?
		if value
			puts "Game over! #{@icon} won!"
			return true
		end
		if @list.empty?
			puts "Game over! It's a tie."
			return true
		end
	end
end

