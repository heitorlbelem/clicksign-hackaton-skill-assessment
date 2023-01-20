# frozen_string_literal: true

# Person
class Person
  def initialize(documentation)
    @documentation = documentation
  end

  def validates
    raise 'Not implemented'
  end
end

# Personal CPF
class Personal < Person
  def validates
    puts "Validates CPF #{@documentation}"
  end
end

# Company CNPJ
class Company < Person
  def validates
    puts "Validates CNPJ #{@documentation}"
  end
end

puts Personal.new('CPF_no').validates
puts Company.new('CNPJ_no').validates
