#!/bin/bash

art=(
"****  *****   *** "
"*   *   *    *    "
"*   *   *   *     "
"****    *   *     "
"*   *   *   *     "
"*   *   *    *    "
"****    *     *** "
)

START_DATE=2025-01-05

DATE=$(gdate -d "$START_DATE" +%F)

echo $DATE

WIDTH=${#art[0]}
HEIGHT=${#art[@]}
echo $WIDTH
echo $HEIGHT

echo "checking $DATE < $(gdate +%F)"

while [[ "$DATE" < "$(gdate +%F)" ]]; do
	for ((col = 0; col < $WIDTH; col++)); do
		for ((row = 0; row < $HEIGHT; row++)); do

			# printf '%s' "${art[row]:$col:1}"
			if [[ ${art[row]:$col:1} == '*' ]]; then
				echo $DATE >> "$DATE.txt"
				git add "$DATE.txt"
				GIT_COMMITTER_DATE="$DATE 12:00:00" git commit --date="$DATE 12:00:00" -m "Super Real Commit $DATE"
			else
				echo "NA"
			fi

			DATE=$(gdate -d "$DATE + 1 days" +%F)
		done
	done
done

echo "Ending on $DATE"
