desc "Commit, push to github, deploy to Heroku"
# Usage: rake ship "Commit message."
task :ship do
  message = ARGV.last
  task message.to_sym do ; end
  system "git add -A"
  system "git commit -am '#{message}'"
  system "git pull"
  system "git push"
  puts "Pushed to github."
  system "git push heroku"
  puts "Deployed to Heroku"
end