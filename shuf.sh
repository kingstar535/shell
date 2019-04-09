

# shuf -i 0-10 -n 3 
在1-10中随机选取3个输出到终端
# shuf -i 0-10 -n 3
9
3
1

# shuf -i 0-10 -n 3 -o out.txt
在1-10中随机选取3个输出到文件out.txt
root@cecgw:/home/cecgw# shuf -i 0-10 -n 3 -o out.txt
root@cecgw:/home/cecgw# cat out.txt 
10
6
5

# shuf train.txt -o test.txt -n 30
从train.txt文件中随机读取30行文本输出到test.txt


-i 指定范围low-high
-n 输出几行
-o 输出到文件

# shuf input_file.txt -o  output_file.txt
