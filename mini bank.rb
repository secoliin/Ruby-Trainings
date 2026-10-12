
balance = 1000
transactions = []

loop do
  puts "=== MINI BANKING SYSTEM === \n 1. Check Balance \n 2. Deposit Money \n 3. Withdraw Money \n 4. Exit \n 5. View Transaction History \n\n Choose an option:"
  choice = gets.chomp


    if choice == "1"
        puts "Your balance is: $#{balance}"
    elsif choice == "2"
        puts "Enter deposit amount:"
    begin
    deposit_amount = Integer(gets.chomp)
    rescue ArgumentError
    puts "Invalid input. Please enter a valid integer."
    next
    end
    if deposit_amount > 0
    balance += deposit_amount
        transactions << ["Deposit", deposit_amount]
        puts "After deposit, your balance is: $#{balance}"
    else
        puts "Amount must be greater than zero."
    end
    elsif choice == "3"
        puts "Enter withdrawal amount:"
    begin
    withdrawal_amount = Integer(gets.chomp)
    rescue ArgumentError
    puts "Invalid input. Please enter a valid integer."
    next
    end
    
    if withdrawal_amount > 0 && withdrawal_amount <= balance
    balance -= withdrawal_amount
        transactions << ["Withdrawal", withdrawal_amount]
        puts "After withdrawal, your balance is: $#{balance}"
    else
        puts "Insufficient funds for this withdrawal."
    end
    elsif choice == "4"
        puts "Exiting the system. Goodbye!"
        break
    elsif choice == "5"
        if transactions.empty?
            puts "No transactions have been made yet."
        else
            puts "Transaction History:"
            transactions.each do |transaction|
                type, amount = transaction
                puts "- #{type}: $#{amount}"
            end
        end
        
    else
        puts "Invalid option selected."
    end
end


