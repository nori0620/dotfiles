require 'pp'

DOTFILE_POSTFIX = ".dot";
REPO_ROOT_DIR   =  File.dirname(__FILE__) 
DOTVIM_FTPLUGIN = "#{Dir.home}/.vim/after/ftplugin"

task :default => :install

task :install => [:install_dotfiles, :install_dotvim ];
  
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


directory DOTVIM_FTPLUGIN
task :install_dotvim =>  DOTVIM_FTPLUGIN do 

  SETTING_FILES_DIR = "#{REPO_ROOT_DIR}/dot.vim/after/ftplugin" 
  plugin_files = Dir.new( SETTING_FILES_DIR )
    .select { |file| file.match(/\.vim$/) }
    .each   { |file|
      name = File.basename(file,DOTFILE_POSTFIX)
      _create_symlink(
        :source      => File.expand_path( file ,SETTING_FILES_DIR ),
        :destination => "#{DOTVIM_FTPLUGIN}/#{file}",
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

