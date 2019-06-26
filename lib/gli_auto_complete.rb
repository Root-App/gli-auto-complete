require "gli"

module GliAutoComplete
  extend GLI::App

  autocomplete_commands false
  arguments :strict
  subcommand_option_handling :normal

  command :parent do |parent_command|
    parent_command.action do
      puts "Running the parent command"
    end

    parent_command.command :child do |child_1|
      child_1.action do
        puts "Running the child command"
      end
    end
  end
end
