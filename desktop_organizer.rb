require 'fileutils'

EXTENSIONS = ['png', 'txt', 'csv', 'pdf', 'mov', 'sql', 'rb', 'docx', 'jpg', 'jpeg']

DIRECTORY = "/Users/burke/Desktop/"

puts DIRECTORY

EXTENSIONS.each do |ext|
  ext_dir_name = DIRECTORY + ext
  puts ext_dir_name
  puts DIRECTORY + "*." + ext
  Dir.mkdir(DIRECTORY + ext) unless Dir.exists?(ext_dir_name)

  files = Dir.glob(DIRECTORY + "*." + ext)

  files.each do |f|
    puts f
    # dest = ext_dir_name + "/File.basename(f)
    FileUtils.mv(f, ext_dir_name)
  end
end