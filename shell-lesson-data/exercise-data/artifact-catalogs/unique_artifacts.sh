for file in "$@"
do
    echo "Unique artifact types in $file:"
    # Extract and list unique artifact types
    cut -d ',' -f 2 "$file" | sort | uniq
done
