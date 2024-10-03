import struct
import sys


def convert_to_binary_file(input_filename, output_filename):
    with open(input_filename, 'r') as fp, open(output_filename, "wb") as file:
        for line in fp:
            row = []
            for part in line.strip().replace("\t", " ").split():
                try:
                    row.append(int(part))
                except ValueError:
                    # Ignore parts that are not integers
                    pass
            row = row[:2]  # Keep only the first two numbers if there are more
            packed_data = struct.pack(f'{len(row)}i', *row)
            file.write(packed_data)
    print(f"Converted {input_filename} to binary file: {output_filename}")


def convert_to_txt_file(input_filename, output_filename):
    element_size = struct.calcsize('i')
    num_cols = 2  # Number of columns (assuming it's always 2)

    with open(input_filename, 'rb') as fp, open(output_filename, "w") as file:
        while True:
            row_data = fp.read(element_size * num_cols)
            if not row_data:
                break
            unpacked_row = struct.unpack(f'{num_cols}i', row_data)
            line = "\t".join(map(str, unpacked_row))
            file.write(line + "\n")
    print(f"Converted {input_filename} to txt file: {output_filename}")


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python3 binary_file_utils.py <conversion_type> <input_file_path> <output_file_path>")
        print("Supported conversion types: txt_to_bin, bin_to_txt")
    else:
        conversion_type = sys.argv[1]
        input_file_path = sys.argv[2]
        output_file_path = sys.argv[3]

        if conversion_type == "txt_to_bin":
            convert_to_binary_file(input_file_path, output_file_path)
        elif conversion_type == "bin_to_txt":
            convert_to_txt_file(input_file_path, output_file_path)
        else:
            print("Invalid conversion type. Supported types: txt_to_bin, bin_to_txt")

    # example usage:
    # python3 binary_file_utils.py txt_to_bin data/data_147892.txt data/data_147892.bin
    # python3 binary_file_utils.py bin_to_txt data/hipc_2019.bin_tc.bin data/hipc_2019_tc.txt
