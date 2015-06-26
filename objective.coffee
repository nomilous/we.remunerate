objective 'we.remunerate',

    description: 'Remunerate according to effort.'

    details: """

        * Given a node application, scan (COV?) lib (and node_modules where appropriate)
          for lines of code 'Actually! Used!'.

        * Use git (blame?) to determine the author of each line.

        * Produce as result a list of usernames with lineCount of code.

        * This should include developer line counts for those lines from the submodules 
          used. Walk their package.json repo property. If they dont have one add 
          lineCount to 'unknown'.

        ### Problems / Challenges

        * Sometimes it is necessary to write very liney. Should the following be seen 
          as three lines?

          ```javascript
          if (unfortunatelyLongVariable.values[0] == another.un[0].fortunately
             && unfortunatelyLongVariable.values[1] == another.un[1].b.fortunate
             && this.huh) {...
          ```

        * Good developers write few lines. Um not sure how to deal with that?

    """

    (recurse) ->

        recurse ['lib', 'test'], createDir: true

        .then ->
