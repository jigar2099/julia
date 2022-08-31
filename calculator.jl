function calculator()
    println("------- Welcome to the Calculator app written in Julia -------")
    # Print the Calculator app Menu|
    println("==== Menu ====")
    println("1. Addition ➕")
    println("2. Subtraction ➖")
    println("3  Multiplication X")
    println("4. Division ➗")
    println("5. Factorial !")
    println("6. Power operation ^")
    println("7. Find logarithm")
    println("8. Exit the Calculator app ↗️")
    
    while true
        println("-------------------------------")
        println("-------------------------------")
        println("-------------------------------")
        operation = parse(Float64, readline())
        # Convert the string value input to a float
        function facto(n::Int64)
            f = 1
            if n < 0
                print("Factorial does not exist for negative numbers")
            end
             if n == 0
                print("The factorial of 0 is 1")
             end
             if n>0
                for i in 1:n
                    f = f*i
                end
                println("The factorial is: ",f)
            end
        end
        
        # Depending on the user's choice, do the corresponding operation
        
        if operation == 1
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 + num2)")
        elseif operation == 2
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 - num2)")
        elseif operation == 3
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 * num2)")
        elseif operation == 4
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 / num2)")
        elseif operation == 5
            print("Enter the number: ")
            num1 = parse(Int64, readline())
            num2 = facto(num1)
            println("Output: $(num2)")
        elseif operation == 6
            print("Enter the base number: ")
            num1 = parse(Float64, readline())
            print("Enter the power of base: ")
            num2 = parse(Float64, readline())
            num3 = num1^(num2)
            println("Output: $(num3)")
        elseif operation == 7
            print("Enter the number: ")
            num1 = parse(Float64, readline())
            print("Enter the base: ")
            num2 = parse(Float64, readline())
            num3 = log(num2,num1)
            println("Output: $(num3)")
        elseif operation == 8
            println("Exiting calculator")
            break # Stop the while loop if the user decides to exit
        else
            # If the user enters another number, then ask to try again
            println("Invalid input, please try again.")
        end 

    end
end