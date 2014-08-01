require 'pp'

DOTFILE_POSTFIX = ".dot";
REPO_ROOT_DIR   =  File.dirname(__FILE__) 
NeoBundleDir    = "#{Dir.home}/.neobundle"

task :default => :install

task :install => [
  :install_dotfiles,
  :install_dot_vim ,
  :install_vim_profiles, 
  :install_vim_neobundle, 
  :install_dot_zsh
];
  
task :install_dotfiles, [:env] do |t, args|
  dot_files = Dir.new( REPO_ROOT_DIR )
    .select { |file| file.match(/#{DOTFILE_POSTFIX}$/) }
    .each   { |file|
      name = File.basename(file,DOTFILE_POSTFIX)
      _create_symlink(
          :source      => File.expand_path( file ),
          :destination =>  "#{Dir.home}/.#{name}"
      )
    }

end

task :install_dot_vim do 
  source_dir = "#{REPO_ROOT_DIR}/dot.vim" 
  _create_symlink(
    :source      => File.expand_path( source_dir),
    :destination =>  "#{Dir.home}/.vim"
 )
end

task :install_vim_profiles do
  source_dir = "#{REPO_ROOT_DIR}/vim-profiles" 
  _create_symlink(
    :source      => File.expand_path( source_dir),
    :destination => "#{Dir.home}/vim-profiles"
 )
end

task :install_dot_zsh do 
  source_dir = "#{REPO_ROOT_DIR}/dot.zsh" 
  _create_symlink(
    :source      => File.expand_path( source_dir),
    :destination =>  "#{Dir.home}/.zsh"
 )
end

task :install_vim_neobundle do

  unless File.exists?( NeoBundleDir )
    sh %Q{mkdir -p #{NeoBundleDir} }
    sh %Q{git clone git://github.com/Shougo/neobundle.vim.git ~/.neobundle/neobundle.vim}
  end

  sh %Q{vim -u ~/vim-profiles/bundles.vim +NeoBundleInstall +q}
end

def _create_symlink( args )

  if File.symlink?( args[:destination] ) then
    File.delete( args[:destination] )
    puts("[delete] #{ args[:destination] }")
  end

  FileUtils.ln_s(
    args[:source] , args[:destination],
    :verbose => true
  )

end

