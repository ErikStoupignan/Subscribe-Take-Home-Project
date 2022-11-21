# Class to let the aplication works on loop
class App
  attr_accessor :new_item

  # Variable declaration: Create two arrays to store the input data by categories. In one arrangement,
  # all non-taxable items (Books, food, and medical supplies) are kept, and in the other, all taxable items.
  def initialize
    @basic_tax_free = []
    @list = []
    @tax_total = 0
    @total = 0
  end

  # The "run" function is used to ask the user if he wants to continue entering data,
  # see the total or exit the program.
  def run
    puts "\n\nWould you like to add another element? [1]"
    puts 'I would like to see the total? [2]'
    puts 'Exit [x]'
    user = gets.chomp.to_s

    case user
    when '1'
      system('cls')
      system('clear')
      show_the_menu
    when '2'
      calculate_total
      print_bill
    when 'x'
      exit_function
    else
      puts 'Option not recognized, please try again.'
      run
    end
  end

  # The "Show the Menu" function displays the functions available in the terminal with the "Ruby main.rb" command
  def show_the_menu
    puts "\n>> Welcome to my Challenge <<"
    puts '>> I would like to see the total? [y]'
    puts ">> Write x to exit <<\n\n"
    print_list
    puts "\n"
    print 'Please, insert the new item: '
    @new_item = gets.chomp
    puts ''

    if @new_item == 'y'
      calculate_total
      print_bill
      run
    end

    exit_function if @new_item == 'x'

    category
    many_items
    items_value
    run
  end

  # Filter the input data by categories according to the data that we were given in the instruction
  # Book, Food, Medical produts, Imported products & others
  def category
    case @new_item
    when /book/
      puts '> "books" are exempt from basic tax'
      list_free_tax
    when /chocolate/
      puts '> "food" are exempt from basic tax'
      list_free_tax
    when /pills/
      puts '> "Medical" are exempt from basic tax'
      list_free_tax
    when /imported/
      puts '> All imported items have a 5% tax'
    else
      list_imported_tax
    end
  end

  # Save the information of the basic duty-free objects
  def list_free_tax
    @basic_tax_free << {
      quantity: many_items,
      description: save_description,
      price: items_value,
      total: calculate_total
    }
  end

  # Save the information of the rest of the elements that are not tax free
  def list_imported_tax
    @list << {
      quantity: many_items,
      description: save_description,
      price: items_value,
      total: calculate_total
    }
  end

  # Prints the total account of the data entered
  def print_bill
    puts ' >> The Total <<'
    print_list
    puts "Sales Taxes: #{@tax_total}"
    puts "Total: #{@total}"
  end

  # Print all the list with items available
  def print_list
    return if @basic_tax_free.empty? && @list.empty?

    @basic_tax_free.each do |element|
      puts "#{element[:quantity]} #{element[:description]} #{element[:total]}"
    end

    @list.each do |element|
      puts "#{element[:quantity]} #{element[:description]} #{element[:total]}"
    end
  end

  # Calculate the value for each item
  def calculate_total
    pieces = many_items.to_i
    value = items_value.to_f
    pieces * value
  end

  # Clean the description for each item
  def save_description
    change_one = @new_item.gsub(' at ', ': ')
    change_one.sub(/^\d+./, '')
    change_one[2..-6]
  end

  # Take the number of items
  def many_items
    result = @new_item.match(/^\d{1,9}/)
    result.to_s
  end

  # Take the value of items
  def items_value
    result = @new_item.match(/\d{1,9}\.\d{1,9}/)
    result.to_s
  end

  # End the function
  def exit_function
    system('cls')
    system('clear')
    puts "\n\nHave a great day\n\n\n"
    exit
  end
end
