class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    my_birthday = Time.parse("July 11th, 1990")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "Charity"
    last = "Jackson"

    @first_then_last = first + " " + last
    @last_then_first = last + ", ", first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.
    the_number = rand(3)

    win = "Paper"
    tie = "Rock"

    if the_number == 0
      result = "Rock"
      @your_output = result
   elsif the_number == 1
      result = "Paper"
      @your_output = result
   else
      result = "Scissors"
      @your_output = result
   end

   if result == win
      @result = "Congratulations! You won!"
   elsif result == tie
      @result = "Not bad. It's a tie."
   else
      @result = "Sorry, but you're a loser..."
   end


    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.
    our_numbers = [4, 10, 6]
    squared_numbers = []

    our_numbers.each do |num|
      square = num*num
      squared_numbers.push(square)
   end

    @your_output = squared_numbers.sum

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    multiple_numbers = []

    numbers.each do |num|

      if num % 3 == 0
         multiple = num
      elsif num % 5 == 0
         multiple = num
      else
         multiple = 0
      end
      multiple_numbers.push(multiple)

    end

    # Your code goes below.

    @your_output = multiple_numbers.sum

    render("programs/third_program.html.erb")
  end
end
