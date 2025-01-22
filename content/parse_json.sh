#!/bin/bash

# Input JSON file
input_file="input.json"

# Output directory
output_dir="extracted_entries"
mkdir -p "$output_dir"

# Parse the JSON file and create individual markdown files
jq -c 'to_entries[]' "$input_file" | while read -r entry; do
    # Extract ID, title, tags, URL, datetime, and source name
    title=$(echo "$entry" | jq -r '.value.title')
    tags=$(echo "$entry" | jq -r '.value.tags' | sed "s/ /', '/g; s/^/['/; s/$/']/")
    url=$(echo "$entry" | jq -r '.value.url' | sed "s|https:||;s|http:||")
    date=$(echo "$entry" | jq -r '.value.datetime')
    source=$(echo "$entry" | jq -r '.value.sourcename')

    # Create a sanitized filename from the title
    filename=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:] ' '-' | tr ' ' '-' | sed 's/-$//').md

    # Format the output
    output="---\nTitle: '$title'\nDraft: false\nSummary: ' '\nTags: $tags\nURL: '${url}'\nDate: $date\nSource: '$source'\n---"

    # Save to a markdown file
    echo -e "$output" > "$output_dir/$filename"
done

echo "Markdown files have been created in the '$output_dir' directory."
