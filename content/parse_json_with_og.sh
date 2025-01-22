#!/bin/bash

# Input JSON file
input_file="input.json"

# Output directory
output_dir="extracted_entries"
mkdir -p "$output_dir"

# Log file for errors
log_file="$output_dir/og_error_log.txt"
> "$log_file"  # Clear the log file before starting

# Parse the JSON file and create individual markdown files
jq -c 'to_entries[]' "$input_file" | while read -r entry; do
    # Extract ID, title, tags, URL, datetime, and source name
    title=$(echo "$entry" | jq -r '.value.title')
    tags=$(echo "$entry" | jq -r '.value.tags' | sed "s/ /', '/g; s/^/['/; s/$/']/")
    url=$(echo "$entry" | jq -r '.value.url' || echo "")
    date=$(echo "$entry" | jq -r '.value.datetime')
    source=$(echo "$entry" | jq -r '.value.sourcename')

    # Initialize Open Graph metadata
    og_description=""
    og_image=""

    # Replace http: with https: in the URL if present
    url=$(echo "$url" | sed "s|^http:|https:|")

    # Attempt to fetch Open Graph metadata
    if [ -n "$url" ]; then
        # Fetch OG data with browser user-agent
        html=$(curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -s "$url")
        og_description=$(echo "$html" | grep -i '<meta property="og:description"' | sed -n 's/.*content=["'"'"']\(.*\)["'"'"'].*/\1/p')
        og_image=$(echo "$html" | grep -i '<meta property="og:image"' | sed -n 's/.*content=["'"'"']\(.*\)["'"'"'].*/\1/p')
        if [ -z "$og_description" ] && [ -z "$og_image" ]; then
            echo "WARNING: No OG data found for URL: $url" >> "$log_file"
        fi

        # Remove https: prefixes from the URL and Img fields after fetching OG data
        url=$(echo "$url" | sed "s|https:||")
        og_image=$(echo "$og_image" | sed "s|https:||;s|http:||")
    else
        echo "ERROR: Missing URL for entry titled '$title'" >> "$log_file"
    fi

    # Ensure fields are not undefined
    [ -z "$og_description" ] && og_description=""
    [ -z "$og_image" ] && og_image=""

    # Create a sanitized filename from the title
    filename=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:] ' '-' | tr ' ' '-' | sed 's/-$//').md

    # Format the output
    output="---\nTitle: '$title'\nDraft: false\nSummary: '$og_description'\nTags: $tags\nURL: '$url'\nDate: $date\nSource: '$source'\nImg: '$og_image'\n---"

    # Save to a markdown file
    echo -e "$output" > "$output_dir/$filename"
done

echo "Markdown files created in '$output_dir'."
echo "Error log created at '$log_file'."
