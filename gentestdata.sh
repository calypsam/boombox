#!/bin/bash

# Set the number of rows and columns
ROWS=1000000
COLS=5

# Set the output file name
OUTPUT_FILE="large_random.csv"

# Generate the CSV header
# header=""
# for ((i=1; i<=COLS; i++))
# do
#     header+="Column$i,"
# done
# header=${header%,}  # Remove trailing comma
# echo $header > $OUTPUT_FILE
row=""
for ((j=1; j<=COLS; j++))
do
    # Generate a random number between 0 and 1000
    random_num=$((RANDOM % 1001))
    row+="$random_num,"
done
row=${row%,}  # Remove trailing comma
echo $row > $OUTPUT_FILE

# Generate random data
for ((i=2; i<=ROWS; i++))
do
    row=""
    for ((j=1; j<=COLS; j++))
    do
        # Generate a random number between 0 and 1000
        random_num=$((RANDOM % 1001))
        row+="$random_num,"
    done
    row=${row%,}  # Remove trailing comma
    echo $row >> $OUTPUT_FILE
done

echo "CSV file with $ROWS rows and $COLS columns has been generated: $OUTPUT_FILE"