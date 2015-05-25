task default: [:run_examples, :compile_pub_sub] do
end

task :run_examples do
  puts 'Running all examples...'
  Dir.glob('src/*.cr').each do |f|
    puts "#{f}:"
    system "crystal run #{f}"
    puts
  end
end

task :compile_pub_sub do
  puts 'Compile pub sub examples...'
  system "mkdir -p build"
  Dir.glob('src/publish-subscribe/*.cr').each do |f|
    puts "#{f}:"
    system "crystal build #{f}"
    puts
  end
end