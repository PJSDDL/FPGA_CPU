#程序作用：将汇编代码翻译为机器码

#汇编指令以及对应机器码
OPcode = {
"JMP":           "1000000000000000",\
"JTA":           "0000000000000001",\
"JB":            "1000000000000010",\
"JS":            "1000000000000011",\
"JE":            "1000000000000100",\
"MOVA":          "1000000000000101",\
"IN":            "0000000000001001",\
"MOVAP":         "0000000000001010",\
"PUSHB":         "0000000000001011",\
"POPB":          "0000000000001100",\
"OUT":           "0000000000001101",\
"READA":         "1000000000001110",\
"SAVEA":         "1000000000001111",\
"READFB":        "0000000000010000",\
"SAVETB":        "0000000000010001",\
"PUSHA":         "0000000000010010",\
"POPA":          "0000000000010011",\
"SP":            "0000000000010100",\
"ADD":           "0000000000010101",\
"ADDB":          "0000000000010110",\
"AND":           "0000000000010111",\
"OR":            "0000000000011000",\
"NOT":           "0000000000011001",\
"ADDF":          "0000000000011010",\
"RETI":           "0000000000011011",\
"IEN":           "0000000000011100",\
}

#伪指令
FakeOP = {
"MOVB":          "1",\
"RET":           "0",\
"CALL":          "1",\
"POP":           "0",\
"PUSH":          "0",\
"RL":            "0",\
"READB":         "1",\
"SETBIT":        "0",\
"CLRBIT":        "0",\
}

#十六进制转二进制
BIN2HEX = {
"0": "0000", "1": "0001", "2": "0010", "3": "0011",\
"4": "0100", "5": "0101", "6": "0110", "7": "0111",\
"8": "1000", "9": "1001", "A": "1010", "B": "1011",\
"C": "1100", "D": "1101", "E": "1110", "F": "1111",\
"a": "1010", "b": "1011", "c": "1100", "d": "1101", "e": "1110", "f": "1111",\
}


#标签对应的地址
code_label = {}

#读取汇编代码
with open("ASSEMBLY.txt", "r", encoding = "utf-8") as f:
    rawCode = f.read()

#代码分割
rawCode = rawCode.replace("\t", " ") #替换TAB空格为普通空格
rawCode = rawCode.replace("\n", " NEWLINE ") #替换换行符为 NEWLINE
rawCode = rawCode.replace("\r", " NEWLINE ") #替换换行符为 NEWLINE

rawCode = rawCode.split(" ") #利用空格分割字符串
rawCode = list(filter(None, rawCode)) #去除空字符串

