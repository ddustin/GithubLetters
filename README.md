# Github Letters draws letters onto your green squares

Use the included script `letters.sh` to draw the letters shown at the top of the file (defaults to BTC). These letters will be repeated on your green squares from `START_DATE` to the current date. If the current date doesn't line up with the end of the letters, green squares will be written into the future to complete the cycle.

`START_DATE` must be set to a Sunday for the squares to line up correctly.

The script will add files to this repo and commit them with the commit message "Super Real Commit" followed by the date it is being committed on.

To use, simply fork this repo, clone it to your local computer, run letters.sh, and push back to github.

To get darker squares, simply run this script multiple times. Since Github uses number of commits for the shade of green, each new run will make them darker.

Dependencies: `gdate`. On Mac run `brew install coreutils`

On Linux you can probably use `date`. Go through letters.sh and replace `gdate` with `date`
