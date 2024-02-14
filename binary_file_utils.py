import struct
import sys

def convert_to_binary_file(input_filename, output_filename):
    with open(input_filename, 'r') as fp:
        data = [list(map(int, line.strip().split("\t"))) for line in fp]
    packed_data = b''
    for row in data:
        for element in row:
            packed_data += struct.pack('i', element)
    with open(output_filename, "wb") as file:
        file.write(packed_data)
    print(f"Converted {input_filename} to binary file: {output_filename}")


def convert_to_txt_file(input_filename, output_filename):
    with open(input_filename, 'rb') as fp:
        data = fp.read()
    element_size = struct.calcsize('i')
    num_elements = len(data) // element_size

    num_rows = num_elements // 2
    num_cols = 2
    unpacked_data = []
    offset = 0
    for row in range(num_rows):
        unpacked_row = []
        for element in range(num_cols):
            unpacked_element = struct.unpack_from('i', data, offset)[0]
            unpacked_row.append(unpacked_element)
            offset += 4
        unpacked_row = "\t".join([str(i) for i in unpacked_row])
        unpacked_data.append(unpacked_row)
    unpacked_data = "\n".join(unpacked_data)
    with open(output_filename, "w") as file:
        file.write(unpacked_data)
    print(f"Converted {input_filename} to txt file: {output_filename}")


if __name__ == "__main__":
    # convert_to_binary_file("data_10.txt", "data_10.bin")
    # convert_to_binary_file("hipc_2019.txt", "hipc_2019.bin")
    # convert_to_binary_file("data_7035.txt", "data_7035.bin")
    # convert_to_txt_file("data/data_23874.bin_tc.bin", "data/data_23874_tc.txt")
    # convert_to_txt_file("data/hipc_2019.bin_tc.bin", "data/hipc_2019_tc.txt")
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