
#### Polaris disk quota manage

Manage disk quota limit of 50GB in Polaris `/home` directory:

```
# Check quota
myquota
# Check large folders
du -h --max-depth=1 | sort -hr
# Delete large folders
rm -rf ./local_join
# Delete the generated bin files
make clean
```

#### Polaris resize terminal window
For long command, terminal may show only the last portion. To fix that use `resize`:
```shell
resize
COLUMNS=185;
LINES=47;
export COLUMNS LINES;
```


#### Data preprocessing SNAP Datasets
- Download and extract gzip file. (e.g.: `soc-LiveJournal1.txt.gz` from https://snap.stanford.edu/data/soc-LiveJournal1.html)
- Check the meta lines where it shows number of edges:
```shell
head soc-LiveJournal1.txt         
# Directed graph (each unordered pair of nodes is saved once): soc-LiveJournal1.txt 
# Directed LiveJournal friednship social network
# Nodes: 4847571 Edges: 68993773
# FromNodeId	ToNodeId
0	1
0	2
0	3
0	4
0	5
0	6
```
- Remove the meta lines by storing lines that does not start with `#`:
```shell
grep -v '^#' soc-LiveJournal1.txt > filtered_soc-LiveJournal1.txt
mv filtered_soc-LiveJournal1.txt soc-LiveJournal1.txt
```
- Create the bin file and check the edges length matches with the `soc-LiveJournal1.txt` file:
```shell
python3 binary_file_utils.py txt_to_bin soc-LiveJournal1.txt soc-LiveJournal1.bin
g++ row_size.cpp -o row
./row soc-LiveJournal1.bin
soc-LiveJournal1.bin: 68993773
```
#### Data preprocessing SuiteSparse Matrix Collection
- Download `Matrix Market` format by going to browser console (site is in HTTPS but data are in HTTP, that is why error is generated).
- Unzip the file. The `mtx` file usually has several meta lines and then 1 line with 3 numbers indicating `ROWS-COLUMNS-NONZEROS`
- Remove the meta lines by storing only lines with 2 numbers assuming the file has 2 numbers per line:
```shell
sed -n '/^[0-9]\+ [0-9]\+$/,$p' com-Orkut.mtx > com-Orkut.txt
```
- If the file has 3 numbers per line, first we write all lines and then deleteTo delete first `n` lines (here its 1):
```shell
sed -n '/^[0-9]\+ [0-9]\+ [0-9]\+$/,$p' stokes.mtx > stokes.txt
sed -i -e '1,1d' stokes.txt
```
- Create the bin file and check the edges length matches with the `soc-LiveJournal1.txt` file:
```shell
python3 binary_file_utils.py txt_to_bin stokes.txt stokes.bin
g++ row_size.cpp -o row
./row stokes.bin
stokes.bin: X
```
- Upload all data files from a local directory to Polaris:
```shell
scp -r . arsho@polaris.alcf.anl.gov:/home/arsho/mnmgJOIN/data/large_datasets
scp ML_Geer.bin arsho@polaris.alcf.anl.gov:/eagle/dist_relational_alg/arsho/mnmgJOIN/data/large_datasets
```
