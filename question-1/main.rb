# frozen_string_literal: true

# FileWriter generator
class FileWriter
  TYPES = {
    json: JSONWriter,
    pdf: PDFWriter,
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
    puts "Write XML data #{data}"
  end
end

# JSON
class JSONWriter
  def write(data)
    puts "Write JSON data #{data}"
  end
end

writer = FileWriter.new
writer.write(data, :json)
writer.write(data, :pdf)
writer.write(data, :xml)
