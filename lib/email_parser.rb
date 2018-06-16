# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@emails = []
  
  def initialize(emails)
    emails_array = emails.split(/[,\s]/)
    emails_array.each do |email| 
      @@emails << email
    end
  end
  
  def parse
    @@emails.each do |email|
      @@emails.delete(email) if email == "" || email == " "
    end
  end
  
end