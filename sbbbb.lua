

--[[


别乱改否则脚本直接
电脑误用
直接使用无毒无害         
可以二改
]]--
QQ=gg.alert([[
————📢辅助公告📢————       

🇨🇳辅助作者：九岁        

🍦脚本作者：晓得

🍧辅助合伙人：怜悯风华

 🌀郑重感谢以上两位🌀 
 
 🌐更新时间2021 10 29🌐
 
  🐶二改神晓得出品🐶

语录：
🌸每年桃花开的时候我都会想起一个人她🌸
🌸她还欠我钱🌸

⭐官方⭐

  ]],'开启辅助','','作者qq在上面自己抄 ')
if QQ == 3 then gg.copyText("晓得真帅") gg.toast("购买密码再加🙃︎") end


   local password ="875"--自义定密码
 local prompt = gg.prompt({"联系作者购买"},hil,{"number"}) or {":1346"}--密码1-120可以填
if prompt[1] ~= password then--判断 
while(true) do
gg.alert("❌不知道就去加入二改吧❌") 
os.exit()
end
 end
t=1
for i = 5,100,5 do
jd=math.random(i,i+4)
if i==100 then jd=i end
    gg.toast('正在加载... %'..jd..'\n'..('💥️️'):rep(t)..('🌪️️'):rep(20-t))
    t=t+1
    gg.sleep(100)--设置间隔
end

    
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"晓得真帅","神","🗾",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({   
[1] = sjbq..'🇨🇳🔥特 效  功 能～风华🇨🇳',

[2] = sjbq..'🇨🇳🔥风华 北  功 能～风华🇨🇳',

[3] = sjbq..'🇨🇳🔥房 主  功 能～风华🇨🇳',

[4] = sjbq..'🇨🇳🔥炸 图  功 能～风华🇨🇳',

[5] = sjbq..'🇨🇳🔥特 殊  功 能～风华🇨🇳',

[6] = sjbq..'🇨🇳🔥其 他  功 能～风华🇨🇳',

[7] = sjbq..'🇨🇳🔥龙 哥  脚 本～风华🇨🇳',

[8] = sjbq..'🏔️退 出 神 界~俢仙🏔 '},
nil,'🆔作者是晓得🆔')
if SY == 1 then B() end
if SY == 2 then A() end
if SY == 3 then C() end
if SY == 4 then F() end
if SY == 5 then D() end
if SY == 6 then G() end
if SY == 7 then H() end
if SY == 8 then Exit() end
XGCK=-8
end

function B()
SY1 = gg.choice({
'🇨🇳🔥自 定 特 效～风华🇨🇳',
'🇨🇳🔥月 亮 特 效～风华🇨🇳',
'🇨🇳🔥碧 琪 特 效～风华🇨🇳',
'🇨🇳🔥边 形 特 效～风华🇨🇳',
'🇨🇳🔥彩 虹 特 效～风华🇨🇳',
'🇨🇳🔥藍 色 特 效～风华🇨🇳',
'🇨🇳🔥金 色 特 效～风华🇨🇳',
'🇨🇳🔥莲 花 特 效～风华🇨🇳',
'🇨🇳🔥返 回 神 界~俢仙 🇨🇳'},
nil,'💫就好像是隔绝世界~俢仙的梦,醒来我早已经失去你的踪影💫')
if SY1 == 1 then b1() end
if SY1 == 2 then b2() end
if SY1 == 3 then b3() end
if SY1 == 4 then b4() end
if SY1 == 5 then b5() end
if SY1 == 6 then b6() end
if SY1 == 7 then b7() end
if SY1 == 8 then b8() end
if SY1 == 9 then Main() end

GLWW=-1
end

