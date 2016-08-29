require 'pry'

# Get the file contents and read into an array of lines
def get_file_data
  File.readlines('config')
end

# Remove any leading whitespace
# Leave this for later
def remove_space
  whitespace = [' ', "\t", "\n"]

  if data[0] && whitespace.include?(data[0])
    data.shift
  end
  if 
    remove_space
  end
end


# Run through the array of lines and retrieve the host blocks, place them into hashes
def compile(data)
  puts 'Compiling file data...'
  client_configs = []
  entry = []
  data.each do |line|
    if line != "\n"
      entry << line
    else
      client_configs << entry
      entry = []
    end
  end
  client_configs
end



data = get_file_data
entries = compile(data)

binding.pry

puts 'Finished'