#伪代码替换为汇编代码
num = 0
auto_lable = 0
while (num < len(rawCode)) :
    #遇到伪代码
    if (rawCode[num] in FakeOP) :
        op_str = []
        num_str = ''

        if (rawCode[num] == 'MOVB'):
            #删除原始指令
            rawCode.pop(num)
            num_str = rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHA
            #MOVA   NUM
            #PUSHA
            #POPB
            #POPA
            rawCode.insert(num, 'POPA')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, num_str)
            rawCode.insert(num, 'MOVA')
            rawCode.insert(num, 'PUSHA')

        elif (rawCode[num] == 'RET'):
            #删除原始指令
            rawCode.pop(num)
            
            #对应真正汇编指令为
            #POPA
            #JTA
            rawCode.insert(num, 'JTA')
            rawCode.insert(num, 'POPA')

        elif (rawCode[num] == 'CALL'):
            #删除原始指令
            rawCode.pop(num)
            #删除原指令对应的立即数
            num_str = rawCode.pop(num)
            
            #对应真正汇编指令为
            #MOVA   $RET_auto_lable_num:
            #PUSHA
            #JMP   FUNC:
            #$RET_auto_lable_num:
            rawCode.insert(num, 'RET_auto_lable_' + str(auto_lable) + ':')
            rawCode.insert(num, 'NEWLINE')
            rawCode.insert(num, num_str)
            rawCode.insert(num, 'JMP')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, 'RET_auto_lable_' + str(auto_lable) + ':')
            rawCode.insert(num, 'MOVA')

            auto_lable += 1

        elif (rawCode[num] == 'PUSH'):
            #删除原始指令
            rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHA
            #PUSHB
            rawCode.insert(num, 'PUSHB')
            rawCode.insert(num, 'PUSHA')
            
        elif (rawCode[num] == 'POP'):
            #删除原始指令
            rawCode.pop(num)
            
            #对应真正汇编指令为
            #POPB
            #POPA
            rawCode.insert(num, 'POPA')
            rawCode.insert(num, 'POPB')
            
        elif (rawCode[num] == 'RL'):
            #删除原始指令
            rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHB
            #PUSHA
            #POPB
            #ADD
            #POPB
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'ADD')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, 'PUSHB')
            
        elif (rawCode[num] == 'READB'):
            #删除原始指令
            rawCode.pop(num)
            #删除原指令对应的立即数
            num_str = rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHA
            #READA
            #PUSHA
            #POPB
            #POPA
            rawCode.insert(num, 'POPA')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, 'READA')
            rawCode.insert(num, 'PUSHA')
            
        elif (rawCode[num] == 'SETBIT'):
            #删除原始指令
            rawCode.pop(num)
            #删除原指令对应的立即数
            num_str = rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHA
            #PUSHB
            #PUSHA
            #MOVAP
            #POPB
            #OR
            #OUT
            #POPB
            #POPA
            rawCode.insert(num, 'POPA')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'OUT')
            rawCode.insert(num, 'OR')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'MOVAP')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, 'PUSHB')
            rawCode.insert(num, 'PUSHA')

        elif (rawCode[num] == 'CLRBIT'):
            #删除原始指令
            rawCode.pop(num)
            #删除原指令对应的立即数
            num_str = rawCode.pop(num)
            
            #对应真正汇编指令为
            #PUSHA
            #PUSHB
            #PUSHA
            #MOVAP
            #POPB
            #AND
            #OUT
            #POPB
            #POPA
            rawCode.insert(num, 'POPA')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'OUT')
            rawCode.insert(num, 'AND')
            rawCode.insert(num, 'POPB')
            rawCode.insert(num, 'MOVAP')
            rawCode.insert(num, 'PUSHA')
            rawCode.insert(num, 'PUSHB')
            rawCode.insert(num, 'PUSHA')
            
    num += 1   


#识别代码成分
code_type = []
hex_num = ''

for code_str in rawCode:
    if (code_str in OPcode):  #指令码
        code_type.append("OP")
    elif (code_str[0:2] == "//"):  #注释
        code_type.append("TEXT")
    elif (code_str[0] == '0' or code_str[0] == '1'):  #二进制数
        code_type.append("BNUM")
    elif (code_str[-1] == ':'):  #标签
        code_type.append("LABLE")
    elif (code_str[0] == 'x' or code_str[0] == 'X'):  #十六进制数
        code_type.append("HNUM")
    elif (code_str == "NEWLINE"):
        code_type.append("NEWLINE")
    else :
        print("无法识别的符号", code_str, )
   

#计算标签标号，检测标签重定义
num = 0
lable_add = 1

for code_str in rawCode:
    ignore_line = False
    
    #检测当前代码是否是标签
    if (code_type[num] == 'LABLE'):
        #识别独立成行的标签，计算地址
        if (num == 0 or code_type[num-1] == "NEWLINE"):
            if (code_str in code_label):
                print("警告：标签", code_str, "重定义")
            code_label[code_str] = lable_add - 1
            #独立成行的标签被后续地址计算程序忽略，不增加地址,也不转换为机器码
            code_type[num] = 'LABEL_NOT_NUM'
            
    #计算地址
    if(code_type[num] in ('LABLE', 'OP', "BNUM", "HNUM")):
        lable_add = lable_add + 1 
    
    num = num + 1

