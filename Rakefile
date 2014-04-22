DOTFILE_POSTFIX = ".dot";
ROOT_DIR        =  File.dirname(__FILE__) 
  
task :install, [:env] do |t, args|
  dot_files = Dir.new( ROOT_DIR )
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
        if File.exist?( dotfile[:destination] ) then
          File.delete( dotfile[:destination] )
        end
      } 
      .each   { |dotfile|
        system("ln -s #{ dotfile[:source] } #{ dotfile[:destination] }")
      } 
end
