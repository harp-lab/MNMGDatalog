import re


def write_parsed_lines(application, lines, start_index, end_index, output_file):
    pattern = r"^\| \d"
    headers = [
        "# Input",
        "# Process",
        "# Iterations",
        "# TC",
        "Total Time",
        "Initialization",
        "(File I/O)",
        "Hashtable",
        "Join",
        "Buffer preparation",
        "Communication",
        "Merge",
        "Finalization",
        "Output"
    ]

    if application.lower() == "sg":
        headers[3] = "# SG"
        headers.insert(-3, "Deduplication")
    header_line = "| " + " | ".join(headers) + " |\n"
    separator_line = "| " + " | ".join(["---"] * len(headers)) + " |\n"
    result = []
    for i in range(start_index, end_index):
        line = lines[i]
        if re.match(pattern, line):
            result.append(line)
    result = "".join(result)
    result = header_line + separator_line + result

    with open(output_file, "w") as file:
        file.writelines(result)
    print(f"Parsed from {start_index} to {end_index} and wrote to {output_file}")


def separate_files(result_file, application="TC"):
    lines = None
    lines_length = None
    with open(result_file) as file:
        lines = file.readlines()
        lines_length = len(lines)
    cam_pass_file = f"drawing/{application.lower()}_cam_two_pass.md"
    cam_sort_file = f"drawing/{application.lower()}_cam_sort.md"
    traditional_pass_file = f"drawing/{application.lower()}_traditional_two_pass.md"
    traditional_sort_file = f"drawing/{application.lower()}_traditional_sort.md"

    traditional_sort_line = "TRADITIONAL MPI - SORTING\n"
    traditional_pass_line = "TRADITIONAL MPI - TWO PASS\n"
    cam_sort_line = "CUDA AWARE MPI - SORTING\n"
    cam_pass_line = "CUDA AWARE MPI - TWO PASS\n"
    traditional_sort_line_index = lines.index(traditional_sort_line)
    traditional_pass_line_index = lines.index(traditional_pass_line)
    cam_sort_line_index = lines.index(cam_sort_line)
    cam_pass_line_index = lines.index(cam_pass_line)
    write_parsed_lines(application, lines, traditional_sort_line_index, traditional_pass_line_index, traditional_sort_file)
    write_parsed_lines(application, lines, traditional_pass_line_index, cam_sort_line_index, traditional_pass_file)
    write_parsed_lines(application, lines, cam_sort_line_index, cam_pass_line_index, cam_sort_file)
    write_parsed_lines(application, lines, cam_pass_line_index, lines_length, cam_pass_file)


if __name__ == "__main__":
    tc_result_file = "semi-merged-results.md"
    separate_files(tc_result_file, application="TC")

    sg_result_file = "sg-merged-results.md"
    separate_files(sg_result_file, application="SG")

