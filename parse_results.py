import re


with open("edit.md") as file:
    lines = file.readlines()
    result = []
    pattern = r"^\| \d"
    for line in lines:
        if re.match(pattern, line):
            result.append(line)

    print("".join(result))