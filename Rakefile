desc 'setup symlinks of dotfiles to home directory'
task :setup do
  ['bash_profile', 'bash_aliases'].each do |file|
    sh("ln -fs #{ENV['HOME']}/.dotfiles/#{file} #{ENV['HOME']}/.#{file}")
  end
end
