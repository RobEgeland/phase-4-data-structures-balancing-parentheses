require_relative './stack'

# your code here
def balancing_parentheses(str)
    new_stack = Stack.new
    open_and_not_closed = 0
    closed_and_not_opened = 0

    str.chars.each do |value|
        if value == "("
            open_and_not_closed += 1
        elsif open_and_not_closed > 0
            open_and_not_closed -= 1
        else
            closed_and_not_opened += 1
        end
    end
        
    open_and_not_closed + closed_and_not_opened


end