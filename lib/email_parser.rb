# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "set"
require "pry"

class EmailAddressParser

    attr_accessor :email_string

    def initialize(email_string)
        @email_string = email_string
    end

    def delimiter
        if @email_string.include?(",")
            @delimiter = ", "
        else
            @delimiter = " "
        end
    end
    
    def parse
        delimiter
        email_array = @email_string.split(@delimiter)
        email_array_set = email_array.to_set
        email_array_dup_removed = email_array_set.to_a
        email_array
    end
end


test = EmailAddressParser.new("john@doe.com, person@somewhere.org")
