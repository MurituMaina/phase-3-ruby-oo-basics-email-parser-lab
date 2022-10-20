# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# require 'pry'
class EmailAddressParser 
    
        def initialize(emails)
            @emails=emails
        end
        def parse
      
        if(@emails.include?(",") && @emails.include?(" ")) 
        email_list = @emails.split(/[, ]/)
        email_list =email_list.reject {|item| item.nil? || item == ''}.uniq
        p email_list
        return email_list
        elsif (@emails.include?(" "))
        email_list = (@emails.split(/[ ]/))
       email_list= email_list.reject {|item| item.nil? || item == ''}.uniq
        p email_list
        return email_list
        end
    end

    end

# email_addresses = "john@doe.com person@somewhere.org"
# email_addresses1 = "avi@test.com, arel@test.com"
# email_addresses2 = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
# email_addresses3 = "avi@test.com, avi@test.com"
# parser = EmailAddressParser.new(email_addresses)

# parser.parse
# with_space = EmailAddressParser.new(email_addresses1)
# with_space.parse
# without_space = EmailAddressParser.new(email_addresses2)
# without_space.parse
# duplicated =  EmailAddressParser.new(email_addresses3)
# duplicated.parse


# binding.pry