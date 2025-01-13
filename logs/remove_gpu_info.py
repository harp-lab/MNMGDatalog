# Define input and output file paths
file_path = 'merged_small.output'

# Read the file and filter lines
with open(file_path, 'r') as file:
    lines = file.readlines()

# Write back only the lines that don't start with "RANK="
with open(file_path, 'w') as file:
    for line in lines:
        if not line.startswith('RANK='):
            file.write(line)

print("Lines starting with 'RANK=' have been removed.")