function b1()
V=gg.prompt({"『请输入特效代码』12月亮-13碧琪-14六边形-15彩虹-16蓝色心形-17金色特效-18蓮花特效-19月亮公主"},{'12'},{"number"})[1]
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=V,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b2()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=12,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b3()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b4()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=14,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b5()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=15,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b6()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=16,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b7()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=17,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function b8()
qmnb={
{["memory"]=4},
{["name"]="动作特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=18,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function Exit()
print("")
os.exit()
end


function A()
SY1 = gg.choice({
'🇨🇳🔥联机改皮肤～风华🇨🇳',
'🇨🇳🔥飞行速度『5倍』～风华🇨🇳',
'🇨🇳🔥联机改名『重新入冻结』～风华🇨🇳',
'🇨🇳🔥全局创造～风华🇨🇳',
'🇨🇳🔥仙人掌改炸药～风华🇨🇳',
'🇨🇳🔥解除权限～风华🇨🇳',
'🇨🇳🔥能量剑改地形编辑器～风华🇨🇳',
'🇨🇳🔥免手机打字～风华🇨🇳',
'🇨🇳🔥锁高度～风华🇨🇳',
'🇨🇳🔥远攻击～风华🇨🇳',
'🇨🇳🔥秒拿东西～风华🇨🇳',
'🇨🇳🔥子弹穿紫荧光石～风华🇨🇳',
'🇨🇳🔥狙击枪连发～风华🇨🇳',
'🇨🇳🔥三角透视～风华🇨🇳',
'🇨🇳🔥手撸基石～风华🇨🇳',
'🇨🇳🔥修改队伍～风华🇨🇳',
'🇨🇳🔥 摇 头 丸～风华🇨🇳',
'🇨🇳🔥解除禁用～风华🇨🇳',
'🇨🇳🔥全图透视～风华🇨🇳',
'🇨🇳🔥人物技能～风华🇨🇳',
'🇨🇳🔥修改宠物～风华🇨🇳',
'🇨🇳🔥上帝视角～风华🇨🇳',
'🇨🇳🔥修改粉丝～风华🇨🇳',
'🇨🇳🔥盗迷你ID(小白不会别用)～风华🇨🇳',
'🇨🇳🔥禁用飞爪～风华🇨🇳',
'🇨🇳🔥声音优化～风华🇨🇳',
'🇨🇳🔥修改密码～风华🇨🇳',
'🇨🇳🔥仙人掌改图腾～风华🇨🇳',
'🇨🇳🔥家园道具～风华🇨🇳',
'🇨🇳🔥家园道具2～风华🇨🇳',
'🇨🇳🔥无限技能(剑)～风华🇨🇳',
'🇨🇳🔥伪房主～风华🇨🇳',
'🇨🇳🔥无限跳～风华🇨🇳',
'🇨🇳🔥篮球模式～风华🇨🇳',
'🇨🇳🔥狙击区域～风华🇨🇳',
'🇨🇳🔥修改坐标～风华🇨🇳',
'🇨🇳🔥足球模式～风华🇨🇳',
'🇨🇳🔥 0秒复活～风华🇨🇳',
'🇨🇳🔥观战模式～风华🇨🇳',
'🇨🇳🔥近战秒杀～风华🇨🇳',
'🇨🇳🔥远程秒杀～风华🇨🇳',
'🇨🇳🔥摔死玩家～风华🇨🇳',
'🇨🇳🔥烧死玩家～风华🇨🇳',
'🇨🇳🔥防黑名单～风华🇨🇳',
'🇨🇳🔥经验掉落～风华🇨🇳',
'🇨🇳🔥改危险文字～风华🇨🇳',
'🇨🇳🔥添加物品～风华🇨🇳',
'🇨🇳🔥获取炸弹1～风华🇨🇳',
'🇨🇳🔥获取炸弹2～风华🇨🇳',
'🇨🇳🔥改地图名～风华🇨🇳',
'🇨🇳🔥刷怪箱刷坐骑～风华🇨🇳',
'🇨🇳🔥取消身份证 ～风华🇨🇳',
'🇨🇳🔥踢动物～风华🇨🇳',
'🇨🇳🔥联机背包添加开发者～风华🇨🇳',
'🇨🇳🔥联机添加特殊武器 ～风华🇨🇳',
'🇨🇳🔥返 回 神 界~俢仙🇨🇳'},
nil,'我提起一腔孤勇向你飞来，想说出我刻在心上名字')
if SY1 == 1 then a1() end
if SY1 == 2 then a2() end
if SY1 == 3 then a3() end
if SY1 == 4 then a4() end
if SY1 == 5 then a5() end
if SY1 == 6 then a6() end
if SY1 == 7 then a7() end
if SY1 == 8 then a8() end
if SY1 == 9 then a9() end
if SY1 == 10 then a10() end
if SY1 == 11 then a11() end
if SY1 == 12 then a12() end
if SY1 == 13 then a13() end
if SY1 == 14 then a14() end
if SY1 == 15 then a15() end
if SY1 == 16 then a16() end
if SY1 == 17 then a17() end
if SY1 == 18 then a18() end
if SY1 == 19 then a19() end
if SY1 == 20 then a20() end
if SY1 == 21 then a21() end
if SY1 == 22 then a22() end
if SY1 == 23 then a23() end
if SY1 == 24 then a24() end
if SY1 == 25 then a25() end
if SY1 == 26 then a26() end
if SY1 == 27 then a27() end
if SY1 == 28 then a28() end
if SY1 == 29 then a29() end
if SY1 == 30 then a30() end
if SY1 == 31 then a31() end
if SY1 == 32 then a32() end
if SY1 == 33 then a33() end
if SY1 == 34 then a34() end
if SY1 == 35 then a35() end
if SY1 == 36 then a36() end
if SY1 == 37 then a37() end
if SY1 == 38 then a38() end
if SY1 == 39 then a39() end
if SY1 == 40 then a40() end
if SY1 == 41 then a41() end
if SY1 == 42 then a42() end
if SY1 == 43 then a43() end
if SY1 == 44 then a44() end
if SY1 == 45 then a45() end
if SY1 == 46 then a46() end
if SY1 == 47 then a47() end
if SY1 == 48 then a48() end
if SY1 == 49 then a49() end
if SY1 == 50 then a50() end
if SY1 == 51 then a51() end
if SY1 == 52 then a52() end
if SY1 == 53 then a53() end
if SY1 == 54 then a54() end
if SY1 == 55 then a55() end
if SY1 == 56 then Main() end

GLWW=-1
end

function a1()
mnsj={}
mnsj.qq=gg.prompt({"输入迷你号领取皮肤","输入皮肤号1胖达2齐天小圣3兔美美4迷斯拉5琉璃奖6乔治7墨家小飞8安妮9德古拉10叮叮当11荒野猎人12羽姬13慕容啸天14乔一 15篮球队长 16啦啦队长 17露西 18黑帽子船长 19甜心玛丽 20锦衣卫 21花小楼 22莉莉丝 23月无双 24叶小龙 25二狼神 26鱼小乐 27迷俊俊 28幻音 29幻0式 30柳仙儿 31帕普奇 32米娜 33雪人 34嘟嘟啵啵 35啵啵 36嘟嘟 37梦歌 38斩浪 39天使 40暗灵 50乔克 51小艾 52秦天柱 53威震天 54慕斯 55金悠悠 56喜团团 57林千树 58大黄蜂 59花幽幽 60星灵 61雪球球 62爱丽丝 63龟太郎 64红蜘蛛 65热破 66惊破天 67劳尔 68铃音 69清弦 70紫悦 71宇宙公主 72柔柔女孩 73月亮公主 74钢索 75飞镖 76嚎叫 77达奇 78塔琳娜 79森林隐者 80兔子拉比 81碧琪 82卡洛尔 83余小环 84章小丸 85熊小吉 86星光熠熠 87云宝 88音韵公主 89初慕 90冲云霄 96大无畏 91 利爪 92富余人物2/ 93富余人物3/ 94富余人物4/ 95副余人物5/ 91富余人物6/ 97富余人物7/ 98富余人物8/ 99富余人物9/ 100富余人物10/ 101富余人物11/ 102圣婴 103牛魔王 104灵瑶 105小红帽 106迷小酷 107狼少年 108天仙子/雅 109天仙子/颂 110红玫瑰少女 111 橘子/112绣球花少年查李斯 113泡泡 114朝露繁花 115冰公主 116红桃 117白光莹 118灰姑娘 119叶罗 120小龙人   121时💩 122白天🐊 126初代 "},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq

qmnb = {
{["memory"] = 4},
{["name"] = "皮肤"},
{["value"] = 3211264, ["type"] = 4},
{["lv"] = mnsj.qq[1], ["offset"] = -0x60, ["type"] = 4}}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4,["freeze"]=true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤"},
{["value"] = 1080344576, ["type"] = 4},
{["lv"] = 3, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4}}
qmxg = {
{["value"] = mnsj.qq[2], ["offset"] = -20, ["type"] = 64},

}
xqmnb(qmnb)
end
end


function a2()
	  gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.20926383e-38F;1.29999995232F;5.11472262e17F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(5)
	 sl=gg.getResultCount()
	 if sl>10 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("你快点根本就看不见")
	 gg.clearResults()
end

function a3()
mini = gg.prompt({"请输入你的迷你号"}
,{[1]=611125310},{[1]="number"})[1] mnmz = gg.prompt({"请输入名字[记得前面加个:]"}
,{[1]=":#b#K 晓得狠优秀"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "联机改名"},
{["value"] = mini, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 0, ["offset"] = -36, ["type"] = 4},
{["lv"] = 0, ["offset"] = -40, ["type"] = 4},
{["lv"] = 0, ["offset"] = -44, ["type"] = 4},
{["lv"] = 0, ["offset"] = -48, ["type"] = 4},
{["lv"] = 0, ["offset"] = -52, ["type"] = 4},
{["lv"] = 0, ["offset"] = -56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 32, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -64, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 65, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1,["freeze"] = true},
{["value"] = mnmz, ["offset"] = 65, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1,["freeze"] = false},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1,["freeze"] = false},
}
xqmnb(qmnb)
end

function a4()
F = gg.alert("🇨🇳🔥请选择｛开 关｝～风华🇨🇳","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "所有模式变创造"},
{["value"] = 939814400, ["type"] = 4},
{["lv"] = 1187006320, ["offset"] = 8, ["type"] = 4},
{["lv"] = 939879936, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = -60, ["type"] = 16},
{["value"] = 0, ["offset"] = -80, ["type"] = 16},
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "所有模式变创造关"},
{["value"] = 939814400, ["type"] = 4},
{["lv"] = 1187006320, ["offset"] = 8, ["type"] = 4},
{["lv"] = 939879936, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 13.51617717743, ["offset"] = 4, ["type"] = 16},
{["value"] = 13.51617717743, ["offset"] = -60, ["type"] = 16},
{["value"] = 13.51617717743, ["offset"] = -80, ["type"] = 16},
{["value"] = 13.51617717743, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function a5()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "🇨🇳🔥🇨🇳"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 835, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function a6()
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除权限"},
{["value"] = a, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -40, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = 123698, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除权限"},
{["value"] = 123698, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -40, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
end
end

function a7()
	 gg.clearResults()
function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"能量剑改地形编辑器"}, 
{12005, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{10500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end

function a8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
 gg.clearResults()
end

function a9()
b = gg.prompt({"请设置锁定对方假身位置"}
,{[1]=1000},{[1]="number"})[1]
 
qmnb = {
{["memory"] = 4},
{["name"] = "锁身"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = 156, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a10()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1507551267;400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function a11()
F = gg.alert("请选择｛开 关｝","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "秒拿物品"},
{["value"] = 1112014848, ["type"] = 4},
{["lv"] = 1148789248, ["offset"] = -48, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 gg.toast("去把箱子里的东西都拿光吧")
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "秒拿物品关闭"},
{["value"] = 1112014848, ["type"] = 4},
{["lv"] = 1148789248, ["offset"] = -48, ["type"] = 4},
}
qmxg = {
{["value"] = 1000, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end end

function a12()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "子弹穿荧光石块"},
{["value"] = 449, ["type"] = 4},
{["lv"] = 1, ["offset"] = 16, ["type"] = 4},
{["lv"] = 449, ["offset"] = 92, ["type"] = 4},
{["lv"] = 10000, ["offset"] = 96, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "子弹穿荧光石块"},
{["value"] = 450, ["type"] = 4},
{["lv"] = 1, ["offset"] = 16, ["type"] = 4},
{["lv"] = 450, ["offset"] = 92, ["type"] = 4},
{["lv"] = 10000, ["offset"] = 96, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
end

function a13()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end

function a14()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=32768},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
{["lv"]=65536,["offset"]=12,["type"]=4},
{["lv"]=196610,["offset"]=20,["type"]=4}
}
qmxg={
{["value"]=1,["offset"]=12,["type"]=4}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=32768},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
{["lv"]=1,["offset"]=12,["type"]=4},
{["lv"]=196610,["offset"]=20,["type"]=4}
}
qmxg={
{["value"]=65536,["offset"]=12,["type"]=4}
}
xqmnb(qmnb)
end
end


function a15()
gg.toast("请选择手撸基石开关。")
F = gg.alert("请选择手撸基岩[开 关]","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🇨🇳🔥开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('违规操作🇨🇳制作不易且行且珍惜\n🇨🇳请勿在执行时打开～风华🇨🇳','🇨🇳🔥强制结束🇨🇳') gg.clearResults() gg.toast("🇨🇳🔥开启失败🇨🇳")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🇨🇳🔥开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('违规操作🇨🇳制作不易且行且珍惜\n🇨🇳请勿在执行时打开～风华🇨🇳','🇨🇳🔥强制结束🇨🇳') gg.clearResults() gg.toast("🇨🇳🔥开启失败🇨🇳")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩开启成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🇨🇳🔥恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('违规操作🇨🇳制作不易且行且珍惜\n🇨🇳请勿在执行时打开～风华🇨🇳','🇨🇳🔥强制结束🇨🇳') gg.clearResults() gg.toast("🇨🇳🔥开启失败🇨🇳")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🇨🇳🔥恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('违规操作🇨🇳制作不易且行且珍惜\n🇨🇳请勿在执行时打开～风华🇨🇳','🇨🇳🔥强制结束🇨🇳') gg.clearResults() gg.toast("🇨🇳🔥开启失败🇨🇳")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 

function a16()
   mn1=gg.prompt({"『请输入你的迷你号』"},{'611125310'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入你现在的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
gg.clearResults()
mn3=gg.prompt({"『请输入你要改成的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{mn1, 0}, {mn2, 244},}
local tb2 = {{mn3, 244  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("不服")
	 gg.clearResults()
end

function a17()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "摇头"},
{["value"] = 1127481344, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = -12, ["type"] = 4},}
qmxg = {
{["value"] = -999, ["offset"] = -8, ["type"] = 16},
}

xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "摇头"},
{["value"] = 1127481344, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = -12, ["type"] = 4},}
qmxg = {
{["value"] = 30, ["offset"] = -8, ["type"] = 16},
}

xqmnb(qmnb)
end
end

function a18()
qmnb = {
{["memory"] = 16384},
{["name"] = "解除禁用地形编辑器"},
{["value"] = 1762840583, ["type"] = 4},
{["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
 
function a19()
gg.toast("请选择全图透视开关")
F = gg.alert("请选择全图透视｛开 关｝～风华🇨🇳","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("10;30000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("全图透视开启")
elseif F == 2 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("10;10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("30000",gg.TYPE_FLOAT)
gg.toast("全图透视关闭")
end
end

function fh()
lw=1
Main0()
end
     
function a20()
A1 = gg.prompt({"请输入角色特长代码33-酋长 34-卡卡 40-妮妮 35-史蒂芬教授 36-汤姆队长 37-助教彼得 38-熊孩子 39-酋长夫人 特工罗拉 42-小淘气"}
,{[1]=42},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "小淘气"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
}
qmxg = {{["value"] = A1, ["offset"] = -292, ["type"] = 4},}
xqmnb(qmnb)
end

function a21()
b = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻影-迅3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
,{[1]=3512},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function a22()
A1=gg.prompt({
"『请输入你要的倍数』改成500恢复"
}, {
[1]=5000
}, {
[1]="number"
})[1]
qmnb={
{["memory"]=16384},
{["name"]="上帝视角"},
{["value"]=1138819072,["type"]=4},
{["lv"]=1117782016,["offset"]=-4,["type"]=4},
{["lv"]=1092616192,["offset"]=8,["type"]=4}
}
qmxg={
{["value"]=A1,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
end

function a23()
F = gg.alert("🇨🇳🔥请选择｛开 关｝～风华🇨🇳","🇨🇳🔥开～风华🇨🇳","🇨🇳🔥️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
a = gg.prompt({"输入粉丝数量 51～54"}
,{[1]=54},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改粉丝"},
{["value"] = 51, ["type"] = 1},
{["lv"] = 51, ["offset"] = 14, ["type"] = 1},
}
qmxg = {
{["value"] = a, ["offset"] = 14, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "改粉丝"},
{["value"] = 51, ["type"] = 1},
{["lv"] = 51, ["offset"] = 14, ["type"] = 1},
}
qmxg = {
{["value"] = 51, ["offset"] = 14, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function a24()
SY1 = gg.choice({
'取迷你ID',
'退出脚本'},
nil,'点击转入地址666下面那个就是名字ID的十进制数值')
if SY1 == 1 then aa1() end
if SY1 == 2 then Exit() end
XGCK=0
end


function aa1()
qmnb = {
{["memory"] = 4},
{["name"] = "取迷你ID"},
{["value"] = 6619269, ["type"] = 4},
{["lv"] = 21, ["offset"] = 172, ["type"] = 4},
}
qmxg = {
{["value"] = 666, ["offset"] = 176, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)

os.exit()
end

function a25()
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12006, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12008, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end


function a26()
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079102e20F;-7.15922749e24F;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 5}})
	 end
	 gg.toast("完成")
	gg.clearResults()
gg.clearResults()
 elseif  F== 2 then
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079102e20F;-7.15922749e24F;1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 5}})
	 end
	 gg.toast("完成")
	gg.clearResults()
end
end

function a27()
F=gg.alert("请选择｛开 关｝", "开", "关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "修改密码"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
if F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "修改密码关闭"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function a28()
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改桃木图腾"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 1049, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end

function a29()  
i2= gg.choice({
    "🇨🇳🔰炸药桶🔰🇨🇳",
    "🇨🇳🔰刷怪方块🔰🇨🇳",
    "🇨🇳🔰宠物窝🔰🇨🇳",
    "🇨🇳🔰天气控制器🔰🇨🇳",
    "🇨🇳🔰️重力装置🔰🇨🇳",    
    "🇨🇳🔰️空心树🔰🇨🇳",
    "🇨🇳🔰自定义方块🔰🇨🇳",
    "🇨🇳🔰中式沙发🔰🇨🇳",
    "🇨🇳🔰中式桌子🔰🇨🇳",
    "🇨🇳🔰中式餐桌🔰🇨🇳",
    "🇨🇳🔰中式洗手台🔰🇨🇳",   
    "🇨🇳🔰中式椅子🔰🇨🇳",
    "🇨🇳🔰中式马桶🔰🇨🇳",
    "🇨🇳🔰中式浴缸🔰🇨🇳",
    "🇨🇳🔰中式屏风🔰🇨🇳",
    "🇨🇳🔰️中式立体灯🔰🇨🇳",    
    "🇨🇳🔰中式吊灯️🔰🇨🇳", 
    "🇨🇳🔰中式门️🔰🇨🇳",
    "🇨🇳🔰中式窗🔰🇨🇳",
    "🇨🇳🔰️中式楼梯🔰🇨🇳",    
    "🇨🇳🔰中式墙砖🔰🇨🇳", 
   "🇨🇳🔰中式地砖🔰🇨🇳", 
    "🇨🇳🔰中式半砖🔰🇨🇳", 
    "🇨🇳🔰中式围栏🔰🇨🇳", 
    "🇨🇳🌟现代床🌟🇨🇳", 
    "🇨🇳🌟现代沙发🌟🇨🇳", 
    "🇨🇳🌟现代书桌🌟🇨🇳", 
    "🇨🇳🌟现代餐桌🌟🇨🇳",
    "🇨🇳🌟现代茶几🌟🇨🇳",
    "🇨🇳🌟现代洗手台🌟🇨🇳",
    "🇨🇳🌟现代椅子🌟🇨🇳",
    "🇨🇳🌟现代马桶🌟🇨🇳",
    "🇨🇳🌟现代浴缸🌟🇨🇳",
    "🇨🇳🌟现代衣柜🌟🇨🇳",
    "🇨🇳🌟现代橱柜🌟🇨🇳",
    "🇨🇳🌟现代半格橱柜🌟🇨🇳",
    "🇨🇳🌟现代组合柜🌟🇨🇳",
    "🇨🇳🌟现代屏风🌟🇨🇳",
    "🇨🇳🌟现代立体灯🌟🇨🇳",
    "🇨🇳🌟现代吊灯🌟🇨🇳",
    "🇨🇳🌟现代壁灯🌟🇨🇳",
    "🇨🇳🌟现代门🌟🇨🇳",
    "🇨🇳🌟现代窗🌟🇨🇳",
    "🇨🇳🌟现代楼梯🌟🇨🇳",
    "🇨🇳🌟现代墙砖🌟🇨🇳",
    "🇨🇳🌟现代砖🌟🇨🇳",
    "🇨🇳🌟现代半砖🌟🇨🇳",
   "🇨🇳🌟现代围栏🌟🇨🇳", 
    "🇨🇳❄️童话床❄️🇨🇳",
    "🇨🇳❄童话沙发️❄️🇨🇳",
    "🇨🇳❄童话书桌❄🇨🇳",
    "🇨🇳❄童话桌子️❄🇨🇳",
    "🇨🇳❄童话茶几️❄🇨🇳",
    "🇨🇳❄️童话洗手池❄🇨🇳",
    "🇨🇳❄️童话椅子❄🇨🇳",
    "🇨🇳❄️童话马桶❄🇨🇳",
    "🇨🇳❄童话浴缸️❄🇨🇳",
    "🇨🇳❄童话衣柜️❄🇨🇳",
    "🇨🇳❄童话橱柜️❄🇨🇳",
    "🇨🇳❄童话半格橱柜️❄🇨🇳",
    "🇨🇳❄童话箱子️❄🇨🇳",
    "🇨🇳❄童话屏风️❄🇨🇳",
    "🇨🇳❄童话台灯️❄🇨🇳",
    "🇨🇳❄️童话吊灯❄🇨🇳",
    "🇨🇳❄️童话壁灯❄🇨🇳",
    "🇨🇳❄️童话门❄🇨🇳",
    "🇨🇳❄童话窗️❄🇨🇳",
    "🇨🇳❄️童话楼梯❄🇨🇳",
    "🇨🇳❄童话墙砖️❄🇨🇳",
    "🇨🇳❄️童话地砖❄🇨🇳",
    "🇨🇳❄️童话半砖❄🇨🇳",
    "🇨🇳❄️童话围栏❄🇨🇳",
    "🇨🇳🎋科幻床️🎋🇨🇳",
    "🇨🇳🎋️科幻沙发🎋🇨🇳",
    "🇨🇳🎋科幻书桌🎋🇨🇳",
    "🇨🇳🎋科幻桌子🎋🇨🇳", 
    "🇨🇳🎋科幻茶几🎋🇨🇳",
    "🇨🇳🎋科幻洗手台🎋🇨🇳",
    "🇨🇳🎋科幻椅子🎋🇨🇳",
    "🇨🇳🎋科幻马桶🎋🇨🇳",
    "🇨🇳🎋科幻浴缸🎋🇨🇳",
    "🇨🇳🎋科幻衣柜🎋🇨🇳",
    "🇨🇳🎋钢 琴 🎋🇨🇳",
    "🇨🇳返 回 神 界🇨🇳",},i2,os.date("姜小北原创"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"虚空方块4095，卡图1049"},{[1]=4095},{[1]="number"})[1] i1() end
if i2==8 then i=1575 i1() end
if i2==9 then i=1576 i1() end
if i2==10 then i=1577 i1() end
if i2==11 then i=1579 i1() end
if i2==12 then i=1580 i1() end
if i2==13 then i=1581 i1() end
if i2==14 then i=1582 i1() end
if i2==15 then i=1587 i1() end
if i2==16 then i=1588 i1() end
if i2==17 then i=1589 i1() end
if i2==18 then i=1591 i1() end
if i2==19 then i=1592 i1() end
if i2==20 then i=1593 i1() end
if i2==21 then i=1594 i1() end
if i2==22 then i=1595 i1() end
if i2==23 then i=1596 i1() end
if i2==24 then i=1597 i1() end
if i2==25 then i=1598 i1() end
if i2==26 then i=1599 i1() end
if i2==27 then i=1600 i1() end
if i2==28 then i=1601 i1() end
if i2==29 then i=1602 i1() end
if i2==30 then i=1603 i1() end
if i2==31 then i=1604 i1() end
if i2==32 then i=1605 i1() end
if i2==33 then i=1606 i1() end
if i2==34 then i=1607 i1() end
if i2==35 then i=1608 i1() end
if i2==36 then i=1609 i1() end
if i2==37 then i=1610 i1() end
if i2==38 then i=1611 i1() end
if i2==39 then i=1612 i1() end
if i2==40 then i=1613 i1() end
if i2==41 then i=1614 i1() end
if i2==42 then i=1615 i1() end
if i2==43 then i=1616 i1() end
if i2==44 then i=1617 i1() end
if i2==45 then i=1618 i1() end
if i2==46 then i=1619 i1() end
if i2==47 then i=1620 i1() end
if i2==48 then i=1621 i1() end
if i2==49 then i=1622 i1() end
if i2==50 then i=1623 i1() end
if i2==51 then i=1624 i1() end
if i2==52 then i=1625 i1() end
if i2==53 then i=1626 i1() end
if i2==54 then i=1627 i1() end
if i2==55 then i=1628 i1() end
if i2==56 then i=1629 i1() end
if i2==57 then i=1630 i1() end
if i2==58 then i=1631 i1() end
if i2==59 then i=1632 i1() end
if i2==60 then i=1633 i1() end
if i2==61 then i=1634 i1() end
if i2==62 then i=1635 i1() end
if i2==63 then i=1636 i1() end
if i2==64 then i=1637 i1() end
if i2==65 then i=1638 i1() end
if i2==66 then i=1639 i1() end
if i2==67 then i=1640 i1() end
if i2==68 then i=1641 i1() end
if i2==69 then i=1642 i1() end
if i2==70 then i=1643 i1() end
if i2==71 then i=1644 i1() end
if i2==72 then i=1645 i1() end
if i2==73 then i=1646 i1() end
if i2==74 then i=1647 i1() end
if i2==75 then i=1648 i1() end
if i2==76 then i=1649 i1() end
if i2==77 then i=1650 i1() end
if i2==78 then i=1651 i1() end
if i2==79 then i=1652 i1() end
if i2==80 then i=1653 i1() end
if i2==81 then i=1654 i1() end
if i2==82 then i=1655 i1() end
if i2==83 then i=726 i1() end
XGCK=-1 end

function a30() 
i2= gg.choice({
  "🇨🇳🔥胡杩茶机~风华🇨🇳",
    "🇨🇳🔥胡杩登子~风华🇨🇳",
    "🇨🇳🔥西域沙发~风华🇨🇳",
    "🇨🇳🔥西域书桌~风华🇨🇳",
    "🇨🇳🔥西域餐桌~风华🇨🇳",
    "🇨🇳🔥西域茶机~风华🇨🇳",
    "🇨🇳🔥西域洗手台~风华🇨🇳",
    "🇨🇳🔥西域登子~风华🇨🇳",
    "🇨🇳🔥西域马桶~风华🇨🇳",
    "🇨🇳🔥西域浴缸~风华🇨🇳",
    "🇨🇳🔥西域衣柜~风华🇨🇳",
   "🇨🇳🔥西域厨柜~风华🇨🇳", 
    "🇨🇳🔥️西域半柜~风华🇨🇳",
    "🇨🇳🔥西域组合柜~风华🇨🇳",
    "🇨🇳🔥西域屏风~风华🇨🇳",
    "🇨🇳🔥西域立体灯~风华🇨🇳",
    "🇨🇳🔥西域吊灯️~风华🇨🇳",
    "🇨🇳🔥️西域壁灯~风华🇨🇳",
    "🇨🇳🔥️西域门~风华🇨🇳",
    "🇨🇳🔥西域窗~风华🇨🇳",
    "🇨🇳🔥西域楼梯~风华🇨🇳",
    "🇨🇳🔥西域墙砖~风华🇨🇳",
    "🇨🇳🔥西域砖️~风华🇨🇳",
    "🇨🇳🔥西域半砖~风华🇨🇳",
    "🇨🇳🔥西域围栏~风华🇨🇳",
    "🇨🇳🔥西域地毯~风华🇨🇳",
    "🇨🇳🔥骆驼墙砖~风华🇨🇳",
    "🇨🇳🔥️莲花壁画~风华🇨🇳",
    "🇨🇳🔥️飞天少女壁画~风华🇨🇳",
    "🇨🇳🔥️坐骑蛋1~风华🇨🇳",
    "🇨🇳🔥坐骑蛋2~风华🇨🇳",
    "🇨🇳🔥️坐骑蛋3~风华🇨🇳",
    "🇨🇳🔥坐骑蛋4~风华🇨🇳",
    "🇨🇳🔥️坐骑蛋5~风华🇨🇳",
    "🇨🇳🔥️坐骑蛋6~风华🇨🇳",
    "🇨🇳🔥️坐骑蛋7~风华🇨🇳",
  "🇨🇳返 回 神 界🇨🇳",},i2,os.date("打开编辑器，植物类 "))
if i2==1 then i=1720 i1() end
if i2==2 then i=1721 i1() end
if i2==3 then i=1722 i1() end
if i2==4 then i=1723 i1() end
if i2==5 then i=1724 i1() end
if i2==6 then i=1725 i1() end
if i2==7 then i=1726 i1() end
if i2==8 then i=1727 i1() end
if i2==9 then i=1728 i1() end
if i2==10 then i=1729 i1() end
if i2==11 then i=1730 i1() end
if i2==12 then i=1731 i1() end
if i2==13 then i=1732 i1() end
if i2==14 then i=1734 i1() end
if i2==15 then i=1735 i1() end
if i2==16 then i=1736 i1() end
if i2==17 then i=1737 i1() end
if i2==18 then i=1738 i1() end
if i2==19 then i=1739 i1() end
if i2==20 then i=1740 i1() end
if i2==21 then i=1741 i1() end
if i2==22 then i=1742 i1() end
if i2==23 then i=1743 i1() end
if i2==24 then i=1744 i1() end
if i2==25 then i=1745 i1() end
if i2==26 then i=1747 i1() end
if i2==27 then i=1750 i1() end
if i2==28 then i=1751 i1() end
if i2==29 then i=950 i1() end
if i2==30 then i=951 i1() end
if i2==31 then i=952 i1() end
if i2==32 then i=953 i1() end
if i2==33 then i=954 i1() end
if i2==34 then i=955 i1() end
if i2==35 then i=1807 i1() end
if i2==36 then i=Main i1() end
XGCK=-1 end





function a31()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end

function a32()
b31a= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
function fh()
lw=1
Main0()
end

function a33()
AA1 = gg.prompt({"请输入你的高度"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "踏空跳"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = AA1, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = 257, ["offset"] = 128, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function a34()
gg.toast("请选择开关")
F = gg.alert("💫请选择｛开 关｝💫","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("💫你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 0x248, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0x248, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 end
end

function a35() 
SN = gg.multiChoice({
	 "🇨🇳子 弹 穿 墙(房主)🇨🇳",
	 "🇨🇳狙击枪无后座连发🇨🇳",
	 "🇨🇳怒海狙击地图连发🇨🇳",
	 "🇨🇳三 角 透 视🇨🇳",
	 "🇨🇳超 远 攻 击🇨🇳",
	 "🇨🇳人 物 上 色🇨🇳",
	 "🇨🇳天 空 变 黑🇨🇳",
	 "🇨🇳锁 定 高 度🇨🇳",
	 "返 回 神 界",
 }, nil, "🇨🇳错过了就错过了,我不遗憾,也不期待圆满🇨🇳")
 if SN == nil then else
if SN[1]==true then dd1() end
if SN[2]==true then dd2() end
if SN[3]==true then dd3() end
if SN[4]==true then dd4() end
if SN[5]==true then dd5() end
if SN[6]==true then dd6() end
if SN[7]==true then dd7() end
if SN[8]==true then dd8() end
if SN[9]==true then Main() end end
FX1=0 end
function dd8() 
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "锁定高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 800, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("加上超远攻击直接乱杀")
end

function dd7() 
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空变黑"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空变黑"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0.400000000596, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 end
end



function dd6() 
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "人物上色"},
{["value"] = 472408120, ["type"] = 4},
{["lv"] = 1075844388, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "人物上色"},
{["value"] = 472408120, ["type"] = 4},
{["lv"] = 1075844388, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end

function dd1()
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
end
function dd2()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end

function dd3()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 65536100, ["type"] = 4},
{["lv"] = 15004, ["offset"] = -68, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 68, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 0, ["type"] = 4},
{["value"] =0, ["offset"] = 32, ["type"] = 4},
{["value"] =0, ["offset"] = 28, ["type"] = 4},
{["value"] =1, ["offset"] = 64, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x6, ["type"] = 2},
}	
 xqmnb(qmnb)
end
function dd4() 
gg.toast("请选择开关")
F = gg.alert("🇨🇳请选择｛开 关｝🇨🇳","🇨🇳开🇨🇳","🇨🇳️关🇨🇳️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 32768},
{["name"] = "三角透视"},
{["value"] = 196608, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 196610, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 32768},
{["name"] = "三角透视"},
{["value"] = 196608, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] = 12, ["type"] = 4},
{["lv"] = 196610, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 65536, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end
function dd5()
qmnb = {
{["memory"] = 16384},
{["name"] = "超远攻击"},
{["value"] =1137180672, ["type"] = 4},
{["lv"] = 1140457472, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=9999,["offset"]=0,["type"]=16},
{["value"]=9999,["offset"]=12,["type"]=16},
}
xqmnb(qmnb)
end


function a36()
a = gg.prompt({"请输入你现在的高度"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
Q = gg.prompt({"请输入你想要去的横坐标后面加两个0"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
W = gg.prompt({"请输入你想要去的竖坐标后面加两个0"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "改坐标"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = a, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = Q, ["offset"] = 8, ["type"] = 4},
{["value"] = W, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
end

function a37()
gg.toast("请选择足球模式开关")
F=gg.alert("🌚请选择足球模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0x188, 0x1C4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
elseif F==2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0x188, 0x1C4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
end

function a38()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("100;100;-1;1D::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end

function a39()
gg.toast("请选择观战模式开关")
F = gg.alert("🌚请选择观战模式｛开 关｝🌚","🌞开🌞","🌝关🌝")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "观战模式"},
{["value"] = 1121452032, ["type"] = 4},
{["lv"] = 1118568448, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -56, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "观战模式"},
{["value"] = 1121452032, ["type"] = 4},
{["lv"] = 1118568448, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = -56, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
end
end

function a40()
qmnb = {
{["memory"] = 4},
{["name"] = "近战秒杀开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 52, ["type"] = 16},
}
xqmnb(qmnb)
end

function a41()
qmnb = {
{["memory"] = 4},
{["name"] = "远程秒杀开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 56, ["type"] = 16},
}
xqmnb(qmnb)
end

function a42()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1178703616, 0},{1187036656, 20},}
local tb2 = {{0, -92  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("")
	 gg.clearResults()
end

function a43()
F = gg.alert("请选择｛开 关｝","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "烧死"},
{["value"] = 449005139, ["type"] = 4},
{["lv"] = 1096368729, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "烧死"},
{["value"] = 449005139, ["type"] = 4},
{["lv"] = 1096368729, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 13.64119911194, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end


function a44()
 qmnb = {
{["memory"] = 4},
{["name"] = "取消黑名单"},
{["value"] =4295032832 , ["type"] = 32},
{["lv"] = 16777472, ["offset"] = 32, ["type"] = 32},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 32,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function a45()
SN = gg.multiChoice({
	 "【野人掉落999星星】",
	 "【熔岩巨人掉落999星星】",
	 "【猪掉落999星星】",
	 "【牛掉落999星星】",
	 "【鸡掉落999星星】",
	 "【狼掉落999星星】",
	 "【返回主界面】",
}, nil, "【针对没有星星的各位玩家定制】")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS21()
end
if SN[7]==true then
	 HS4()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【野人】测试一下！")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【熔岩巨人】测试一下！")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【猪】测试一下！")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【牛】测试一下！")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【鸡】测试一下！")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！打【狼】测试一下！")
	 gg.clearResults()
end

function HS4()
	 Main0()
end

function a46()
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"自定义改文字"}
,{[1]=":"},{[1]="text"})[1]
mnmc = ":ggggggggggg"

qmnb = {
{["memory"] = 4},
{["name"] = "开关危险品_改文字开启成功"},
{["value"] = -1733433962, ["type"] = 4},
{["lv"] = 10723814, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 12, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 13, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 14, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 15, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 16, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 17, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 18, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 19, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 20, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 21, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 22, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 23, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 24, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 25, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 26, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 27, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 28, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 29, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 30, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 31, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 32, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 33, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 34, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 35, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 36, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 37, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 38, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 39, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 40, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 41, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 42, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 43, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 44, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 45, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 46, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 47, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 49, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 50, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 51, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 53, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 54, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 55, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 57, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 58, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 59, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 1},
{["value"] = 0, ["offset"] = 64, ["type"] = 4},

{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 97, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 98, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 99, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 100, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 101, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 102, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 103, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 104, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 105, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 106, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 107, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 108, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 109, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 110, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 111, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 112, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 113, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 114, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 115, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 116, ["type"] = 1},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("开关危险品_改文字开启成功")
if gg.getResultCount() == 0 then
gg.toast("开关危险品_改文字开启失败")
else
end
end

function a47()
tys = gg.prompt({"输入要添加的道具代码，剑12005，长枪12004，链锯11005，钻头11015，点火器11055，号角12579，狗哨12580 ，在别人房间只能添加这些东西装逼"}
,{[1]=12005},{[1]="number"})[1]
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=tys,["type"]=4},
{["lv"]=2,["offset"]=56,["type"]=4},
{["lv"]=3,["offset"]=60,["type"]=4},
{["lv"]=2,["offset"]=64,["type"]=4},
}
qmxg={
{["value"]=tys,["offset"]=0,["type"]=4,["freeze"] = true}
} 
xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==tys then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加道具"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0x94, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x128, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x1BC, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x250, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x2E4, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x378, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x40C, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()end
end


function a48() local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."🇨🇳🔥联机取物1🇨🇳"..sjbq,
    [2] = sjbq.."🇨🇳🔥联机取物2🇨🇳"..sjbq,
    [3] = sjbq.."🇨🇳🔥️退 出 脚 本🇨🇳"..sjbq,
},2018,os.date("联机取物                               🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY == 1 then as1() end
if SY == 2 then as2() end
if SY == 3 then print("") os.exit() end
XGCK=0
end
function as1()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end

function as2()
dI=gg.prompt({"",""},{[1] = "【物品代码】15056",[2] = "【数量】999"},{[1] = "number",[2] = "number"})   
Aa1 = dI[1] Aa2 = dI[2]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =16, ["type"] = 4},
{["value"] = Aa2, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x390, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x730, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end

function a49() local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."🇨🇳🔥联机取物1🇨🇳"..sjbq,
    [2] = sjbq.."🇨🇳🔥联机取物2🇨🇳"..sjbq,
    [3] = sjbq.."🇨🇳🔥️退 出 脚 本🇨🇳"..sjbq,
},2018,os.date("联机取物                               🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY == 1 then aas1() end
if SY == 2 then aas2() end
if SY == 3 then print("") os.exit() end
XGCK=0
end

 function aas1()
 F = gg.alert("🔰请选择🔰","🍁奖杯按钮🍁","🍁️修改物品🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if F==2 then
dI=gg.prompt({"",""},{[1] = "【物品代码】11551",[2] = "【数量】520"},{[1] = "number",[2] = "number"})   
Aa1 = dI[1] Aa2 = dI[2]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =16, ["type"] = 4},
{["value"] = Aa2, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x390, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x730, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
end



function aas2()
qmnb = {
{["memory"] = 4},
{["name"] = "第一个成就无限领"},
{["value"] = 1221, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4}}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end



function a58()
o3= gg.choice({
    "🧊萌清定制名字🧊",
    "🧊小北定制名字️🧊",
    "🧊凉情定制地图名️🧊",
    "🧊自定义地图名🧊",
    "🧊🧊",    
    "🔥🎡返回主页🎡🔥",},2018,os.date("⚠️开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了⚠️"))
if o3==1 then  vi1() end
if o3==2 then  vi2() end
if o3==3 then  vi3() end
if o3==4 then  vi4() end
if o3==5 then  vi5() end
if o3==6 then  Main() end
XGCK=-1 end
function vi4()
aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义地图名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 8, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 12, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 16, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 20, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 24, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 28, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 32, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 36, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 40, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 44, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 64, 
["type"] = 4},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 4},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("自定义地图名开启成功")
if gg.getResultCount() == 0 then
gg.toast("自定义地图名开启失败")
else
end
end

function vi2()
aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = 1717986083, ["offset"] = 8, ["type"] = 4},
{["value"] = 1717985584, ["offset"] = 12, ["type"] = 4},
{["value"] = -1662623197, ["offset"] = 16, ["type"] = 4},
{["value"] = -1581783424, ["offset"] = 20, ["type"] = 4},
{["value"] = -444294425, ["offset"] = 24, ["type"] =4 },
{["value"] = -1327060830, ["offset"] = 28, ["type"] =4 },
{["value"] = -1615207244, ["offset"] = 32, ["type"] =4 },
{["value"] = -392395800, ["offset"] = 36, ["type"] =4 },
{["value"] = -1662613569, ["offset"] = 40, ["type"] =4 },
{["value"] = -1313347968, ["offset"] = 44, ["type"] = 4},
{["value"] = -407140123, ["offset"] = 48, ["type"] = 4},
{["value"] = -1360493414, ["offset"] = 52, ["type"] = 4},
{["value"] = -2034244176, ["offset"] = 56, ["type"] = 4},
}
xqmnb(qmnb)
end
function vi1()
aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = 808477475, ["offset"] = 8, ["type"] = 4},
{["value"] = 1179010630, ["offset"] = 12, ["type"] = 4},
{["value"] = -1159437789, ["offset"] = 16, ["type"] = 4},
{["value"] = -1283070574, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = 24, ["type"] =4 },
{["value"] = 0, ["offset"] = 28, ["type"] =4 },
{["value"] = 0, ["offset"] = 32, ["type"] =4 },
{["value"] = 0, ["offset"] = 36, ["type"] =4 },
{["value"] = 0, ["offset"] = 40, ["type"] =4 },
}
xqmnb(qmnb)
end
function vi3()
aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = 1646480419, ["offset"] = 8, ["type"] = 4},
{["value"] = 1179018019, ["offset"] = 12, ["type"] = 4},
{["value"] = 574767681, ["offset"] = 16, ["type"] = 4},
{["value"] = -457210650, ["offset"] = 20, ["type"] = 4},
{["value"] = -1981439811, ["offset"] = 24, ["type"] =4 },
{["value"] = -1951864947, ["offset"] = 28, ["type"] =4 },
{["value"] = -373506844, ["offset"] = 32, ["type"] =4 },
{["value"] = -1125144940, ["offset"] = 36, ["type"] =4 },
{["value"] = -1833048692, ["offset"] = 40, ["type"] =4 },
{["value"] = -458908186, ["offset"] = 44, ["type"] = 4},
{["value"] = -1729720901, ["offset"] = 48, ["type"] = 4},
{["value"] = -1850677841, ["offset"] = 52, ["type"] = 4},
{["value"] = 582269413, ["offset"] = 56, ["type"] = 4},
}
xqmnb(qmnb)
end

function a51()
r=gg.prompt({
"『请输入坐骑代码』3432化石龙-3435飞鼠-3438麒麟-3441陆行鸟-3446海报-3456猫-3459天马-3480月亮-3471龙-3485鹿"
}, {
[1]=3485
}, {
[1]="number"
})[1]
qmnb={
{["memory"]=4},
{["name"]="刷怪方块"},
{["value"]=3400,["type"]=4},
{["lv"]=1056964608,["offset"]=-36,["type"]=4}
}
qmxg={
{["value"]=r,["offset"]=0,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function a52()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;6500;1440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(400)
	 sl=gg.getResultCount()
	 if sl>400 then sl=400 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function a53()
local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x1238, 0x68, 0x370, 0x267}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = 999, freeze = true}})
gg.toast("己切换踢动物")
end

function a54()
F = gg.alert("🔰先在玩法里面打开一次背包｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "联机背包添加开发者"},
{["value"] =688128 , ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32,["type"] = 4,["freeze"]= true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "联机背包添加开发者"},
{["value"] =688128 , ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32,["type"] = 4,["freeze"]= true},
}
xqmnb(qmnb)
gg.clearResults()
end
end

	 function a55()
	 SN = gg.multiChoice({
             "🔥🧊生存奖励杯🔥🧊",
             "🔥🧊破坏🔥🧊",
              "🔥🧊击飞🔥🧊",
              "🔥🧊召唤🔥🧊",
              "🔥🧊加状态🔥🧊",
              "🔥🧊治疗🔥🧊",
              "🔥🧊召唤方块🔥🧊",          
	  "🍊返 回 主 页🍊",
 }, nil, "❤️打开生存奖励杯领取💋")
if SN == nil then else
if SN[1]==true then djj520() end
if SN[2]==true then djj521() end
if SN[3]==true then djj522() end
if SN[4]==true then djj523() end
if SN[5]==true then djj524() end
if SN[6]==true then djj525() end
if SN[7]==true then djj526() end
	 if SN[8]==true then Main() end end
 FX=0 end
 
 
 function djj520()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end


 function djj521()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11551, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11551, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
 function djj522()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11555, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11555, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
 function djj523()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11556, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11556, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
 function djj524()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11557, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11557, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
 function djj525()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11559, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11559, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
 function djj526()  
 qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = 11552, ["offset"] =16, ["type"] = 4},
{["value"] = 99, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 11552, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
function C()
SY1 = gg.choice({
'🇨🇳🔥添加编辑器～风华🇨🇳',
'🇨🇳🔥工具附魔～风华🇨🇳',
'🇨🇳🔥装备附魔～风华🇨🇳',
'🇨🇳🔥武器附魔～风华🇨🇳',
'🇨🇳🔥远程附魔～风华🇨🇳',
'🇨🇳🔥秒挖方块～风华🇨🇳',
'🇨🇳🔥人物失重～风华🇨🇳',
'🇨🇳🔥崩溃云服～风华🇨🇳',
'🇨🇳🔥死亡无敌～风华🇨🇳',
'🇨🇳🔥彩弹枪改子弹～风华🇨🇳',
'🇨🇳🔥修改剑的距离～风华🇨🇳',
'🇨🇳🔥通用穿墙～风华🇨🇳',
'🇨🇳🔥无敌生存～风华🇨🇳',
'🇨🇳🔥无线物品～风华🇨🇳',
'🇨🇳🔥无线星星～风华🇨🇳',
'🇨🇳🔥人物加速～风华🇨🇳',
'🇨🇳🔥无敌锁血～风华🇨🇳',
'🇨🇳🔥秒孵坐骑～风华🇨🇳',
'🇨🇳🔥狙击枪强化～风华🇨🇳',
'🇨🇳🔥冲锋枪强化～风华🇨🇳',
'🇨🇳🔥重机枪强化～风华🇨🇳',
'🇨🇳🔥创造背包～风华🇨🇳',
'🇨🇳🔥自义坐骑～风华🇨🇳',
'🇨🇳🔥超大房间～风华🇨🇳',
'🇨🇳🔥创造背包～墨凉🇨🇳',
'🇨🇳🔥返 回 神 界~俢仙🇨🇳'},
nil,'我这一次终究还是来的太迟，错过了你此后所有的故事')
if SY1 == 1 then c1() end
if SY1 == 2 then c2() end
if SY1 == 3 then c3() end
if SY1 == 4 then c4() end
if SY1 == 5 then c5() end
if SY1 == 6 then c6() end
if SY1 == 7 then c7() end
if SY1 == 8 then c8() end
if SY1 == 9 then c9() end
if SY1 == 10 then c10() end
if SY1 == 11 then c11() end
if SY1 == 12 then c12() end
if SY1 == 13 then c13() end
if SY1 == 14 then c14() end
if SY1 == 15 then c15() end
if SY1 == 16 then c16() end
if SY1 == 17 then c17() end
if SY1 == 18 then c18() end
if SY1 == 19 then c19() end
if SY1 == 20 then c20() end
if SY1 == 21 then c21() end
if SY1 == 22 then c22() end
if SY1 == 23 then c23() end
if SY1 == 24 then c24() end
if SY1 == 26 then c25() end
if SY1 == 25 then Main() end

GLWW=-1
end

function  c1()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 646713826, ["type"] = 4},
{["lv"] = 10500,["offset"] = 0x84, ["type"] = 4},
}
qmxg = {
{["value"] = 10500, ["offset"] = 0x84, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加编辑器"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0x94, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x128, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x1BC, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x250, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x2E4, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x378, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x40C, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()end
end

function c2()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️把要附魔的工具放在第一格⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2505, ["offset"] = 12, ["type"] = 4},
{["value"] = 2603, ["offset"] = 16, ["type"] = 4},
{["value"] = 2401, ["offset"] = 20, ["type"] = 4},
{["value"] = 1505, ["offset"] = 24, ["type"] = 4},
{["value"] = 1105, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end


function c3()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 1605, ["offset"] = 12, ["type"] = 4},
{["value"] = 1805, ["offset"] = 16, ["type"] = 4},
{["value"] = 1005, ["offset"] = 20, ["type"] = 4},
{["value"] = 2205, ["offset"] = 24, ["type"] = 4},
{["value"] = 1905, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function c4()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 605, ["offset"] = 16, ["type"] = 4},
{["value"] = 1005, ["offset"] = 20, ["type"] = 4},
{["value"] = 1105, ["offset"] = 24, ["type"] = 4},
{["value"] = 705, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function c5()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 6, ["offset"] = 8, ["type"] = 4},
{["value"] = 2701, ["offset"] = 12, ["type"] = 4},
{["value"] = 505, ["offset"] = 16, ["type"] = 4},
{["value"] = 1405, ["offset"] = 20, ["type"] = 4},
{["value"] = 1105, ["offset"] = 24, ["type"] = 4},
{["value"] = 1305, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end


function c6()
F = gg.alert("请选择｛开 关｝","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 2001, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 2001, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 20, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function c7()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("25,955;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end

 function i1()
qmnb = {
{["memory"] = 4},
{["name"] = "道具"},
{["value"] = 42949672960230, ["type"] = 32},
{["lv"] = 6582127, ["offset"] = 0x64, ["type"] = 32},
}
qmxg = {
{["value"] = i, ["offset"] = -0x5C, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function c8()
SN = gg.choice({
     "开启崩服器",
     "关闭崩服器(查看效果)",
     "超级崩服器(请先开启崩服器)",
}, nil, "进入服务器崩TM个b的")
if SN==1 then
     E2a1()
end
if SN==2 then
     E2a2()
end
if SN==3 then
     E2a3()
end
FX1=0
end

function E2a1()
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function E2a2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;16777216;16777472;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("时间已过，自动开始崩服")
     gg.clearResults()
     Main0()
end

function E2a3()
     function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end
function c9()
gg.toast("开启成功点击继续探险")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] =-0xFC , ["type"] = 4},
}
qmxg = {
{["value"] = 1000, ["offset"] = -0xE0, ["type"] = 16},
{["value"] = 1000, ["offset"] = -0xDC, ["type"] = 16},
{["value"] = 999, ["offset"] = 0x14, ["type"] = 16},
{["value"] = 99999, ["offset"] = -0xB4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end


function c10()

F = gg.alert("请选择功能","🇨🇳🔥彩蛋枪强化1～风华🇨🇳","🇨🇳🔥自定义️子弹2🇨🇳️️")
 if  F~=1 and F~=2 then
  else 
  end
 if F == 2 then
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=0},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "子弹选择"},
{["value"] = 12247, ["type"] = 4},
{["lv"] = 12247, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 72, ["type"] = 4},
{["lv"] = 1, ["offset"] = 136, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "彩蛋枪"},
{["value"] = 12247, ["type"] = 4},
{["lv"] = 12247, ["offset"] = 4, ["type"] = 4},
{["lv"] = 9830400, ["offset"] = 72, ["type"] = 4},
{["lv"] = 12249, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 72, ["type"] = 4},
{["value"] = 0, ["offset"] = 100, ["type"] = 4},
{["value"] = 12299, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function c11()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="能量剑超长距离"},
{["value"]=1016003125,["type"]=4},
{["lv"]=1017370378,["offset"]=4,["type"]=4},
{["lv"]=19208778,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=9999,["offset"]=8,["type"]=16}
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb={
{["memory"]=16384},
{["name"]="能量剑超长距离"},
{["value"]=1016003125,["type"]=4},
{["lv"]=1017370378,["offset"]=4,["type"]=4},
{["lv"]=19208778,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=600,["offset"]=8,["type"]=16}
}
xqmnb(qmnb)
end
end

function c12()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end end

function c13()
qmnb = {
{["memory"] = 4},
{["name"] = "秒杀，无限血，无限星星"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = -196, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -140, ["type"] = 4},
}
qmxg = {
{["value"] = 2000, ["offset"] = -196, ["type"] = 16, ["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 999999, ["offset"] = -140, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function c14()
gg.toast("请选择复刻物品开关")
F = gg.alert("🇨🇳🔥请选择复刻第一格物品｛开 关｝～风华🇨🇳","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🇨🇳🔥功 能 指 南🇨🇳\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 4},
{["name"] = "第一格物品复刻开启"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,564, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end
end
end
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "物品复刻恢复"},
{["value"] = 945804388, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,388, ["offset"] = 0, ["type"] = 4, ["freeze"] = false}
}
xqmnb(qmnb)
gg.clearResults()
end
end
function Exit()
os.exit()
end

function c15()
qmnb = {
{["memory"] = 4},
{["name"] = "无限星星开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 252, ["type"] = 16},
}
xqmnb(qmnb)
end

function c16()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(5)
	 sl=gg.getResultCount()
	 if sl>5 then sl=5 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

 function c17()
qmnb = {
{["memory"] = 4},
{["name"] = "无限血量开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -20, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function c18()
SN = gg.choice({
	 "小飞鼠秒孵",
	 "化石龙秒孵",
	 "麒麟秒孵",
	 "陆行鸟秒孵",
	 "返 回 神 界",
}, nil, "")
if SN==1 then
	 HS10()
end
if SN==2 then
	 HS11()
end
if SN==3 then
	 HS12()
end
if SN==4 then
	 HS13()
end
if SN==8 then
	 HS57()
end
FX2=0
end

function HS10()
	 gg.clearResults()
	 gg.searchNumber("951;3433;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("风华很优秀")
end

function HS11()
	 gg.clearResults()
	 gg.searchNumber("950;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("风华很优秀")
end

function HS12()
	 gg.clearResults()
	 gg.searchNumber("952;3436;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("风华很优秀")
end

function HS13()
	 gg.clearResults()
	 gg.searchNumber("953;3439;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("风华很优秀")
end

function HS57()
	 Main1()
end

function c19()
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭-12292脉冲箭-12248彩蛋"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪强化"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end


function c20()
 A5 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭-12292脉冲箭-12248彩蛋"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪强化"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A5, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end


function c21()
 A6 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭-12292脉冲箭-12248彩蛋"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪强化"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A6, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end

function c22()
F = gg.alert("请选择｛开 关｝","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造背包开"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=-80,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造背包关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=-80,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function c23()
o2= gg.choice({
    "🇨🇳🔥化石龙～风华🇨🇳",
    "🇨🇳🔥机灵飞鼠～风华🇨🇳",
    "🇨🇳🔥瑞祥麒麟～风华🇨🇳",
    "🇨🇳🔥陆行鸟～风华🇨🇳",
    "🇨🇳🔥️大白象～风华🇨🇳",    
    "🇨🇳🔥️超能海豹～风华🇨🇳",
    "🇨🇳🔥舞狮猫猫～风华🇨🇳",
    "🇨🇳🔥星河天马～风华🇨🇳",
    "🇨🇳🔥桃香扇缘～风华🇨🇳",
    "🇨🇳🔥深渊咆哮～风华🇨🇳",
    "🇨🇳🔥皎月仙宫～风华🇨🇳",
    "🇨🇳🔥冰雪传说～风华🇨🇳",   
    "🇨🇳🔥缤纷幻想～风华🇨🇳",
    "🇨🇳🔥福运哞哞～风华🇨🇳",
    "🇨🇳🔥浮游山海～风华🇨🇳",
    "🇨🇳🔥镜花水月～风华🇨🇳",
    "🇨🇳🔥️鹿王本身～风华🇨🇳",
    "🇨🇳🔥️精灵南瓜车～风华🇨🇳", 
    "🇨🇳🔥️竹 蜻 蜓～风华🇨🇳",   
    "🇨🇳🔥️曦光绘梦～风华🇨🇳",  
    "🇨🇳🔥️裂空机甲～风华🇨🇳",
    "🇨🇳🔥️星河机甲～风华🇨🇳",
    "🇨🇳🔥️️无敌旋风~风华🇨🇳️",
    "🇨🇳🔥️️环海洛洛～风华🇨🇳",
    "🇨🇳🔥️东尼洛洛~风华🇨🇳️",
    "🇨🇳🔥️虚空祖龙~风华🇨🇳️",
    "🇨🇳🔥️繁花夜明~风华🇨🇳️",
    "🇨🇳🔥️星月魔毯~风华🇨🇳️",
    "🇨🇳🔥️自定义坐骑~风华🇨🇳️",
    "🇨🇳🔥返 回 神 界~俢仙🇨🇳"},
nil,'可你己经向新的导航行驶，那条船不再有我的位置')
if o2==1 then o=3432 o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4523 o4() end
if o2==24 then o=4526 o4() end
if o2==25 then o=4529 o4() end
if o2==26 then o=4533 o4() end
if o2==27 then o=4537 o4() end
if o2==28 then o=4541 o4() end
if o2==29 then  zdy() end
XGCK=-1 end

function zdy()
aba6 = gg.prompt({"请输入坐骑代码"}
,{[1]=4526},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = aba6, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function o4()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = o, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function c24()
qmnb = {
{["memory"] = 4},
{["name"] = "40人房间"},
{["value"] = 1111490560, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1108082688, ["offset"] = 4, ["type"] = 4},
{["lv"] = 393222, ["offset"] = 8, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 460, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 460, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function c25()	 
 qmnb = {
{["memory"] = 4},
{["name"] = "电脑版创造背包"},
{["value"] =281510439550976 , ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 328, ["type"] = 32},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 328,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end

function F()
SY1 = gg.choice({
	 "🇨🇳🔥全局创造～风华🇨🇳",
	 "🇨🇳🔥通用创造～风华🇨🇳",
	 "🇨🇳🔥添加地形编辑器～风华🇨🇳",
	 "🇨🇳🔥仙人掌改炸药桶～风华🇨🇳",
	 "🇨🇳🔥能量剑改地形编辑器～风华🇨🇳",
	 "🇨🇳🔥能量剑改火球～风华🇨🇳",
	 "🇨🇳🔥短 剑 改火球～风华🇨🇳",
	 "🇨🇳🔥牛 蛋 改岩浆～风华🇨🇳",
	 "🇨🇳🔥猪蛋改远古黑龙～风华🇨🇳",
	 "🇨🇳🔥猪蛋改自义定～风华🇨🇳",
	 "🇨🇳🔥仙人掌改图腾～风华🇨🇳",
	 "🇨🇳🔥联机取炸弹~风华🇨🇳",
	 "🇨🇳🔥返 回 神 界~俢仙🇨🇳",
 }, nil, "我酝酿好久却得掉牙的诗，最后也没能拥有收信地址")
if SY1 == 1 then f1() end
if SY1 == 2 then f2() end
if SY1 == 3 then f3() end
if SY1 == 4 then f4() end
if SY1 == 5 then f5() end
if SY1 == 6 then f6() end
if SY1 == 7 then f7() end
if SY1 == 8 then f8() end
if SY1 == 9 then f9() end
if SY1 == 10 then f10() end
if SY1 == 11 then f11() end
if SY1 == 12 then f12() end
if SY1 == 13 then Main() end

GLWW=-1
end

function f1()
F = gg.alert("🇨🇳🔥请选择｛开 关｝～风华🇨🇳","🇨🇳开🇨🇳","🇨🇳关🇨🇳")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "所有模式变创造"},
{["value"] = 939814400, ["type"] = 4},
{["lv"] = 1187006320, ["offset"] = 8, ["type"] = 4},
{["lv"] = 939879936, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = -60, ["type"] = 16},
{["value"] = 0, ["offset"] = -80, ["type"] = 16},
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "所有模式变创造关"},
{["value"] = 939814400, ["type"] = 4},
{["lv"] = 1187006320, ["offset"] = 8, ["type"] = 4},
{["lv"] = 939879936, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 13.51617717743, ["offset"] = 4, ["type"] = 16},
{["value"] = 13.51617717743, ["offset"] = -60, ["type"] = 16},
}
xqmnb(qmnb)
end
end


function f2()
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23, ["offset"] = -16, ["type"] = 4}
}qmxg = {
{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==5 then tt=v.address break end end
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5, ["offset"] = 0x18, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0x18, ["type"] = 4},
}gg.clearList()
xqmnb(qmnb)
end

function  f3()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 646713826, ["type"] = 4},
{["lv"] = 10500,["offset"] = 0x84, ["type"] = 4},
}
qmxg = {
{["value"] = 10500, ["offset"] = 0x84, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加编辑器"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0x94, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x128, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x1BC, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x250, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x2E4, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x378, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x40C, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()end
end

function f4()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "🇨🇳🔥🇨🇳"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 835, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function f5()
	 gg.clearResults()
function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"能量剑改地形编辑器"}, 
{12005, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{10500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end 

function f6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15057}})
	 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end

function f7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
	 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end
function f8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 6}})
	 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end

function f9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("132", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 13502}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function f10()
as = gg.prompt({"输入要更改物品的代码，创造别人房间能用 ，生存只能自己房间"}
,{[1]="12550"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=15056,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
	 end
	 
	 function f11()
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改桃木图腾"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 1049, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end
function f12() local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."🇨🇳🔥联机取物1🇨🇳"..sjbq,
    [2] = sjbq.."🇨🇳🔥联机取物2🇨🇳"..sjbq,
    [3] = sjbq.."🇨🇳🔥️退 出 脚 本🇨🇳"..sjbq,
},2018,os.date("联机取物                               🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY == 1 then as1() end
if SY == 2 then as2() end
if SY == 3 then print("") os.exit() end
XGCK=0
end
function as1()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end

function as2()
dI=gg.prompt({"",""},{[1] = "【物品代码】15056",[2] = "【数量】1314"},{[1] = "number",[2] = "number"})   
Aa1 = dI[1] Aa2 = dI[2]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =16, ["type"] = 4},
{["value"] = Aa2, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x390, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x730, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end



function D()
SY1 = gg.choice({
	 "🇨🇳🔥解锁荧光弹弓~风华🇨🇳", 
     "🇨🇳🔥解锁圆球炸弹~风华🇨🇳", 
     "🇨🇳🔥解锁冰锥~风华🇨🇳", 
     "🇨🇳🔥解锁熔岩球~风华🇨🇳", 
     "🇨🇳🔥解锁脉冲弓~风华🇨🇳", 
     "🇨🇳🔥解锁黑龙熔岩球~风华🇨🇳", 
     "🇨🇳🔥解锁混乱熔岩球~风华🇨🇳", 
     "🇨🇳🔥解锁反光镜~风华🇨🇳", 
     "🇨🇳🔥解锁火箭背包~风华🇨🇳", 
     "🇨🇳🔥解锁公主床~风华🇨🇳", 
     "🇨🇳🔥解锁坚冰~风华🇨🇳", 
     "🇨🇳🔥解锁钢板~风华🇨🇳", 
     "🇨🇳🔥解锁金铁门~风华🇨🇳", 
     "🇨🇳🔥解锁白杨木门~风华🇨🇳", 
   	 "🇨🇳🔥返 回 神 界~俢仙🇨🇳",
 }, nil, "我这一次终究还是来的太迟，不该出现再插上一点说辞")
if SY1 == 1 then d1() end
if SY1 == 2 then d2() end
if SY1 == 3 then d3() end
if SY1 == 4 then d4() end
if SY1 == 5 then d5() end
if SY1 == 6 then d6() end
if SY1 == 7 then d7() end
if SY1 == 8 then d8() end
if SY1 == 9 then d9() end
if SY1 == 10 then d10() end
if SY1 == 11 then d11() end
if SY1 == 12 then d12() end
if SY1 == 13 then d13() end
if SY1 == 14 then d14() end
if SY1 == 15 then Main() end

GLWW=-1
end


function d1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12589;136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【荧光弹弓】出来测试一下！")
	 gg.clearResults()
end

function d2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15506;137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【圆球爆弹】出来测试一下！")
	 gg.clearResults()
end

function d3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15507;138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【冰锥】出来测试一下！")
	 gg.clearResults()
end

function d4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15508;139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【熔岩球】出来测试一下！")
	 gg.clearResults()
end

function d5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12291;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【脉冲弓】出来测试一下！")
	 gg.clearResults()
end

function d6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15519;141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【黑龙熔岩球】出来测试一下！")
	 gg.clearResults()
end

function d7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15520;142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【混乱熔岩球】出来测试一下！")
	 gg.clearResults()
end

function d8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1060;143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【反射镜】出来测试一下！")
	 gg.clearResults()
end

function d9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("火箭背包解锁成功")
	 gg.clearResults()
end

function d10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("公主床解锁成功")
	 gg.clearResults()
end

function d11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function d12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function d13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function d14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end


function G()
SY1 = gg.choice({
	 "🇨🇳🔥开启人物大小～风华🇨🇳",
	 "🇨🇳🔥开启地心人走路～风华🇨🇳",
	 "🇨🇳🔥关闭地心人走路～风华🇨🇳",
	 "🇨🇳🔥开启宠物修改～风华🇨🇳",
	 "🇨🇳🔥无限召唤坐骑～风华🇨🇳",
	 "🇨🇳🔥人 物 附 身～风华🇨🇳",
	 "🇨🇳🔥上 帝 视 角～风华🇨🇳",
	 "🇨🇳🔥返 回 神 界~俢仙🇨🇳",
 }, nil, "每年桃花开的时候，我都会想起一个人🇨🇳")
if SY1 == 1 then g1() end
if SY1 == 2 then g2() end
if SY1 == 3 then g3() end
if SY1 == 4 then g4() end
if SY1 == 5 then g5() end
if SY1 == 6 then g6() end
if SY1 == 7 then g7() end
if SY1 == 8 then Main() end

GLWW=-1
end

function g1()
b = gg.prompt({"请设置自己人物大小"}
,{[1]=5},{[1]="number"})[1]
c = gg.prompt({"请输入自己迷你号"}
,{[1]=5},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "人物大小"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -640, ["type"] = 4},

{["lv"] = c, ["offset"] = -1044, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -768, ["type"] = F},
}
xqmnb(qmnb)
end

function g2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
	 gg.toast("你变成了地心人")
	 gg.clearResults()
end

function g3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})
	 end
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function g4()
b = gg.prompt({"请输入宠物代码或其他生物代码（下面默认代码为五一商人）"}
,{[1]=3017},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},

{["lv"] = 10001, ["offset"] = 80, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function g5()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限召唤坐骑"},
{["value"] = 1616732188, ["type"] = 4},
{["lv"] = 1750689816, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},}
xqmnb(qmnb)
gg.toast("请点开编辑器继续️")
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
qmnb = {
{["memory"] = 16384},
{["name"] = "无限召唤坐骑"},
{["value"] = 1616732188, ["type"] = 4},
{["lv"] = 1750689816, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 12.81839370728, ["offset"] = -4, ["type"] = 16},}
xqmnb(qmnb)
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
 Main()
end
end
end
end
end


function g6()
b = gg.prompt({"🥖请设置要附身的人的迷你号🥖"}
,{[1]=666},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "附身"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 1, ["offset"] = -948, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -768, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -1044, ["type"] = 4},
}
xqmnb(qmnb)
end

function g7()
A= gg.prompt({"🥖请输入你要的倍数🥖改成500恢复"}
,{[1]=50},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "上帝视角"},
{["value"] =1138819072, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A1, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function H() 
SN = gg.prompt({
	 "☠︎子 弹 穿 墙(房主)☠︎",
	 "☠︎狙击枪无后座连发☠︎",
	 "☠︎怒海狙击地图连发☠︎",
	 "☠︎三 角 透 视☠︎",
	 "☠︎超 远 攻 击☠︎",
	 "☠︎人 物 上 色☠︎",
	 "☠︎天 空 变 黑☠︎",
	 "☠︎锁 定 高 度☠︎",
	 "☠︎隔 空 打 人☠︎",
	 "☠︎改 分 数☠︎",
	 "☠︎枪 强 化☠︎",
	 "☠︎龙 哥 自 瞄☠︎",
	 "☠︎看 清 一 切(透视)☠︎",
	 "☯隐 身️ (高度7)☠︎",
	 "☠︎死 亡 动 作☠︎",
	 "☯解 除 拉 黑️☠︎",
	 "☯攻 击 穿 方 块☠︎",
	 "☠︎方 块 透 视☠︎",
	 "☠︎自 动 开 倍 镜☠︎",
	 "🎡返 回 主 页🎡",
  },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
 if SN == nil then else
if SN[1]==true then d1() end
if SN[2]==true then d2() end
if SN[3]==true then d3() end
if SN[4]==true then d4() end
if SN[5]==true then d5() end
if SN[6]==true then d6() end
if SN[7]==true then d7() end
if SN[8]==true then d8() end
if SN[9]==true then d9() end
if SN[10]==true then d10() end
if SN[11]==true then d11() end
if SN[12]==true then d12() end
if SN[13]==true then d13() end
if SN[14]==true then d14() end
if SN[15]==true then d15() end
if SN[16]==true then d16() end
if SN[17]==true then d17() end
if SN[18]==true then d18() end
if SN[19]==true then d19() end
if SN[20]==true then Main() end end
FX1=0 end



 function d19()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("75;0;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 75}})
	 end
	 gg.toast("宝我喜欢你......")
	 gg.clearResults()
end




function d18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10;30000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("宝,乖不闹")
	 gg.clearResults()
end


function d17()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "攻击穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "攻击穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function d16()
qmnb = {
{["memory"] = 4},
{["name"] = "解除拉黑"},
{["value"] = 1080, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -16, ["type"] = 4},
{["lv"] = 2092, ["offset"] = -4, ["type"] = 4},
{["lv"] = 524296, ["offset"] = 44, ["type"] = 4},

}
qmxg = {
{["value"] = 16777216, ["offset"] = -16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function d15() 
qmnb = {
{["memory"] = 4},
{["name"] = "死亡动作"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 16777217, ["offset"] = -80, ["type"] = 4},
}
xqmnb(qmnb)
end 

function d14()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7000D;16777472D;1065353216D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("隐身（高度7）开启成功")
	 gg.clearResults()
end




function d13()
editData(
{
{["memory"] = 16384},
{["name"] = "透视"},
{["value"] = 1953066601, ["type"] = D},
{["lv"] = 0,["offset"] =4, ["type"] = D},
{["lv"] = 0,["offset"] =8, ["type"] = D},
{["lv"] = 1,["offset"] =12, ["type"] = D},
},
{
{["value"] = 1,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = -99,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function d12()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
end
function d11()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627249087.lua").content))
gg.clearResults()
end
function d10()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "🔥🎡返回主页🎡🔥",},2018,os.date("☣️龙哥☣️️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  mvi3() end
if m3==4 then  mvi4() end
if m3==5 then  mvi5() end
if m3==6 then  mvi6() end
if m3==7 then  Main() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("龙哥最帅")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("龙哥最帅")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("龙哥最帅")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("龙哥最帅")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("龙哥最帅")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
local tb2 = {{mn2, -40  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("龙哥最帅")
	 gg.clearResults()
end

function d9()
qmnb = {
{["memory"] = 4},
{["name"] = "隔空打人"},
{["value"] = -1778398720, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1660954112, ["offset"] = 12, ["type"] = 4},
{["lv"] = 1895812768, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 17, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function d8() 
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "锁定高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 800, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("加上超远攻击直接乱杀")
end

function d7() 
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空变黑"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空变黑"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0.400000000596, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 end
end



function d6() 
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "人物上色"},
{["value"] = 472408120, ["type"] = 4},
{["lv"] = 1075844388, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "人物上色"},
{["value"] = 472408120, ["type"] = 4},
{["lv"] = 1075844388, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end

function d1()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
end
function d2()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end

function d3()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 65536100, ["type"] = 4},
{["lv"] = 15004, ["offset"] = -68, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 68, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 0, ["type"] = 4},
{["value"] =0, ["offset"] = 32, ["type"] = 4},
{["value"] =0, ["offset"] = 28, ["type"] = 4},
{["value"] =1, ["offset"] = 64, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x6, ["type"] = 2},
}	
 xqmnb(qmnb)
end
function d4() 
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 32768},
{["name"] = "三角透视"},
{["value"] = 196608, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 196610, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 32768},
{["name"] = "三角透视"},
{["value"] = 196608, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] = 12, ["type"] = 4},
{["lv"] = 196610, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 65536, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end
function d5()
qmnb = {
{["memory"] = 16384},
{["name"] = "超远攻击"},
{["value"] =1137180672, ["type"] = 4},
{["lv"] = 1140457472, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=9999,["offset"]=0,["type"]=16, ["freeze"] = true},
{["value"]=9999,["offset"]=12,["type"]=16, ["freeze"] = true},
}
xqmnb(qmnb)
end

while(true)do
if gg.isVisible(true) then
XGCK=1
gg.toast("加入二改")
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end