desc "Says hello."
task :hello do
  puts "Hello!"
end

desc "Default task: says hello."
task default: :build

desc "Packages the project into a tarball."
task :build do
  FileUtils.mkdir "dist" unless File.exists? "dist"
  timestamp = Time.now.strftime "%Y%m%d%H%M%S"
  name = "dist/myapp-#{timestamp}.tar.gz"
  sh "tar -cvzf #{name} . --exclude .git --exclude dist"
end
