# 普通输出
awk -F":" 'BEGIN{printf "%-25s%-25s%-25s%-25s\n","用户名","用户id","用户家目录","用户解释器"}
{printf "%-25s%-25s%-25s%-25s\n",$1,$3,$6,$7}
' pwd.txt 

# 找出pwd里被禁止登录的用户
# awk正则表达式 awk '/正则/{}'
awk -F":" 'BEGIN{printf "%-25s%-25s%-25s%-25s\n","用户名","用户id","用户家目录","用户解释器"}
/.*nologin$/{printf "%-25s%-25s%-25s%-25s\n",$1,$3,$6,$7}
' pwd.txt 