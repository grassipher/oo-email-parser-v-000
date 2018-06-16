# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@emails = []
  
  def initialize(emails)
    emails_array = emails.split(/[\s(,\s)]/)
    emails_array.each {|email| @@emails << email}
  end
  
  def self.parse(csv_values)
    csv_array = csv_values.split(/[\s(\s,)]/)
    return csv_array
  end
  
end