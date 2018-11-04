namespace :test do
  task firstnote: :environment do
    puts "hello"
  end
  task lastnote: :environment do
# byebug
    note = Note.first
    puts note.title
  end
  task :all => [:firstnote,:lastnote]
end
