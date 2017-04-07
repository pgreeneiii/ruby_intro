class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    my_birthday = Time.parse("May 12th, 1990")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "Phil"
    last = "Greene"

    @first_then_last = first + " " + last
    @last_then_first = last + ", ", first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/third_program.html.erb")
  end
end
