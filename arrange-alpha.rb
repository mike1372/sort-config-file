require 'pry'

# Get the file contents and read into an array of lines
def get_file_data
  puts 'Reading file data...'
  File.readlines('config-test')
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
  client_configs << entry
  client_configs
end

# Sort each entry by its first line
def sort(entries)
  puts 'Sorting entries...'
  entries.sort_by! { |entry| entry[0] }
end

# Write the sorted contents back to the file
def put_file_data(sorted)
  puts 'Writing to file...'
  sorted.each do |entry|
    entry.each do |line|
      File.write('./config', 'testing')
    end
    File.write('config', "\n")
  end
end

data = get_file_data
entries = compile(data)
sorted = sort(entries)
put_file_data(sorted)

#binding.pry

puts 'Finished'
