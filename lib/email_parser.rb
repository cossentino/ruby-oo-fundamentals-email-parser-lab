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
    
    def parse
        clean_str = @email_string.tr(",", "")
        email_array = clean_str.split(" ")
        email_array_set = email_array.to_set
        email_array_dup_removed = email_array_set.to_a
        email_array_dup_removed
    end
end

#test_string = "avi@test.com, arel@test.com, avi@test.coo"

#test = EmailAddressParser.new(test_string)
#puts test.parse