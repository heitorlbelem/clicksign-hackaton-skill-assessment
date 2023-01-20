# frozen_string_literal: true

# FileWriter generator
class FileWriter
  TYPES = {
    json: JSONWriter,
    xml: XMLWriter
  }.freeze

  def write(data, type)
    writer = TYPES[type]
    raise 'Incorrect format' unless writer

    writer.new.write(data)
  end
end

# XML
class XMLWriter
  def write(data)
    raise 'Invalid' unless valid_content?(data)

    puts "Write XML data #{data}"
  end

  private

  def valid_content?(data)
    puts "validate XML data #{data}"

    true
  end
end

# JSON
class JSONWriter
  def write(data)
    raise 'Invalid' unless valid_content?(data)

    puts "Write JSON data #{data}"
  end

  private

  def valid_content?(data)
    puts "validate JSON data #{data}"

    true
  end
end

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'CSV'
option = gets

writer = FileWriter.new
writer.write(data, option.downcase.to_sym)
