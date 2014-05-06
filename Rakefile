require 'pp'

DOTFILE_POSTFIX = ".dot";
REPO_ROOT_DIR   =  File.dirname(__FILE__) 

task :default => :install

task :install => [:install_dotfiles, :install_dot_vim ,:install_dot_zsh];
  
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


DOT_VIM_FTPLUGIN = "#{Dir.home}/.vim/after/ftplugin"
directory DOT_VIM_FTPLUGIN
task :install_dot_vim =>  DOT_VIM_FTPLUGIN do 

  source_dir = "#{REPO_ROOT_DIR}/dot.vim/after/ftplugin" 
  plugin_files = Dir.new( source_dir )
    .select { |file| file.match(/\.vim$/) }
    .each   { |file|
      name = File.basename(file,DOTFILE_POSTFIX)
      _create_symlink(
        :source      => File.expand_path( file , source_dir),
        :destination => "#{DOT_VIM_FTPLUGIN}/#{file}",
      )
    }

end

DOT_ZSH_COMPLETION = "#{Dir.home}/.zsh/completion"
directory DOT_ZSH_COMPLETION
task :install_dot_zsh =>  DOT_ZSH_COMPLETION do 

  SETTING_FILES_DIR = "#{REPO_ROOT_DIR}/dot.zsh/completion" 
  plugin_files = Dir.new( SETTING_FILES_DIR )
    .select { |file| file.match(/sh$/) }
    .each   { |file|
      name = File.basename(file,DOTFILE_POSTFIX)
      _create_symlink(
        :source      => File.expand_path( file ,SETTING_FILES_DIR ),
        :destination => "#{DOT_ZSH_COMPLETION}/#{file}",
      )
    }

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

