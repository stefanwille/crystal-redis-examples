task default: :run_examples do
end

desc 'Runs all examples, for qa'
task :run_examples do
  puts 'Running all examples...'
  Dir.glob('src/*.cr').each do |f|
    puts "#{f}:"
    system "crystal run #{f}"
    puts
  end
end