#检查代码语法，去掉注释和换行
split_code = []
split_type_code = []
code_str = ""
type_str = ""
line_num = 1
for num in range (0, len(rawCode)):
    code_str = rawCode[num]
    type_str = code_type[num]

    #跳过注释
    if (type_str == "TEXT"):
        continue

    #检查指令与操作数是否匹配
    if (type_str == "OP" and OPcode[code_str][0] == '1'):
        if (num == len(rawCode)-1):   #代码末尾
            print("错误：", code_str, "指令应有操作数")
        elif (not code_type[num+1] in ('LABLE', "BNUM", "HNUM")):
            print("错误：", code_str, "指令应有操作数")
    elif (type_str == "OP" and OPcode[code_str][0] == '0'):
        if (num == len(rawCode)-1):   #代码末尾
            pass
        elif (code_type[num+1] in ('LABLE', "BNUM", "HNUM")):
            print("错误：", code_str, "指令不应有操作数")
            
    #计算行数
    if (type_str == "NEWLINE"):
        line_num = line_num + 1

    #生成去除注释、换行的代码
    if (type_str != "NEWLINE" and type_str != "TEXT"):
        split_code.append(code_str)
        split_type_code.append(type_str)
        
    num = num + 1

print("程序标签对应地址:", code_label)

#print(split_code)

#生成机器码
#十六进制、二进制转标准16位二进制
def FORMAT_NUM(num_type, code_str):
    format_num_str = ''

    if (num_type == "HNUM"):  #十六进制立即数
        if(len(code_str) < 5):
            hex_num = 'X'
            hex_num = hex_num + (5 - len(code_str)) * '0' + code_str[1: ]
        elif (len(code_str) > 5):
            hex_num = "X" + code_str[-4:  ]
        else :
            hex_num = code_str

        format_num_str = format_num_str + BIN2HEX[hex_num[1]]
        format_num_str = format_num_str + BIN2HEX[hex_num[2]]
        format_num_str = format_num_str + BIN2HEX[hex_num[3]]
        format_num_str = format_num_str + BIN2HEX[hex_num[4]]

    elif (num_type == "BNUM"):  #二进制立即数
        if (len(code_str) < 16):
            code_str = (16 - len(code_str)) * '0' + code_str
        elif (len(code_str) > 16):
            code_str = code_str[-16:  ]

        format_num_str = format_num_str + code_str

    return format_num_str


m_code = ""
hex_num = ''
num = 0
ignore_num = False  #伪指令不需要再读取立即数
for code_str in split_code:
    if ignore_num:
        num = num + 1
        ignore_num = False
        continue
    
    if (split_type_code[num] == "OP"):  #指令码
        m_code = m_code + OPcode[code_str] + "\n"
        
    elif (split_type_code[num] in ("HNUM", "BNUM")):  #立即数
        m_code = m_code + FORMAT_NUM(split_type_code[num], code_str) + "\n"

    elif (split_type_code[num] == "LABLE"):
        #看地址是否超过范围
        if (code_label[code_str] >= 4096):
            print("警告：程序过大！")

        #十进制数换算
        hex_num = bin(code_label[code_str])
        hex_num = hex_num[2: ]
        hex_num = (16 - len(hex_num)) * '0' + hex_num
        
        m_code = m_code + hex_num + "\n"
        
    num = num + 1

#生成调试对照用的汇编代码
'''
num = 0
for code_str in split_code:
    if (split_type_code[num] in ("OP", "HNUM", "BNUM")):  #指令码
        print(num, "   ",   code_str)
    elif (split_type_code[num] == "LABLE"):
        print(num, "   ",   code_label[code_str])
        
    num = num + 1
'''

print(m_code)

#写入mem文件
file = open("./CPU4/ram.mem", "w")
file.write(m_code)
file.close()

