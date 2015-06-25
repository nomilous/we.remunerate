objective 'we.remunerate',

    description: """

        * Given a node application, scan (COV?) lib (and node_modules where appropriate)
          for lines of code 'Actually! Used!'.

        * Use git to determine the author of each line.

        * Produce as result a list of usernames with lineCount of code.

        * Important! This should include developer line counts for those lines from the 
          submodules used.

        * Important! Only used lines. And not comments.

    """

    (recurse) ->

        recurse ['lib', 'test'], createDir: true

        .then ->
