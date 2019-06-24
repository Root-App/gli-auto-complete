# GliAutoComplete

The purpose of this repo is to make a small test case illustrating a potential issue with GLI's autocomplete on sub commands.

In `lib/gli_auto_complete.rb`, you'll find that `autocomplete_commands` is set to false. This yields the following results:

Running the parent command:
```bash
08:23 $ ./bin/gli_auto_complete parent
Running the parent command
```

Failing to run the parent command due to lack of autocomplete:
```bash
08:23 $ ./bin/gli_auto_complete pare
error: Unknown command 'pare'

NAME
    gli_auto_complete -

SYNOPSIS
    gli_auto_complete [global options] command [command options] [arguments...]

GLOBAL OPTIONS
    --help - Show this message

COMMANDS
    help   - Shows a list of commands or help for one command
    parent -
```

Running the child command:
```bash
08:23 $ ./bin/gli_auto_complete parent child
Running the child command
```

Running the child command without fully specifying the child command's name. (This

```bash
08:24 $ ./bin/gli_auto_complete parent chi
Running the child command
```


We would expect running `parent chi` to fail in a similar manner to running `pare` when auto complete is turned on
