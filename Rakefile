require 'pp'

DOTFILE_POSTFIX = ".dot";
REPO_ROOT_DIR   =  File.dirname(__FILE__) 
DOTVIM_FTPLUGIN = "#{Dir.home}/.vim/after/ftplugin"

task :default => :install

task :install => [:install_dotfiles, :install_dotvim];
  
task :install_dotfiles, [:env] do |t, args|
  dot_files = Dir.new( REPO_ROOT_DIR )
    .select{ |file| file.match(/#{DOTFILE_POSTFIX}$/) }
    .map   { |file|
      name = File.basename(file,DOTFILE_POSTFIX)
        {
          :name        => name,
          :source      => File.expand_path( file ),
          :destination => "#{Dir.home}/.#{name}",
        }
      }
      .each   { |dotfile|
        if File.symlink?( dotfile[:destination] ) then
          File.delete( dotfile[:destination] )
          puts("[delete] #{ dotfile[:destination] }")
        end
      } 
      .each   { |dotfile|
        sh "ln -s #{ dotfile[:source] } #{ dotfile[:destination] }"
      } 
end


directory DOTVIM_FTPLUGIN
task :install_dotvim =>  DOTVIM_FTPLUGIN do 

  SETTING_FILES_DIR = "#{REPO_ROOT_DIR}/dot.vim/after/ftplugin" 
  plugin_files = Dir.new( SETTING_FILES_DIR )
    .select{ |file| file.match(/\.vim$/) }
    .map   { |file| 
      {
        :source      => File.expand_path( file ,SETTING_FILES_DIR ),
        :destination => "#{DOTVIM_FTPLUGIN}/#{file}",
      }
    }
    .each   { |dotfile|
      if File.symlink?( dotfile[:destination] ) then
        File.delete( dotfile[:destination] )
        puts("[delete] #{ dotfile[:destination] }")
      end
    } 
    .each   { |dotfile|
      sh "ln -s #{ dotfile[:source] } #{ dotfile[:destination] }"
    } 
end

