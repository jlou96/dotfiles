
# !/bin/sh

# sed "s/pattern1/pattern2" replaces pattern1 with pattern 2
# ".*id=([0-9]+).*" matches any line containing id=NUMBER
# \1 references the 1st capture group, ([0-9]+), i.e. NUMBER
# in the end, only NUMBER is written to stdout.

# -r enables extended regexp syntax,
# https://www.gnu.org/software/sed/manual/sed.html#ERE-syntax

# xinput list | grep "EVGA TORQ X5L EVGA TORQ X5L Gaming Mouse" | sed -r "s/.*id=([0-9]+).*/\1/" | while read -r line ; do
# 	# $line <- n where "id=n"
# 	echo "Processing $line"
# 	xinput --set-prop $line "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 2
# done

xinput list | grep "Logitech G203 Prodigy Gaming Mouse" | sed -r "s/.*id=([0-9]+).*/\1/" | while read -r line ; do
	# $line <- n where "id=n"
	echo "Processing $line"
	xinput --set-prop $line "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 2
done

