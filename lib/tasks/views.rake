namespace :views do
  desc "Converts erb files to haml ones"
  task :erb2haml, :path do |t, args|
    path = "app/views" || args[:path]
    Dir["#{path}/**/*.erb"].each do |source|
      destination = source.gsub(/\.erb$/, '.haml')
      puts "#{source} -> #{destination}"
      `html2haml #{source} #{destination}`
    end
  end


  namespace :remove do
    task :haml, :path do |t, args|
      remove_files(:haml, args[:path])
    end

    task :erb, :path do |t, args|
      remove_files(:erb, args[:path])
    end

    def remove_files(format, path)
      path = "app/views" || args[:path]
      Dir["#{path}/**/*.#{format}"].each do |file|
        puts "Removing #{file}..."
        `rm #{file}`
        puts 'Done'
      end
    end
  end
end
