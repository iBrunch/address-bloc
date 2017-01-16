greeting = ARGV[0]
  ARGV.each do |name|
    puts "#{greeting} " + "#{name}"
  end
