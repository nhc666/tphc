function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/永恒配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/永恒配置文件.txt"):read("*a") zh = a:match("🌀(.-)🌀") if a == "" then zh = "" end end
dI=gg.prompt({"🌀输入你的迷你号🌀","🧊播放热歌🧊"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/永恒配置文件.txt", "w") io.open("/sdcard/永恒配置文件.txt", "w"):write("🌀" .. zh .. "🌀"):close()
b=a 
gg.toast("当前迷你号:"..b.."真不错诶づ♡ど")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🍭","🧸","🍓","💎","🐳","🐶","🇨🇳","💮","☁️","🍫","🏅","💗","🌃","🧊","🌠","🐼",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] 
SY = gg.choice({
   [1] = sjbq.."🌟🌃『房主科技』🌃🌟"..sjbq,
   [2] = sjbq.."🌟🌃『联机科技』🌃🌟"..sjbq,
   [3] = sjbq.."🌟🌃『狙神科技』🌃🌟"..sjbq,
   [4] = sjbq.."🌟🌃『娱乐整合』🌃🌟"..sjbq,
   [5] = sjbq.."🌟🌃『播放音乐』🌃🌟"..sjbq,
   [6] = sjbq.."🌟🌃『生存科技』🌃🌟"..sjbq,
   [7] = sjbq.."🌟🌃『笔刷专区』🌃🌟"..sjbq,
   [8] = sjbq.."🌟🌃『代码查询』🌃🌟"..sjbq,
   [9] = sjbq.."🌟🌃『切换辅助』🌃🌟"..sjbq,
   [10] = sjbq.."🌟🌃『特别感谢』🌃🌟"..sjbq,
   [11] = sjbq.."🌟🌃『查询天气』🌃🌟"..sjbq,
   [15] = sjbq.."🌟🌃『退出脚本』🌃🌟"..sjbq
},2018,os.date("🍡御神阁群号:982461824🍡\n🧊华夏时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY == 15 then Exit() end
if SY == 1 then A() end
if SY == 2 then B() end
if SY == 3 then C() end
if SY == 4 then D() end
if SY == 5 then E() end
if SY == 6 then Main4() end
if SY == 7 then Main5() end
if SY == 8 then Main6() end
if SY == 9 then Main7() end
if SY == 10 then Main8() end
if SY == 11 then Main9() end

XGCK=-1
end


function A()
SY = gg.multiChoice({
'🍭40人房间🍭',
'🍭坐骑属性🍭',
'🍭上降飞行🍭',
'🍭上降飞行复原🍭',
'🍭反向灵魂🍭',
'🍭改变实体大小🍭',
'🍭无限血量🍭',
'🍭首格改坐骑🍭',
'🍭自定义宠物🍭',
'🍭位置添加坐骑🍭',
'返回上一页'},
nil,'💗披星戴月路过山水万城，祝自己与温柔重逢💗')
if SY == nil then else
if SY[1] == true then HS1() end
if SY[2] == true then HS2() end
if SY[3] == true then a3() end
if SY[4] == true then a4() end
if SY[5] == true then a5() end
if SY[6] == true then a6() end
if SY[7] == true then a7() end
if SY[8] == true then a8() end
if SY[9] == true then a9() end
if SY[10] == true then a10() end
if SY[13] == true then HOME() end
end
GLWW=-1
end





function HS1()
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
gg.toast("开启成功")
end




function HS2()
hj = gg.prompt({"🐉输入坐骑代码🐉"}
,{[1]=3451},{[1]="number"})[1]
yu = gg.prompt({"🐉请输入要修改的血量🐉"}
,{[1]=9999},{[1]="number"})[1]
w = gg.prompt({"🐉请输入要修改的速度🐉"}
,{[1]=300},{[1]="number"})[1]
s = gg.prompt({"🐉请输入要修改的跳跃能力🐉"}
,{[1]=70},{[1]="number"})[1]
j = gg.prompt({"🐉请输入要修改的坐骑buff属性代码🐉"}
,{[1]=3510},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x345F89, 0xB0, 0x164}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = hj}})
gg.setValues({{address = ttt, flags = 4, value = yu}})
gg.setValues({{address = ttt, flags = 4, value = w}})
gg.setValues({{address = ttt, flags = 4, value = s}})
gg.setValues({{address = ttt, flags = 4, value = j}})
gg.toast("开启成功")
	 gg.clearResults()
end



function a3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.57505947e-42;15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("🐉飞行上降修改成功...🐉")
	 gg.clearResults()
end



function a4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.57505947e-42;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 15}})
	 end
	 gg.toast("🐉上降复原成功...🐉")
	 gg.clearResults()
end



function a5()
b = gg.prompt({"🐉请飞到700高度再开启。不懂勿动🐉"}
,{[1]=-450},{[1]="number"})[1]
c = gg.prompt({"🐉请输入自己迷你号🐉"}
,{[1]=5},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "反向"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -640, ["type"] = 4},

{["lv"] = c, ["offset"] = -1044, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -768, ["type"] = F},
}
xqmnb(qmnb)
end

function a6()
dI=gg.prompt({"",""},{[1] = a,[2] = "【这里是大小】5"},{[1] = "number",[2] = "number"})   
zh1 = dI[1] zh2 = dI[2] 
qmnb = {
{["memory"] = 4},
{["name"] = "改实体大小"},
{["value"] = zh1, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = zh2, ["offset"] = 0x140, ["type"] = 16},
}
xqmnb(qmnb)
end


function a7() 
qmnb = {
{["memory"] = 4},
{["name"] = "无限血量"},
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




function a8()
o2= gg.choice({
    "𒅒🐾化石龙🐾𒅒",
    "𒅒🐾机灵飞鼠🐾𒅒",
    "𒅒🐾瑞祥麒麟🐾𒅒",
    "𒅒🐾陆行鸟🐾𒅒",
    "𒅒🐾️大白象 🐾𒅒",    
    "𒅒 🐾超能海豹 🐾𒅒",
    "𒅒 🐾舞狮猫猫🐾 𒅒",
    "𒅒 🐾星河天马 🐾𒅒",
    "𒅒 🐾桃香扇缘 🐾𒅒",
    "𒅒 🐾深渊咆哮 🐾𒅒",
    "𒅒 🐾皎月仙宫 🐾𒅒",
    "𒅒 🐾冰雪传说 🐾𒅒",   
    "𒅒 🐾缤纷幻想 🐾𒅒",
    "𒅒 🐾福运哞哞 🐾𒅒",
    "𒅒 💎浮游山海 💎𒅒",
    "𒅒 💎镜花水月 💎𒅒",
    "𒅒 ⭕️鹿王本身 ⭕𒅒", 
     "𒅒 ⭕️精灵南瓜车 ⭕𒅒", 
      "𒅒💎竹 蜻 蜓 💎𒅒",   
      "𒅒 💎️曦光绘梦 💎𒅒",  
      "𒅒 💎裂空机甲 💎𒅒",
      "𒅒 💎星河机甲 💎𒅒",
      "𒅒 ⭕️无敌旋风 ⭕𒅒",
     "𒅒 ⭕环海洛洛 ⭕𒅒",
     "𒅒 💎环海洛洛-进阶 💎𒅒",
     "𒅒 🌐自定义坐骑 🌐𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒失去了太多，都不知道活着为了谁𒅒"))
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
if o2==24 then o=4525 o4() end
if o2==25 then o=4526 o4() end
if o2==26 then  zdy() end
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




function a9()
b = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
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


function a10()
zqwz = gg.prompt({"坐骑位置   位置一~30.0  位置二~184.0  位置三~338.0"}
,{[1]=30.0},{[1]="number"})[1]
zqdm = gg.prompt({"坐骑代码     3434-敏捷小飞鼠3435-机智小飞鼠3436-麒麟3437-普通麒麟3438-祥瑞麒麟3439-小陆行鸟3440-迅捷陆行鸟3441-跃动陆行鸟3442-小白象3443-欢乐白象3444-盛典白象3445-海豹水手3446-海豹船长3447-超能海豹3448-擎天柱(游戏版本过低)3449-擎天柱3450-威震天(游戏版本过低)3451-威震天3452-大黄蜂(游戏版本过低)3453-大黄蜂3454-猫宝宝3455-福袋猫猫3456-舞狮猫猫3457-天马宝宝3458-神圣天马3459-星河天马3460-青竹坐台3461-富贵金轿3462-桃香扇缘3463-红蜘蛛(游戏版本过低)3464-红蜘蛛3465-热破(游戏版本过低)3466-热破3467-惊破天(游戏版本过低)3468-惊破天3469-大地领主3470-炎狱魔龙3471-深渊咆哮3472-钢锁3473-钢锁3474-飞标3475-飞标3476-嚎叫3477-嚎叫3478-月明星稀3479-玉兔桃花3480-皎月仙宫3481-兔子先生拉比3482-兔子先生拉比3483-暖冬祝福3484-圣夜惊喜3485-冰雪传说3486-缤纷幻想3487-缤纷幻想3488-福运哞哞3489-福运哞哞3490-攀崖观日3491-北辰荧火3492-浮游山海3493-牛魔王3494-牛魔王3495-步步生莲3496-飞花踏雪3497-镜花水月"}
,{[1]=3434},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑修改"},
{["value"] = 132.0, ["type"] = 16},
{["lv"] = 393222, ["offset"] = 8, ["type"] = 4},
{["lv"] = zqwz, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -52, ["type"] = 4, ["freeze"] = true},
{["value"] = zqdm, ["offset"] = 212, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function B()
SY = gg.multiChoice({
'🌃秒睡天亮🌃',
'🌃定住生物『开』🌃',
'🌃定住生物『关』🌃',
'🌃添加火箭背包🌃',
'🌃联机取物🌃',
'🌃时间加速🌃',
'🌃全装无CD🌃',
'🌃解锁所有图鉴🌃',
'🌃联机改装扮🌃',
'🌃无限物品&箱子界面🌃',
'🌃动态可发布图片🌃',
'🌃上帝视角🌃',
'🌃观战模式🌃',
'🌃黑色天空🌃',
'🌃天眼模式🌃',
'🌃黄金天空🌃',
'🌃临时改名1🌃',
'🌃临时改名2『先1后2』🌃',
'🌃添加棉棉披风（加速）『小晨原创』🌃',
'🍭返回上一页🍭'},
nil,'联机功能1.0『恒少更新中…』')
if SY == nil then else
if SY[1] == true then b1() end
if SY[2] == true then b2() end
if SY[3] == true then b3() end
if SY[4] == true then b4() end
if SY[5] == true then b5() end
if SY[6] == true then b6() end
if SY[7] == true then b7() end
if SY[8] == true then b8() end
if SY[9] == true then b9() end
if SY[10] == true then b10() end
if SY[11] == true then b11() end
if SY[12] == true then b12() end
if SY[13] == true then b13() end
if SY[14] == true then b14() end
if SY[15] == true then b15() end
if SY[16] == true then b16() end
if SY[17] == true then b17() end
if SY[18] == true then b18() end
if SY[19] == true then b19() end
if SY[30] == true then HOME() end
end
GLWW=-1
end



function b1()

editData(
{
{["memory"] = 1},
{["name"] = "秒睡天亮"},
{["value"] = -105669999, ["type"] = D},
{["lv"] = 105669999,["offset"] =4, ["type"] = D},
{["lv"] = 6233,["offset"] =-1, ["type"] = D},
{["lv"] = 16777216,["offset"] =0, ["type"] = D},
},
{
{["value"] = 16777472,["offset"] =0, ["type"] = D,["freeze"] = false},
{["value"] = 6233,["offset"] =-1, ["type"] = D,["freeze"] = false},
{["value"] = 0,["offset"] =-0XC, ["type"] = D,["freeze"] = false},
}
)
gg.toast("开启成功")
end



function b2()
editData(
{
{["memory"] = 1},
{["name"] = "定住生物开"},
{["value"] = 220, ["type"] = 16},
{["lv"] = 10,["offset"] =4, ["type"] = 16},
{["lv"] = 60,["offset"] =-4, ["type"] = 16},
},
{
{["value"] = 0,["offset"] =-0XCA, ["type"] = 16,["freeze"] = false},
{["value"] = 0,["offset"] =-0XCB, ["type"] = 16,["freeze"] = false},
}
)
gg.toast("开启成功")
end



function b3()

editData(
{
{["memory"] = 1},
{["name"] = "定住生物关"},
{["value"] = 220, ["type"] = 16},
{["lv"] = 10,["offset"] =4, ["type"] = 16},
{["lv"] = 60,["offset"] =-4, ["type"] = 16},
},
{
{["value"] = 60,["offset"] =16, ["type"] = 16,["freeze"] = false},
{["value"] = -1,["offset"] =-4, ["type"] = 16,["freeze"] = false},
}
)
gg.toast("开启成功")
end



function b4()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"]=12253,["type"]=4},
{["lv"]=0,["offset"]=4,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
{["lv"]=4,["offset"]=12,["type"]=4},
}
qmxg={
{["value"]=12253,["offset"]=0,["type"]=4,["freeze"] = true}
} xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==12253 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加火箭背包"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 600, ["offset"] = 8, ["type"] = 4},
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end


function b5()
 local sjbq=bqt[math.random(1,#bqt)]SY = gg.choice({
    [1] = sjbq.."𒅒🌃成就金奖杯🌃𒅒"..sjbq,
    [2] = sjbq.."𒅒🌃自定义取物🌃𒅒"..sjbq,
    [3] = sjbq.."𒅒🌃退 出 🌃𒅒"..sjbq,
},2018,os.date("🌃先用1改出奖杯🏆在用2🌃        🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY == 1 then a1() end
if SY == 2 then a2() end
if SY == 3 then print("开启成功") os.exit() end
XGCK=0
end
function a1()
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

function a2()
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

function b6()
F = gg.alert("请选择｛开 关｝", "开", "️关")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "时间加速"},
{["value"] = 1203187456, ["type"] = 4},
{["lv"] = 1, ["offset"] = -60, ["type"] = 4},
{["lv"] = 1, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = 1200, ["offset"] = -60, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "时间加速"},
{["value"] = 1203187456, ["type"] = 4},
{["lv"] = 1200, ["offset"] = -60, ["type"] = 4},
{["lv"] = 1, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -60, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end
end



function b7()
editData(
{
{["memory"] = 1},
{["name"] = "全装无cd"},
{["value"] = -4066576100000, ["type"] = -0XC},
{["lv"] = 999,["offset"] =-0XCA, ["type"] = 64},
{["lv"] = -105566767,["offset"] =0XCA, ["type"] = 64},
},
{
{["value"] = 0,["offset"] =-0XCA, ["type"] = 64,["freeze"] = false},
{["value"] = 0,["offset"] =4, ["type"] = 64,["freeze"] = false},
}
)
gg.clearResults()
end


function b8()
qmnb = {
{["memory"] = 4},
{["name"] = "图鉴解锁"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 5, ["offset"] = 356, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end



function b9()
mnsj={}
mnsj.qq=gg.prompt({"输入迷你号领取皮肤","输入皮肤号1胖达2齐天小圣3兔美美4迷斯拉5琉璃奖6乔治7墨家小飞8安妮9德古拉10叮叮当11荒野猎人12羽姬13慕容啸天14乔一 15篮球队长 16啦啦队长 17露西 18黑帽子船长 19甜心玛丽 20锦衣卫 21花小楼 22莉莉丝 23月无双 24叶小龙 25二狼神 26鱼小乐 27迷俊俊 28幻音 29幻0式 30柳仙儿 31帕普奇 32米娜 33雪人 34嘟嘟啵啵 35啵啵 36嘟嘟 37梦歌 38斩浪 39天使 40暗灵 50乔克 51小艾 52秦天柱 53威震天 54慕斯 55金悠悠 56喜团团 57林千树 58大黄蜂 59花幽幽 60星灵 61雪球球 62爱丽丝 63龟太郎 64红蜘蛛 65热破 66惊破天 67劳尔 68铃音 69清弦 70紫悦 71宇宙公主 72柔柔女孩 73月亮公主 74钢索 75飞镖 76嚎叫 77达奇 78塔琳娜 79森林隐者 80兔子拉比 81碧琪 82卡洛尔 83余小环 84章小丸 85熊小吉 86星光熠熠 87云宝 88音韵公主 89初慕 90冲云霄 96大无畏 91 利爪 92富余人物2/ 93富余人物3/ 94富余人物4/ 95副余人物5/ 91富余人物6/ 97富余人物7/ 98富余人物8/ 99富余人物9/ 100富余人物10/ 101富余人物11/ 102圣婴 103牛魔王 104灵瑶 105小红帽 106迷小酷 107狼少年 108天仙子/雅 109天仙子/颂 110红玫瑰少女 111 橘子/112绣球花少年查李斯 113泡泡 114朝露繁花 115冰公主 116红桃 117白光莹 118灰姑娘 119叶罗 120小龙人   121时☕ 122白天🐊 126初代 "},mnsj.qqa)if mnsj.qq then 
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


function b10()
SN = gg.multiChoice({
        "🧊第一个无限物品🧊",
              "🧊箱子界面🧊",          
	  "🥳返 回 主 页🥳",
 }, nil, "❤️为啥都是我保护别人，没人保护我呢？💋")
if SN == nil then else
if SN[1]==true then xc1() end
if SN[2]==true then xc2() end
	 if SN[3]==true then Main() end end
 FX=0 end

function xc1()
gg.toast("请选择复刻物品开关")
F = gg.alert("🔰请选择复刻第一格物品｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🔰功 能 指 南🔰\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
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

function xc2()
qmnb = {
{["memory"] = 4},
{["name"] = "联机箱子"},
{["value"] = 5519032975372, ["type"] = 32},
{["lv"] = 16777216, ["offset"] = -392, ["type"] = 4},}
qmxg = {
{["value"] = 16777472, ["offset"] = -392, ["type"] = 4},
}
xqmnb(qmnb)
end


function b11()
gg.alert("🧊先点击动态发布按钮🧊","🍁️开启🍁️️")
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("65536;65792;421;16777216;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("16777472", gg.TYPE_DWORD)
	 gg.toast("动态链接图片:修改成功,共修改2条数据")
	 gg.clearResults()
end



function b12()
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



function b13()
gg.toast("请选择观战模式开关")
F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end



function b14()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("280.0;0.400000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.400000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -9999}})
	 end
	 gg.toast("天空变黑修改成功")
	 gg.clearResults()
end

function b15()
   gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("天眼开启成功")
	 gg.clearResults()
end

function b16()
   gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("黄金无敌大旋风天空壁纸")
	 gg.clearResults()
end



function b17()
mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = lq, ["type"] = 4},
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










{["value"] = mnmz, ["offset"] = 65, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
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
{["value"] = 245838898, ["offset"] = 60, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)





gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, gg.TYPE_BYTE)
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end

function b18()
mnmc2 = ":w"
mnmcc = gg.prompt({"要开启临时改名①这个才有效果"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = 245838898,  ["type"] = 4},
{["lv"] = 245838898, ["offset"] = 0,  ["type"] = 4},
}

qmxg = {
{["value"] = mnmc2, ["offset"] = 5,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 6,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 7,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 8,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 9,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 10,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 11,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 12,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 13,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 14,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 15,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 16,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 17,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 18,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 19,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 20,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 21,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 22,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 23,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 24,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 25,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 26,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 27,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 28,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 29,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 30,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 31,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 32,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 33,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 34,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 35,   ["type"] = 1},
{["value"] = mnmc2, ["offset"] = 36,   ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end
function b19()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"]=12253,["type"]=4},
{["lv"]=0,["offset"]=4,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
{["lv"]=4,["offset"]=12,["type"]=4},
}
qmxg={
{["value"]=12279,["offset"]=0,["type"]=4,["freeze"] = true}
} xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==12279 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加棉棉披风-小晨原创"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 600, ["offset"] = 8, ["type"] = 4},
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end end

function C()
SY = gg.multiChoice({
'🌃隔空打人『打方块』🌃',
'🌃狙击无后座🌃',
'🌃附身🌃',
'🧊狙击功能『整合』🧊',
'🌀狙击基址功能『整合』🌀',
'🍭返回上一页🍭'},
nil,'💔你眼中倒映的星河烂漫，是我不曾见过的世外桃源💔')
if SY == nil then else
if SY[1] == true then c1() end
if SY[2] == true then c2() end
if SY[3] == true then c3() end
if SY[4] == true then c4() end
if SY[5] == true then c5() end
if SY[13] == true then HOME() end
end
GLWW=-1
end



function c1()
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
gg.toast("开启成功")
end



function c2()
qmnb = {
{["memory"] = 4},
{["name"] = "无后座"},
{["value"] = 1171963904, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1155186688, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -24, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功")
end



function c3()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "🌸吸人🌸"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 116, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end



function c4()
SN = gg.multiChoice({
'🌀🧊改分数🧊🌀',
'🌀🧊观战模式🧊🌀',
'🌀🧊狙击连发🧊🌀',
'🌀🧊怒海连发🧊🌀',
'🌀🧊人物上色🧊🌀',
'🌀🧊三角透视🧊🌀',
'🌀🧊子弹穿墙🧊🌀',
'🌀🧊狙击强化🧊🌀',
'🌀🧊冲锋强化🧊🌀',
'🌀🧊重机强化🧊🌀',
'🌀🧊修改队伍🧊🌀',
'🌀🧊灵魂出窍🧊🌀',
'🌀🧊锁高度🧊🌀',
'🌀🧊狙击一件套🧊🌀',
'🌀🧊锁血🧊🌀',
"🌐返 回 主 页🌐",
}, nil, "山河拱手，为君一笑")
 if SN == nil then else
if SN[1]==true then	 jj1() end
if SN[2]==true then	 jj2() end
if SN[3]==true then	 jj3() end
if SN[4]==true then	 jj4() end
if SN[5]==true then	 jj5() end
if SN[6]==true then	 jj6() end
if SN[7]==true then	 jj7() end
if SN[8]==true then	 jj8() end
if SN[9]==true then	 jj9() end
if SN[10]==true then	 jj10() end
if SN[11]==true then	 jj11() end
if SN[12]==true then	 jj12() end
if SN[13]==true then	 jj13() end
if SN[14]==true then	 jj14() end
if SN[15]==true then	 jj15() end
if SN[16]==true then	 Main() end
end
FX=0 end


function jj1()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️凉情·小晨⚠️"))
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
	 gg.toast("吔屎啦你")
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
 gg.toast("吔屎啦你")
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
gg.toast("吔屎啦你")
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
gg.toast("吔屎啦你")
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
gg.toast("吔屎啦你")
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
gg.toast("吔屎啦你")
	 gg.clearResults()
end



function jj2()
gg.toast("请选择观战模式开关")
F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end


function jj3()
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
	
function jj4()
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




function jj5()
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


function jj6()
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
function jj7()
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



function jj8()
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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


function jj9()
 A5 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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


function jj10()
 A6 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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







function jj11()
   mn1=gg.prompt({"『请输入你的迷你号』"},{'1290473051'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入你现在的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
gg.clearResults()
mn3=gg.prompt({"『请输入你要改成的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{mn1, 0}, {mn2, 244},}
local tb2 = {{mn3, 244  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end



function jj12()
s = gg.prompt({"请输入要修改的大小"}
,{[1]=6},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "灵魂出窍"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -216, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -368, ["type"] = 4},
}
qmxg = {
{["value"] = s, ["offset"] = -368, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end




function jj13()
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


function jj14()
qmnb = {
{["memory"] = 16384},
{["name"] = "生物透视+生物上色+生物方框"},
{["value"] = 1953066601, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] =12 , ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 8, ["type"] = 4},
{["value"] = -99, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
end

function jj15()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="房主锁血(开)"},
{["value"]=1041865114,["type"]=4},
{["lv"]=100,["offset"]=-252,["type"]=16}
}
qmxg={
{["value"]=2000,["offset"]=-256,["type"]=16,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
gg.toast("xs写法不支持解冻无法关闭")
xqmnb(qmnb)
gg.clearResults()
 
 end
 end





function c5()
SN = gg.prompt({
	 "🌀☠︎子 弹 穿 墙(房主)☠🌀︎",
	 "🌀☠︎狙击枪无后座连发☠🌀︎",
	 "🌀☠︎怒海狙击地图连发☠🌀︎",
	 "🌀☠︎三 角 透 视☠🌀︎",
	 "🌀☠︎超 远 攻 击☠🌀︎",
	 "🌀☠︎人 物 上 色☠🌀︎",
	 "🌀☠︎天 空 变 黑☠🌀︎",
	 "🌀☠︎锁 定 高 度☠🌀︎",
	 "🌀☠︎隔 空 打 人☠︎🌀",
	 "🌀☠︎改 分 数☠🌀︎",
	 "🌀☠︎枪 强 化☠🌀︎",
	 "🌀☠︎浮 梦 自 瞄☠︎🌀",
	 "🌀☠︎看 清 一 切(透视)☠︎🌀",
	 "🌀☯隐 身️ (高度7)☠🌀︎",
	 "🌀☠︎死 亡 动 作☠︎🌀",
	 "🌀☯解 除 拉 黑️☠🌀︎",
	 "🌀☯攻 击 穿 方 块☠🌀︎",
	 "🌀☠︎方 块 透 视☠︎🌀",
	 "🌀☠︎自 动 开 倍 镜☠🌀︎",
	 "🌀🌐返 回 主 页🌐🌀",
  },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
 if SN == nil then else
if SN[1]==true then fm1() end
if SN[2]==true then fm2() end
if SN[3]==true then fm3() end
if SN[4]==true then fm4() end
if SN[5]==true then fm5() end
if SN[6]==true then fm6() end
if SN[7]==true then fm7() end
if SN[8]==true then fm8() end
if SN[9]==true then d9() end
if SN[10]==true then fm10() end
if SN[11]==true then fm11() end
if SN[12]==true then fm12() end
if SN[13]==true then fm13() end
if SN[14]==true then fm14() end
if SN[15]==true then fm15() end
if SN[16]==true then fm16() end
if SN[17]==true then fm17() end
if SN[18]==true then fm18() end
if SN[19]==true then fm19() end
if SN[20]==true then Main() end end
FX1=0 end



 function fm19()
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




function fm18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10;30000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("宝,乖不闹")
	 gg.clearResults()
end


function fm17()
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

function fm16()
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



function fm15() 
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

function fm14()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7000D;16777472D;1065353216D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("隐身（高度7）开启成功")
	 gg.clearResults()
end




function fm13()
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




function fm12()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
end
function fm11()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627249087.lua").content))
gg.clearResults()
end
function fm10()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("明日之事无所惧，无论难或易️️"))
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
	 gg.toast("最帅")
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
 gg.toast("最帅")
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
gg.toast("最帅")
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
gg.toast("最帅")
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
gg.toast("最帅")
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
gg.toast("最帅")
	 gg.clearResults()
end

function fm9()
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
function fm8() 
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

function fm7() 
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



function fm6() 
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

function fm1()
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
function fm2()
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

function fm3()
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
function fm4() 
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
function fm5()
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



function D()
SY = gg.multiChoice({
'🍭🥳视觉特效专区🥳🍭',
'🍭😎娱乐联机专区😎🍭',
'🍭😇解锁道具专区😇🍭',
'🍭🥳副功能名称4😎🍭',
'🍭😎副功能名称5😎🍭',
'🍭返回上一页🍭'},
nil,'🍀已更三个主要功能🍀')
if SY == nil then else
if SY[1] == true then syyl1() end
if SY[2] == true then syyl2() end
if SY[3] == true then d3() end
if SY[4] == true then d4() end
if SY[5] == true then d5() end
if SY[13] == true then HOME() end
end
GLWW=-1
end




function syyl1()
menu1= gg.choice({
    "𒅒🔰紫色月亮🔰𒅒",
    "𒅒🔰碧琪特效🔰𒅒",
    "𒅒🔰绿色特效🔰𒅒",
    "𒅒🔰彩虹拖尾🔰𒅒",
    "𒅒🔰️蓝色特效🔰𒅒",
    "𒅒🔰️花小楼特效🔰𒅒",
    "𒅒🔰️冰公主特效🔰𒅒",
    "𒅒🔰️叶萝莉特效🔰𒅒",
    "𒅒🔰跳舞动作🔰𒅒",
    "𒅒🔰抱坐动作🔰𒅒",
    "𒅒🔰睡觉动作🔰𒅒",
    "𒅒🔰️欢呼动作🔰𒅒",    
    "𒅒🔰漂浮动作️🔰𒅒", 
    "𒅒🔰摸空气动作️🔰𒅒",
    "𒅒🔰抠鼻子动作🔰𒅒",
    "𒅒🔰️害羞动作🔰𒅒",    
    "𒅒🔰死亡动作️🔰𒅒", 
    "  🔰自定义动作🔰 ",
    "  🔰自定义特效🔰",
   "𒅒🔰恢复动作️特效🔰𒅒", 
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("爱意随风起，风止意难平"))
if menu1==1 then Q1=12 QQ1() end
if menu1==2 then Q1=13 QQ1() end
if menu1==3 then Q1=14 QQ1() end
if menu1==4 then Q1=15 QQ1() end
if menu1==5 then Q1=16 QQ1() end
if menu1==6 then Q1=17 QQ1() end
if menu1==7 then Q1=18 QQ1() end
if menu1==8 then Q1=19 QQ1() end
if menu1==9 then Q3=999479 QQ3() end
if menu1==10 then Q3=99999927 QQ3() end
if menu1==11 then Q3=3122 QQ3() end
if menu1==12 then Q3=954418 QQ3() end
if menu1==13 then Q3=42002 QQ3() end
if menu1==14 then Q3=222221442 QQ3() end
if menu1==15 then Q3=2167939 QQ3() end
if menu1==16 then Q3=1606835 QQ3() end
if menu1==17 then Q3=16777217 QQ3() end
if menu1==18 then Q3=gg.prompt({"输入动作代码"},{[1]=1606835},{[1]="number"})[1] QQ3() end
if menu1==19 then Q1=gg.prompt({"输入特效代码"},{[1]=12},{[1]="number"})[1] QQ1() end
if menu1==20 then Q3=0 QQ3()  gg.clearList() end
if menu1==21 then Main() end
XGCK=-1 end





function syyl2()
menu1 = gg.choice({
'💎防沉迷系统💎',
'💎自定义特效💎',
'💎玩家变动物💎',
'💎原秒复活💎',
'💎锁血关💎',
'💎暗色模式开💎',
'💎暗色模式关💎',
'💎无限脚印💎',
'💎禁解钩塞💎',
'💎无后座💎',
'💎家园果实徽章💎',
'💎锁血开[自己开房，不防人]💎',
'💎全部烧死开💎',
'💎全部烧死关💎',
'💎编辑器召唤boss💎',
'💎人物天线💎',
'💎外语翻译💎',
'💎自定修改脚印💎',
'💎自定加速💎',
'💎卡退房主💎',
'💎修改皮肤💎',
'💎自定义游戏音量💎',
'💎添加自定义坐骑💎',
'💎开关危险物品💎',
'💎开启足球模式💎',
'💎关闭足球模式💎',
'💎改皮肤【联机可用】💎',
'💎坐骑秒生蛋💎',
'💎鸡掉落坐骑蛋💎',
'💎改粉丝💎',
'💎玩家卡死💎',
'💎房主卡死💎',
'💎技能范围💎',
'💎挖矿专用/修复中💎',
'💎联机取物1💎',
'💎联机取物2💎',
'💎修改皮肤/💎',
'💎超级摇头💎',
'💎自动走路/测试💎',
'💎留言板刷屏💎',
'💎火箭背包/测试💎',
'💎4骑秒孵化💎',
'💎秒拿东西💎',
'💎人物浮空开💎',
'💎人物浮空关💎',
'💎精确瞄准💎',
'💎更多功能💎',
'💎水下无限氧💎',
'💎取消身份验证💎',
'❣💎返回辅助❣💎'},
nil,'怎么用？手和脑子啊！联机取物先开1后开2')
if menu1 == 1 then hhh1() end
if menu1 == 2 then hhh2() end
if menu1 == 3 then hhh3() end
if menu1 == 4 then hhh4() end
if menu1 == 5 then hhh5() end
if menu1 == 6 then hhh6() end
if menu1 == 7 then hhh7() end
if menu1 == 8 then hhh8() end
if menu1 == 9 then hhh9() end
if menu1 == 10 then hhh10() end
if menu1 == 11 then hhh11() end
if menu1 == 12 then hhh12() end
if menu1 == 13 then hhh13() end
if menu1 == 14 then hhh14() end
if menu1 == 15 then hhh15() end
if menu1 == 16 then hhh16() end
if menu1 == 17 then hhh17() end
if menu1 == 18 then hhh18() end
if menu1 == 19 then hhh19() end
if menu1 == 20 then hhh20() end
if menu1 == 21 then hhh21() end
if menu1 == 22 then hhh22() end
if menu1 == 23 then hhh23() end
if menu1 == 24 then hhh24() end
if menu1 == 25 then hhh25() end
if menu1 == 26 then hhh26() end
if menu1 == 27 then hhh27() end
if menu1 == 28 then hhh28() end
if menu1 == 29 then hhh29() end
if menu1 == 30 then hhh30() end
if menu1 == 31 then hhh31() end
if menu1 == 32 then hhh32() end
if menu1 == 33 then hhh33() end
if menu1 == 34 then hhh34() end
if menu1 == 35 then hhh35() end
if menu1 == 36 then hhh36() end
if menu1 == 37 then hhh37() end
if menu1 == 38 then hhh38() end
if menu1 == 39 then hhh39() end
if menu1 == 40 then hhh40() end
if menu1 == 41 then hhh41() end
if menu1 == 42 then hhh42() end
if menu1 == 43 then hhh43() end
if menu1 == 44 then hhh44() end
if menu1 == 45 then hhh45() end
if menu1 == 46 then hhh46() end
if menu1 == 47 then hhh47() end
if menu1 == 48 then hhh48() end
if menu1 == 49 then hhh50() end
if menu1 == 50 then Main() end
GLWW=-1
end

function hhh1()
qmnb = {
{["memory"] = 4},
{["name"] = "解除防沉迷"},
{["value"] = 9000, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh2()
b = gg.prompt({"特效代码11~19[自己输入]"}
,{[1]=12},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "特效"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 56, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 60, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = 64, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 68, ["type"] = 16},
{["lv"] = 2.802596928649634E-44, ["offset"] = 96, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 412, ["type"] = 16},
}
qmxg = {
{["value"] = b, ["offset"] = 192, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function hhh3()
b = gg.prompt({"🐔请输入生物代码玩家会变动物🐰"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "玩家变动物"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = -999,["offset"] =-152, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =-156, ["type"] = 16},
}
qmxg = {
{["value"] = b,["offset"] =-148, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh4()
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
function hhh5()
b = gg.prompt({"🍀下面是关闭锁血代码，不懂勿动🍀"}
,{[1]=100},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "锁血"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -24, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -268, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end
function hhh6()
		 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65536;16777472;1544;720;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
	 end
	 gg.toast("暗色模式开启成功")
	 gg.clearResults()
end
	 

function hhh7()
		 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65536;16777216;1544;720;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("暗色模式复原成功")
	 gg.clearResults()
end
function hhh8()
F=gg.alert("🔰请选择｛开 关｝🔰", "🍁开🍁", "🍁️关🍁️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("📌你未选择｛开 关｝")
else
end
if F==1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE7BD40
py1=0xE7BD44
setvalue(so+py,16,0)
setvalue(so+py1,16,0)
gg.toast("无限脚印:开启成功")
elseif F==2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE7BD40
py1=0xE7BD44
setvalue(so+py,16,200)
setvalue(so+py1,16,200)
gg.toast("无限脚印:开启成功")
end
end
function hhh9()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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
function hhh10()
qmnb = {
{["memory"] = 4},
{["name"] = "无后座"},
{["value"] = 1171963904, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1155186688, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -24, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh11()
o3= gg.choice({
    "🧊家园等级1🧊",
    "🧊️家园等级2🧊",
    "🧊️家园等级3🧊",
    "🧊家园等级4🧊",
    "🧊家园等级5🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("🧊请选择你当前的家园等级️🧊"))
if o3==1 then  cm1() end
if o3==2 then  cm2() end
if o3==3 then  cm3() end
if o3==4 then  cm4() end
if o3==5 then  cm5() end
if o3==6 then  Main() end
XGCK=-1 end
function hhh12()
b = gg.prompt({"🍀下面是锁血代码，不懂勿动🍀"}
,{[1]=2143289344},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "锁血"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -24, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -268, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function hhh13()
gg.toast("玩你妈")
qmnb ={
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "烧死玩家"},
{["value"] = 449005139, ["type"] = D},
{["lv"] = 1096368729,["offset"] =12, ["type"] = D},
},
{
{["value"] = 0,["offset"] =4, ["type"] = F,["freeze"] = false},
}
xqmnb(qmnb)
gg.clearResults()
end




function hhh14()
gg.toast()
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "烧死玩家关"},
{["value"] = 449005139, ["type"] = D},
{["lv"] = 1096368729,["offset"] =12, ["type"] = D},
},
{
{["value"] = 13.64119911194,["offset"] =4, ["type"] = F,["freeze"] = false},
}
xqmnb(qmnb)
gg.clearResults()
end


function hhh15()
 gg.toast("打开编辑器选择自然方块")
qmnb = {
{["memory"] = 4},
{["name"] = "召唤boss"},
{["value"] = 4294967410, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 0x30, ["type"] = 4},
{["lv"] = 10000, ["offset"] = 0x60, ["type"] = 4},
{["lv"] = 116, ["offset"] = 0x400, ["type"] = 4},
{["lv"] = 117, ["offset"] = 0x600, ["type"] = 4},
}
qmxg = {
{["value"] = 587, ["offset"] = 0, ["type"] = 4},
{["value"] = 588, ["offset"] = 0x400, ["type"] = 4},
{["value"] = 589, ["offset"] = 0x600, ["type"] = 4},
}
xqmnb(qmnb)
end
function hhh16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("898454573D;0.02816440724;6.81184387207;1;1.0441562e-9::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99999}})
	 end
end
function hhh17()
to1="内容为空"
to2="无效翻译模式"
ms1="英转中"
ms2="日转中"
ms3="韩转中"
ms4="法转中"
ms5="饿转中"
ms6="西班牙转中"
gg.alert("翻译模式简化指令<不支持中转其他>:\n\n1为英转中\n\n2为日转中\n\n........")
XGCK=-1
  Loikey= gg.prompt({
  '请输入翻译内容：',
    '请输入翻译模式：',
 }, {   
[1]="",
[2]="",
}, {"text", "text"})
nr=Loikey[1] 
ms=Loikey[2] 
if nr== "" then
gg.toast(to1)
print(to1)
return
elseif ms=="" then
gg.toast(to2)
print(to2)
return
elseif ms==ms1 or "1" then
gg.toast("翻译模式:"..ms1)
lx="EN2ZH_CN"
elseif ms==ms2 or "2" then
gg.toast("翻译模式:日转中")
lx="JA2ZH_CN"
elseif ms== ms3 or "3" then
gg.toast("翻译模式:韩转中")
lx="KR2ZH_CN"
elseif ms==ms4 or "4" then
gg.toast("翻译模式:法转中")
lx="FR2ZH_CN"
elseif ms==ms5 or "5" then
gg.toast("翻译模式:俄转中")
lx="RU2ZH_CN"
elseif ms==ms5 or "6" then
gg.toast("翻译模式:西班牙转中")
lx="SP2ZH_CN"
else
gg.alert("傲傲优秀")
return
end
url='http://m.youdao.com/translate'
post="inputtext=0"..nr.."&type="..lx
lw1=gg.makeRequest(url, nil, post).content
hood = lw1:match("<li>0(.-)</li>")
gg.alert("译文:\n"..hood)
print("傲傲优秀")
gg.copyText(hood, true)
end
function hhh18()
c = gg.prompt({"请输入皮肤代码,修改对应的皮肤脚印"}
,{[1]=29200},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "修改脚印"},
{["value"] = 100100, ["type"] = 4},
{["lv"] = 257, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = 100, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 108, ["type"] = 16},
{["lv"] = 100100, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = c, ["offset"] = -64, ["type"] = 4},
{["value"] = 100100, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = 100100, ["offset"] = 8, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh19()
AA3 = gg.prompt({"输入加数倍数"}
,{[1]=70},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "人物加速"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = AA3, ["offset"] = -0x28, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function hhh20()
gg.toast('正在调用房主卡死数据请稍后...')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.0078125E;1F;2,139,095,040D::30',16)
gg.searchNumber('1',16)
gg.getResults(5)
gg.editAll('1.3',16)
end

function hhh21()
mnsj={}
mnsj.qq=gg.prompt({"请输入迷你号","输入皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏       "},{[1]=""},{[1]="number"})if mnsj.qq then 
mnsj.qqa=mnsj.qq

qmnb = {
{["memory"] = 4},
{["name"] = "随便换一个角色"},
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
function hhh22()
ghsd = gg.prompt({"『请输入音量大小』改成1恢复"}
,{[1]=99},{[1]="number"})[1]
qmnb = {
{["memory"] = 16384},
{["name"] = "自定义音量"},
{["value"] = 796713791, ["type"] = 4},
{["lv"] = 452984692, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = ghsd, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
function hhh23()
zqwz = gg.prompt({"坐骑位置   位置一~30.0  位置二~184.0  位置三~338.0"}
,{[1]=30.0},{[1]="number"})[1]
zqdm = gg.prompt({"坐骑代码     3434-敏捷小飞鼠3435-机智小飞鼠3436-麒麟3437-普通麒麟3438-祥瑞麒麟3439-小陆行鸟3440-迅捷陆行鸟3441-跃动陆行鸟3442-小白象3443-欢乐白象3444-盛典白象3445-海豹水手3446-海豹船长3447-超能海豹3448猫宝宝3455-福袋猫猫3456-舞狮猫猫3457-天马宝宝3458-神圣天马3459-星河天马3460-青竹坐台3461-富贵金轿3462-桃香扇缘3463-大地领主3470-炎狱魔龙3471-深渊咆哮3472-月明星稀3479-玉兔桃花3480-皎月仙宫3481-暖冬祝福3484-圣夜惊喜3485-冰雪传说3486-缤纷幻想3487-缤纷幻想3488-福运哞哞3489-福运哞哞3490-攀崖观日3491-北辰荧火3492-浮游山海3493-步步生莲3496-飞花踏雪3497-镜花水月，其余自己搞代码"}
,{[1]=3434},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑修改"},
{["value"] = 132.0, ["type"] = 16},
{["lv"] = 393222, ["offset"] = 8, ["type"] = 4},
{["lv"] = zqwz, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -52, ["type"] = 4, ["freeze"] = true},
{["value"] = zqdm, ["offset"] = 212, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh24()
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
function hhh25()
zh1= gg.prompt({"请输入自己迷你号"},{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh1, ["type"] = 4},
{["lv"] = zh1, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function hhh26()
zh1= gg.prompt({"请输入自己迷你号"},{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh1, ["type"] = 4},
{["lv"] = zh1, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function hhh27()
m9= gg.choice({
    "🧊璎落切换其他皮肤🧊",
    "🧊熊小吉切换其他皮肤🧊",
    "🧊爱丽丝切换其他皮肤🧊",
    "🧊雷光切换其他皮肤🧊",
    "🧊凛冬切换其他皮肤🧊",    
    "🧊️妙妙改其他皮肤🧊",
    "🧊️自定义改其他皮肤🧊",
    " 🍀返回🍀 ",},2018,os.date("在别人房间换皮肤记得使用角色才有效果"))
if m9==1 then  q1() end
if m9==2 then  q2() end
if m9==3 then  q12() end
if m9==4 then  q4() end
if m9==5 then  q5() end
if m9==6 then  q6()  end
if m9==7 then  q10()  end
if m9==8 then  Main1() end
XGCK=-1 end

function q10()
aba2 = gg.prompt({"输入你正在使用的皮肤序号1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=146},{[1]="number"})[1]
aba3 = gg.prompt({"输入你要使用的皮肤序号-1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;aba2::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("aba2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("自定义修改皮肤失败")
	 gg.clearResults()
end




function q1()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用璎落皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;146;4D::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("146", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end

function q2()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用熊小吉皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;85::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("85", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end

function q12()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用爱丽丝皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;62;4D::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("62", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end
function q4()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用雷光皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;147;4D::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("147", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end


function q5()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用凛冬皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---136哈鲁，138-春雨，146-璎落"}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;148;4D::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("148", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end

function q6()
aba3 = gg.prompt({"输入你要使用的皮肤序号(游戏内切换角色就行了，注:修改前需使用妙妙皮肤，进房间改，需要接着改其他皮肤的，必须点有璎落皮肤的主页就行了。)---1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏  "}
,{[1]=136},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,080,344,576D;121;4D::200", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	  gg.searchNumber("121", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = aba3}})
	 end
	 gg.toast("皮肤修改成功")
	 gg.clearResults()
end
function hhh28()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！白九原创！")
	 gg.clearResults()
end
function hhh29()
SN = gg.multiChoice({
	 "【鸡掉落小天马坐骑蛋】",
	 "【鸡掉落轿子坐骑蛋】",
	 "【返回主界面】",
}, nil, "【为没有坐骑的玩家提供】【PS：必须打死该功能指定的生物】，白九原创")
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS32()
end
if SN[3]==true then
	 HS25()
end
FX1=0
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 957}})
	 end
	 gg.toast("修改成功！打【鸡】测试一下！")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 958}})
	 end
	 gg.toast("修改成功！打【鸡】测试一下！")
	 gg.clearResults()
end

function HS25()
	 Main()
end
function hhh30()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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
function hhh31()
gg.toast('正在调用玩家卡死数据请稍后...')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.60000002384F;0.44999998808F::5',16)
gg.searchNumber('0.44999998808',16)
gg.getResults(1000)
gg.editAll('0.95',16)
gg.toast('请使用lai')
end
function hhh32()
gg.toast('正在调用房主卡死数据请稍后...')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.0078125E;1F;2,139,095,040D::30',16)
gg.searchNumber('1',16)
gg.getResults(5)
gg.editAll('1.3',16)
gg.toast('请使用lai')
end
function hhh33()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.98631339e-38F;2.01376258e-38F;70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.getResults(100)
--[[ count: 0 ]]
gg.getResultsCount()
gg.toast("🍀屏幕随便一触点一下，就可使用道具技能🍀")
end
function hhh34()
  gg.toast('正在修改中...')
  gg.clearResults()
  gg.searchNumber("0.10000000149;100", F, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", F, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("10", F)
  gg.toast("范围挖矿开启成功\n共修改" .. cx .. "条数据")
end

function hhh35()
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

function hhh36()
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
function hhh37()
c = gg.prompt({"请输入皮肤代码【注意第一次开启需要站着不动不然开启失败】"}
,{[1]=29200},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = 100100, ["type"] = 4},
{["lv"] = 257, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = 100, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 108, ["type"] = 16},
{["lv"] = 100100, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = c, ["offset"] = -64, ["type"] = 4},
{["value"] = 100100, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = 100100, ["offset"] = 8, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)

end

function hhh38()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","🍓开🍓","🍓️关🍓️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🍓你未选择｛开 关｝")
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

function hhh39()
gg.toast("请选择自动移动的方向")
F = gg.alert("请选择方向","后","前","关")
 if  F~=1 and F~=2 and F~=3 then 
  gg.toast("你未选择前后默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动移动[后]"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 156, ["type"] = 16,["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动移动[前]"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 156, ["type"] = 16,["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
elseif F == 3 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动移动[关]"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 156, ["type"] = 16,["freeze"] = false},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function hhh40()
qmnb = {
{["memory"] = 4},
{["name"] = "留言板"},
{["value"] = 406323200, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 4, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
function hhh41()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("️保持第8格没有物品️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 646713826, ["type"] = 4},
{["lv"] = 12253,["offset"] = 0x84, ["type"] = 4},
}
qmxg = {
{["value"] = 12253, ["offset"] = 0x84, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==12253 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "第八格添加火箭背包"},
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
gg.clearResults()
CA1()
end
end
function hhh42()
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
	 gg.toast("迷你优秀")
end

function HS11()
	 gg.clearResults()
	 gg.searchNumber("950;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("迷你优秀")
end

function HS12()
	 gg.clearResults()
	 gg.searchNumber("952;3436;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("迷你优秀")
end

function HS13()
	 gg.clearResults()
	 gg.searchNumber("953;3439;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("迷你优秀")
end
function hhh43()
F = gg.alert("请选择｛开 关｝","❤️开❤️","💙关💜")
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
function hhh44()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物浮空"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function hhh45()
qmnb = {
{["memory"] = 16384},
{["name"] = "关闭浮空"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 8, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end
function hhh46()
gg.clearResults()
gg.searchNumber('77;30.051;0.62;0632.3::5.8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('4', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.toast("成功开启")
	 gg.clearResults()
end


function hhh47()
gg.toast("已进入功能区，修改过慢请原谅，有些功能不是这么简单的，用不了或闪退")
SN = gg.prompt({
  "🇨🇳 第一视角远程攻击",
  "🇨🇳 未知功能",
  "🇨🇳 地图时间加速",
  "🇨🇳 地图上色",
  "🇨🇳 人物范围",
  "🇨🇳 视角提高 🔰高度7🔰每个房间一次🔰",
  "🇨🇳 人物天线",
  "🇨🇳 开10—20人房间",
  "🇨🇳 开30—40人房间",
  "🇨🇳 锁血",
  "🇨🇳 人物秒杀",
  "🇨🇳 分身",
  "🇨🇳 人物透视",
  "🇨🇳 子弹真谛(开)",
  "🇨🇳 子弹真谛(关)",
  "🇨🇳 联发科透视(开)",
  "🇨🇳 联发科透视(关)",
  "🇨🇳 防封",
  "🇨🇳 修改器数据类型参考",
  "🇨🇳 高跳",
  "🇨🇳 加速",
  "🇨🇳 返 回 主 页" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 aa1()
end
if SN[2]==true then
	 aa2()
end
if SN[3]==true then
	 aa3()
end
if SN[4]==true then
	 aa4()
	 end
if SN[5]==true then
	 aa5()
	 end
if SN[6]==true then
	 aa6()
end
if SN[7]==true then
	 aa7()
end
if SN[8]==true then
	 aa8()
end
if SN[9]==true then
	 aa9()
	 end
if SN[10]==true then
	 aa10()
	 end
if SN[11]==true then
	 aa11()
	 end
if SN[12]==true then
	 aa12()
	 end
if SN[13]==true then
	 aa13()
	 end
if SN[14]==true then
	 aa14()
	 end
if SN[15]==true then
	 aa15()
	 end
if SN[16]==true then
	 aa16()
	 end
if SN[17]==true then
	 aa17()
	 end
if SN[18]==true then
	 aa18()
	 end
if SN[19]==true then
	 aa19()
	 end
if SN[20]==true then
	 aa20()
	 end
if SN[21]==true then
	 aa21()
	 end
if SN[22]==true then
	  
Main() 
end
FX1=0
FX2=0
end
end
gg.clearResults()





function aa1()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("66;666;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function aa2()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1F;-10F;-1F;945804460D::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 200}})
	 end
	 gg.toast("开启成功")
	gg.clearResults()
end

function aa3()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1203187456;1;7B", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999}})
	 end
	 gg.toast("开启成功")
	gg.clearResults()
end

function aa4()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("8;3;-1;11::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	gg.clearResults()
end

function aa5()
     gg.clearResults()
     gg.setRanges(262207)
     gg.searchNumber("60;180;1;2F;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     jg = gg.getResults(100)
     sl = gg.getResultCount()
     if 100 < sl then
     sl = 100
end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = 999
          }
        })
      end
    end
  end
    gg.toast("人物范围开启成功")
    gg.clearResults()
end

function aa6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1D;7000D;1;16777472D::260", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 v = gg.prompt({i='输入提高高度，默认5'}, {i='5'})--这个就是弹出一个输入框
     gg.editAll(v['i'], 16)
	 gg.toast("成功")
	 gg.clearResults()
end

function aa7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("898454573D;0.02816440724;6.81184387207;1;1.0441562e-9::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function aa8()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;1338;406;1410;459;1,111,490,560", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function aa9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;1521;406;1593;459;1,065,353,216;393,222", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function aa10()
gg.setRanges(4)
local dataType = 16
local tb1 = {{100, 0}, {100, -4}, {100, 152}, {100, 164}, }
local tb2 = {{666666, 0,true}, {666666, -4,true}, {666666, 152,true}, {666666, 164,true}, }
SearchWrite(tb1, tb2, dataType)
end

function aa11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("15;10000;1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("已完成指令")
end
function aa12()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135D;208D;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9", gg.TYPE_FLOAT)
gg.toast("nil")
gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1000;2::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
v = gg.prompt({i='输入分身距离，0～10   默认5'}, {i='5'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("■■■■■■■■■■%100  调理成功")
end
function aa13()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("1,189,765,120",4,false,536870912,0,-1)
gg.searchNumber("1,189,765,120",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("人物透视修改成功")
end

function aa14()
qmnb = {
{["memory"] = 4},
{["name"] = "子弹真谛(开)"},
{["value"] = 190.0, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = -928, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = -928, ["type"] = 16},
}
xqmnb(qmnb)
end
function aa15()
qmnb = {
{["memory"] = 4},
{["name"] = "子弹真谛(关)"},
{["value"] = 190.0, ["type"] = 16},
{["lv"] = 999999.0, ["offset"] = -928, ["type"] = 16},
}
qmxg = {
{["value"] = 15, ["offset"] = -928, ["type"] = 16},
}
xqmnb(qmnb)
end
function aa16()
qmnb = {
{["memory"] = 4},
{["name"] = "联发科透视(开)"},
{["value"] = -1440.0, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = -76, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -76, ["type"] = 16},
}
xqmnb(qmnb)
end
function aa17()
qmnb = {
{["memory"] = 4},
{["name"] = "联发科透视(关)"},
{["value"] = -1440.0, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = -76, ["type"] = 16},
}
qmxg = {
{["value"] = 0.5, ["offset"] = -76, ["type"] = 16},
}
xqmnb(qmnb)
end

function aa18()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "防封"},
{["value"] = 196864, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16842753, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4608, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 300, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 177777, ["offset"] = 760, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("66562;197377:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("66562;197377:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1042;10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(99999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2;16384;16384;16384::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
gg.toast("防封第一步开启成功，正在开启第二步……")
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "防封"},
{["value"] = 177777, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 177777, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 177777, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 177777, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 177777, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 177777, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4608, ["offset"] = 100, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 16384, ["offset"] = 508, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
end
gg.toast("开启成功")

function aa19()
gg.alert("数据类型参考:DWROD= 4;DOUBLE= 64;QWORD= 32;FLOAT= 16;WORD= 2;BYTE= 1;AUTO= 127;XOR= 8;内存范围参考:Jh=2;Ch=1;Ca=4;Cd=8;Cb=16;PS=262144;A=32;默认=262207;J=65536;S=64;As=524288;O=-1032320;B=131072;Xa=16384;Xs=32768")
end
function aa20()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-1F;10F;-1F;945804460D:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
	 end
	 gg.toast("哈哈哈，娱乐娱乐😃")
	 gg.clearResults()
end

function aa21()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16,777,473D;10;-1D::37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 60}})
	 end
	 gg.clearResults()
end
function hhh49()
menu1 = gg.choice({
"⚠远程攻击",
"⚠人称攻击",
"⚠附身别人",
"⚠宠物修改",
"⚠刷留言板",
"⚠转移伤害",
"⚠篮球模式",
"⚠联机皮肤",
"⚠修改角色",
"⚠开大房间",
"⚠观战模式",
"⚠飞行速度",
"⚠人物烧死",
"⚠上帝视角",
"⚠伪装房主",
"⚠隔空打人",
"⚠吸人功能",
"⚠崩服功能",
"⚠人物透视",
"⚠人物上色",
"⚠人物高跳",
"⚠彩弹枪",
"⚠超级人类",
"⚠锁定高度",
"⚠天空上色",
"⚠灵魂出窍",
"⚠更改队伍",
"⚠坐标传送",
"⚠添加物品",
"⚠变动物",
"⚠人物锁血",
"⚠人物摇头",
"⚠免手机号",
"⚠设置速度",
"⚠设置跳跃",
"⚠设置全体",
"⚠编辑创造",
"⚠生存创造",
"⚠模式修改",
"⚠原地复活",
"⚠音乐优化",
"⚠通用穿墙",
"⚠穿墙功能",
"⚠返回功能",
},nil,'')
if menu1 == 1 then iii1() end
if menu1 == 2 then iii2() end
if menu1 == 3 then iii3() end
if menu1 == 4 then iii4() end
if menu1 == 5 then iii5() end
if menu1 == 6 then iii6() end
if menu1 == 7 then iii7() end
if menu1 == 8 then iii8() end
if menu1 == 9 then iii9() end
if menu1 == 10 then iii10() end
if menu1 == 11 then iii11() end
if menu1 == 12 then iii12() end
if menu1 == 13 then iii13() end
if menu1 == 14 then iii14() end
if menu1 == 15 then iii15() end
if menu1 == 16 then iii16() end
if menu1 == 17 then iii17() end
if menu1 == 18 then iii18() end
if menu1 == 19 then iii19() end
if menu1 == 20 then iii20() end
if menu1 == 21 then iii21() end
if menu1 == 22 then iii22() end
if menu1 == 23 then iii23() end
if menu1 == 24 then iii24() end
if menu1 == 25 then iii25() end
if menu1 == 26 then iii26() end
if menu1 == 27 then iii27() end
if menu1 == 28 then iii28() end
if menu1 == 29 then iii29() end
if menu1 == 30 then iii30() end
if menu1 == 31 then iii31() end
if menu1 == 32 then iii32() end
if menu1 == 33 then iii33() end
if menu1 == 34 then iii34() end
if menu1 == 35 then iii35() end
if menu1 == 36 then iii36() end
if menu1 == 37 then iii37() end
if menu1 == 38 then iii38() end
if menu1 == 39 then iii39() end
if menu1 == 40 then iii40() end
if menu1 == 41 then iii41() end
if menu1 == 42 then iii42() end
if menu1 == 43 then iii43() end
if menu1 == 44 then Main() end
GLWW=-1
end

function iii1()
qmnb={
{["memory"]=16384},
{["name"]="超远攻击"},
{["value"]=1132068864,["type"]=4},
{["lv"]=1036831949,["offset"]=-4,["type"]=4}
}
qmxg={
{["value"]=-1,["offset"]=-4,["type"]=16}
}
xqmnb(qmnb)
end

function iii2()
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

function iii3()
  gg.toast("请选择开关")
F=gg.alert("🔰请选择｛开 关｝🔰", "🍁开🍁", "🍁️关🍁️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("📌你未选择｛开 关｝")
else
end
if F==1 then
t=gg.prompt({
"『输入别人的迷你号』"
}, {
[1]=0
}, {
[1]="number"
})[1]
qmnb={
{["memory"]=4},
{["name"]="附身别人"},
{["value"]=a,["type"]=4},
{["lv"]=16777473,["offset"]=-64,["type"]=4}
}
qmxg={
{["value"]=t,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
elseif F==2 then
t=gg.prompt({
"『输入别人的迷你号』"
}, {
[1]=0
}, {
[1]="number"
})[1]
qmnb={
{["memory"]=4},
{["name"]="附身别人解除"},
{["value"]=t,["type"]=4},
{["lv"]=16777473,["offset"]=-64,["type"]=4}
}
qmxg={
{["value"]=a,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end
end

function iii4()
b = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
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

function iii5()
gg.toast("进入迷你一分多钟后才能开启成功")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "留言板"},
{["value"] = 6200, ["type"] = 4},
{["lv"] = 524296, ["offset"] = -128, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -188, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "留言板"},
{["value"] = 6200, ["type"] = 4},
{["lv"] = 524296, ["offset"] = -128, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = -188, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
end

function iii6()
b99 = gg.prompt({"[输入不同队的人的迷你号]开启成功后打队友，伤害会到你输入迷你号的那个人身上"}
,{[1]=0},{[1]="number"})[1]
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "攻击转移"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = b99, ["offset"] = 340, ["type"] = 4,["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)

end

function iii7()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
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

function iii8()
c = gg.prompt({"请输入皮肤代码【注意第一次开启需要站着不动不然开启失败】"}
,{[1]=29200},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = 100100, ["type"] = 4},
{["lv"] = 257, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = 100, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 108, ["type"] = 16},
{["lv"] = 100100, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = c, ["offset"] = -64, ["type"] = 4},
{["value"] = 100100, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = 100100, ["offset"] = 8, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function iii9()
b = gg.prompt({"[使用卡卡]请输入角色代码（下面默认代码为小淘气）33-酋长(增加攻击力) 34-卡卡(增加远程防御) 40-妮妮(增加挖掘速度) 35-教授(挖石头有机率挖到特殊矿石) 36-汤姆队长(生命恢复增加) 37-彼得(击碎罐子发现特殊物品) 38-熊孩子(增加爆炸防御) 39-酋长夫人(打怪爆率增加) 41-特工罗拉(两条命) 42-小淘气(跳两次)"}
,{[1]=42},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "角色"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},

{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -292, ["type"] = 4},
}
xqmnb(qmnb)
end

function iii10()
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

function iii11()
gg.toast("请选择观战模式开关")
F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end

function iii12()
gg.clearResults()	 gg.setRanges(16384)	 gg.searchNumber("2.09665303e-38F;15F;1.51900754e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)	 gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)	 gg.getResults(100)	 gg.editAll("500", gg.TYPE_FLOAT)	 gg.toast("")	 gg.clearResults()end

function iii13()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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

function iii14()
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

function iii15()
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

function iii16()
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

function iii17()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "🌸吸人🌸"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 116, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function iii18()
SN = gg.choice({
     "开启崩服器",
     "关闭崩服器(查看效果)",
     "超级崩服器(请先开启崩服器)",
     "返回  功能"
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
if SN==4 then
     fh()
end
GLWW=-1
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

function iii19()
	 qmnb = {
{["memory"] = 4},
{["name"] = "人物透视开启"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 30000.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function iii20()
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

function iii21()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "超级高跳"},
{["value"] = 100, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 48, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 156, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 156, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
end

function iii22()

F = gg.alert("🔰请选择功能🔰","🍁彩蛋枪强化1🍁","🍁自定义️子弹2🍁️️")
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

function iii23()
gg.alert("重进房间即可恢复")
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-1F;10F;-1F;945804460D:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 200}})
	 end
	 gg.toast("超级人类开启成功")
	 gg.clearResults()
end

function iii24() 
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

function iii25()
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

function iii26()
s = gg.prompt({"请输入要修改的大小"}
,{[1]=6},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "灵魂出窍"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -216, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -368, ["type"] = 4},
}
qmxg = {
{["value"] = s, ["offset"] = -368, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function iii27()
H=gg.prompt({"『请输入队伍代码』总和-0.红队-1.蓝队-2.绿队-3.黄队-4.橙队-5.紫队-6.裁判-999"},{'0'},{"number"})[1]
qmnb={
{["memory"]=4},
{["name"]="更改队伍"},
{["value"]=mini, ["type"]=4},
{["lv"]=1, ["offset"]=96, ["type"]=4},
{["lv"]=16777473, ["offset"]=-64, ["type"]=4},
}
qmxg = {
{["value"]=H, ["offset"]=228, ["type"]=4},
}
xqmnb(qmnb)
end

function iii28()
gd = gg.prompt({"请输入你现在的高度"}
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
{["lv"] = gd, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = Q, ["offset"] = 8, ["type"] = 4},
{["value"] = W, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
end

function iii29()
F = gg.alert("🔰 保持第八格没有物品","🍁开启🍁","🍁️关闭🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
as=gg.prompt({
"输入物品代码不知道就按寻找代码找"}, {[1]=0}, {[1]="number"})[1]
cs=gg.prompt({
"输入你想要的数量945804461是1个,945804524是64个,945804388是个200个"}, {[1]=0}, {[1]="number"})[1]
ds=gg.prompt({
"输入你想要的耐久度"}, {[1]=0}, {[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "添加"},
{["value"] = 1007, ["type"] = 4},
{["lv"]=945804460,["offset"]=4,["type"]=4},
{["lv"]=-1,["offset"]=8,["type"]=4},
{["lv"]=0,["offset"]=120,["type"]=4},
}
qmxg = {
{["value"] = cs, ["offset"] = 4, ["type"] = 4},
{["value"] = ds, ["offset"] = 8, ["type"] = 4},
{["value"] = as, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
  elseif F==2 then
gg.clearResults()
 end
end

function iii30()
b = gg.prompt({"🐉请输入生物代码玩家会变动物🐉"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "玩家变动物"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = -999,["offset"] =-152, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =-156, ["type"] = 16},
}
qmxg = {
{["value"] = b,["offset"] =-148, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end

function iii31()
F = gg.alert("🔰请选择开关🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "锁血"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1120403456,["offset"] =-196, ["type"] = 4},
}
qmxg = {
{["value"] = 2143289344,["offset"] =-196, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
  elseif F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "锁血关"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 2143289344,["offset"] =-196, ["type"] = 4},
{["lv"] = 1120403456,["offset"] =-192, ["type"] = 4},
}
qmxg = {
{["value"] = 100,["offset"] =-196, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 end
end

function iii32()
F = gg.alert("🔰请选择开关🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "摇头开"},
{["value"] = 1127481344, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =4, ["type"] = 4},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = 4},
}
qmxg = {
{["value"] = -9999,["offset"] =-8, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
gg.clearResults()
  elseif F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "摇头关"},
{["value"] = 1127481344, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =4, ["type"] = 4},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = 4},
}
qmxg = {
{["value"] = 30,["offset"] =-8, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
gg.clearResults()
 end
end

function iii33()
qmnb = {
{["memory"] = 4},
{["name"] = "免手机号验证打字"},
{["value"] = 4651998512748167168, ["type"] = 32},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},
{["lv"] = 4, ["offset"] = -24, ["type"] = 4},
{["lv"] = 3, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = 16, ["type"] = 4},
{["lv"] = 154, ["offset"] = 52, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -16, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
end

function iii34()
b = gg.prompt({"🐉请设置人物移动速度🐉"}
,{[1]=100},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "设置速度"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =-1084, ["type"] = 4},
{["lv"] = 16777473,["offset"] =-1108, ["type"] = 4},
}
qmxg = {
{["value"] = b,["offset"] =-1084, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end




function iii35()
b = gg.prompt({"🐉请设置人物跳跃🐉"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "设置跳跃"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =-152, ["type"] = 4},
{["lv"] = 1092616192,["offset"] =-156, ["type"] = 4},
}
qmxg = {
{["value"] = b,["offset"] =-148, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end




function iii36()
b = gg.prompt({"🐉请设置全体起立🐉"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "设置全体起立"},
{["value"] = 2139095039, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =-4, ["type"] = 4},
{["lv"] = 1065185444,["offset"] =460, ["type"] = 4},
}
qmxg = {
{["value"] = b,["offset"] =-4, ["type"] = 16,["freeze"] = false},
{["value"] = b,["offset"] =-8, ["type"] = 16,["freeze"] = false},
{["value"] = b,["offset"] =-12, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end

function iii37()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=0,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
end

function iii38()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="冒险改创造"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
end

function iii39() function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."修改失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."修改成功")else gg.toast(qmnbn.."修改失败")end end end D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD Voice("第一次开启需要地图作者迷你号[点开启前输入]") F = gg.alert("第一次开启需要地图作者迷你号[点开启前输入]","     修改模式     ","    开启前输入     ") if  F~=1 and F~=2 then gg.toast("你未选择开关默认取消") Voice("你未选择开关默认取消")     gg.toast("你未选择｛开 关｝")  else   end if  F== 1 then LF = gg.prompt({"生存.0-创造.1-极限生存.2-创造生存.3-玩法创造.4-玩法生存.5-高级生存.6[注意纯生存修改创造闪退]"},{[1]=4},{[1]="number"})[1] editData({ {["memory"] = gg.REGION_C_ALLOC},{["name"] = "模式"},{["value"] = RL, ["type"] = D},{["lv"] = 1,["offset"] =200, ["type"] = D},{["lv"] = 1,["offset"] =212, ["type"] = D},{["lv"] = -1,["offset"] =348, ["type"] = D},{["lv"] = -1,["offset"] =360, ["type"] = D},{["lv"] = -1,["offset"] =164, ["type"] = D},{["lv"] = -1,["offset"] =-92, ["type"] = D},},{{["value"] = LF,["offset"] =-8, ["type"] = D,["freeze"] = true},}) gg.clearResults()  elseif  F== 2 then RL = gg.prompt({"请输入地图作者迷你号[否则开启失败，自动退出脚本]"} ,{[1]=12345},{[1]="number"})[1] c6() end end

function iii40()
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

function iii41()
a =gg.prompt({"开启:30.关闭:1000"}
,{[1]=30},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079102e20F;-7.15922749e24F;a", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("a", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("👾开启成功👾")
	 gg.clearResults()
end

function iii42()
qmnb = {
{["memory"] = 4},
{["name"] = "一键"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120,["offset"] =-4, ["type"] = 4},
{["lv"] = 60,["offset"] =-16, ["type"] = 4},
{["lv"] = 120,["offset"] =4, ["type"] = 4}
}
qmxg = {
{["value"] = -9999,["offset"] =-12, ["type"] = 4,["freeze"] = true},
{["value"] = 1,["offset"] =128, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function iii43()
gg.toast("请选择穿墙开关。")
F = gg.alert("🔰请选择穿墙｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
while  true do 
    gg.sleep(100)
    gg.toast("🔰功能指南🔰\n📝[功能需知:单板穿墙需要配合无限跳和飞天才能正常使用，也可直接开下方的飞行穿墙，此功能用于恢复单开启需要]\n单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end end end  end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙恢复"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = -9999, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = 180, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end end 
function iii48()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "水下无限氧气"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 0, ["offset"] = -92, ["type"] = 16},
{["lv"] = -1, ["offset"] = -88, ["type"] = 16},
{["lv"] = 10, ["offset"] = -68, ["type"] = 16},
{["lv"] = -1, ["offset"] = -64, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = -68, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function iii50()
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
	 gg.toast("滚")
	 gg.clearResults()
end





function d3()
SY1 = gg.choice({
	 "🍭解锁荧光弹弓🍭", 
     "🍭解锁圆球炸弹🍭", 
     "🍭解锁冰锥🍭", 
     "🍭解锁熔岩球🍭", 
     "🍭解锁脉冲弓🍭", 
     "🍭解锁黑龙熔岩球🍭", 
     "🍭解锁混乱熔岩球🍭", 
     "🍭解锁反光镜🍭", 
     "🍭解锁火箭背包🍭", 
     "🍭解锁公主床🍭", 
     "🍭解锁坚冰🍭", 
     "🍭解锁钢板🍭", 
     "🍭解锁金铁门🍭", 
     "🍭解锁白杨木门🍭", 
   	 "🍡返 回 神 界🍡",
 }, nil, "我这一次终究还是来的太迟，不该出现再插上一点说辞")
if SY1 == 1 then rd1() end
if SY1 == 2 then rd2() end
if SY1 == 3 then rd3() end
if SY1 == 4 then rd4() end
if SY1 == 5 then rd5() end
if SY1 == 6 then rd6() end
if SY1 == 7 then rd7() end
if SY1 == 8 then rd8() end
if SY1 == 9 then rd9() end
if SY1 == 10 then rd10() end
if SY1 == 11 then rd11() end
if SY1 == 12 then rd12() end
if SY1 == 13 then rd13() end
if SY1 == 14 then rd14() end
if SY1 == 15 then Main() end

GLWW=-1
end


function rd1()
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

function rd2()
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

function rd3()
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

function rd4()
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

function rd5()
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

function rd7()
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

function rd8()
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

function rd9()
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

function rd10()
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

function rd11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function rd12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function rd13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function jsdd14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end






function d4()

gg.toast("开启成功")
end



function d5()

gg.toast("开启成功")
end


--[=[
         
 -- []测试
 
 
 --]]
     
]=]
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"抖音","50"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页

function E()
  SN = gg.choice({
   "𒅒🌀搜索歌曲🔍🌀𒅒",
   "𒅒🌀搜索列表🐾🌀𒅒",
   "𒅒🌀播放热歌▶️🌀𒅒",
   "𒅒🌀停止播放⏸🌀𒅒",
   "𒅒🌀️清除冻结🧊🌀𒅒",
   "𒅒🌀️返回主页️🥳🌀𒅒",
},2018,os.date("『恒少专属音乐』当前时间%Y年%m月%d日%H时%M分%S秒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then Main() end
XGCK=-7
end

---
function s1()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then E() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end


function  Main4()
menu1 = gg.choice({
    "𒅒🍀野人掉落999🍀𒅒",
    "𒅒🍀熔岩…掉落999🍀𒅒",
    "𒅒🍀猪掉落999🍀𒅒",
    "𒅒🍀牛掉落999🍀𒅒",
    "𒅒🍀️鸡掉落999🍀𒅒",
    "𒅒🍀狼掉落999🍀𒅒",
    "𒅒🍀超大木棒🍀𒅒",
    "𒅒🍀超大石矛️🍀𒅒", 
    "𒅒🍀超大短剑🍀𒅒",
    "𒅒🍀大能量剑🍀𒅒",
    "𒅒🍀超大突刺长枪🍀𒅒",
    "𒅒🍀️超大冲锋枪🍀𒅒",    
    "𒅒🍀超大牛仔左轮️🍀𒅒", 
    "𒅒🍀超大重机枪️🍀𒅒",
    "𒅒🍀超大龙骨弓🍀𒅒",
    "𒅒🍀️超大短弓🍀𒅒",    
    "𒅒🍀超大石箭️🍀𒅒",
       "𒅒🍀超大吹箭筒🍀𒅒",
   "𒅒🍀能量剑无冷却🍀𒅒", 
   "𒅒🍀突刺长枪无冷却🍀𒅒", 
   "𒅒🍀钻头️无冷却🍀𒅒", 
   "𒅒🍀链锯动无冷却🍀𒅒", 
   "𒅒🍀金斧头无冷却🍀𒅒", 
   "𒅒🍀钻头盔999防御🍀𒅒", 
   "𒅒🍀钻盔甲999防御🍀𒅒", 
   "𒅒🍀钻护腿999防御🍀𒅒", 
   "𒅒🍀钻鞋子999防御🍀𒅒", 
   "𒅒🍀钻头速度提升🍀𒅒", 
   "𒅒🍀链锯速度提升🍀𒅒", 
   "𒅒🍀能量剑秒杀🍀𒅒", 
   "𒅒🍀突刺长枪秒杀🍀𒅒", 
   "𒅒🍀短剑秒杀🍀𒅒", 
   "𒅒🍀长矛秒杀🍀𒅒", 
   "𒅒🍀木棒秒杀🍀𒅒", 
   "𒅒🍀木质短弓秒杀🍀𒅒", 
   "𒅒🍀冲锋枪秒杀🍀𒅒", 
   "𒅒🍀牛仔左轮秒杀🍀𒅒", 
   "𒅒🍀野人10血🍀𒅒", 
   "𒅒🍀熔岩巨人10血🍀𒅒", 
   "𒅒🍀解锁荧光弹弓🍀𒅒", 
   "𒅒🍀解锁圆球炸弹🍀𒅒", 
   "𒅒🍀解锁冰锥🍀𒅒", 
   "𒅒🍀解锁熔岩球🍀𒅒", 
   "𒅒🍀解锁脉冲弓🍀𒅒", 
   "𒅒🍀解锁黑龙熔岩球🍀𒅒", 
   "𒅒🍀解锁混乱熔岩球🍀𒅒", 
   "𒅒🍀解锁反光镜🍀𒅒", 
   "𒅒🍀解锁火箭背包🍀𒅒", 
   "𒅒🍀解锁公主床🍀𒅒", 
   "𒅒🍀解锁坚冰🍀𒅒", 
   "𒅒🍀解锁钢板🍀𒅒", 
   "𒅒🌵解锁金铁门🍀𒅒", 
   "𒅒🍀解锁白杨木门🍀𒅒", 
    "𒅒🍀返 回 主 页🍀𒅒",},2018,os.date("𒅒需要指定的才能用，有些房间用不了—白酒九功能𒅒"))
if menu1 == 1 then nnn1() end
if menu1 == 2 then nnn2() end
if menu1 == 3 then nnn3() end
if menu1 == 4 then nnn4() end
if menu1 == 5 then nnn5() end
if menu1 == 6 then nnn6() end
if menu1 == 7 then nnn7() end
if menu1 == 8 then nnn8() end
if menu1 == 9 then nnn9() end
if menu1 == 10 then nnn10() end
if menu1 == 11 then nnn11() end
if menu1 == 12 then nnn12() end
if menu1 == 13 then nnn13() end
if menu1 == 14 then nnn14() end
if menu1 == 15 then nnn15() end
if menu1 == 16 then nnn16() end
if menu1 == 17 then nnn17() end
if menu1 == 18 then nnn18() end
if menu1 == 19 then nnn19() end
if menu1 == 20 then nnn20() end
if menu1 == 21 then nnn21() end
if menu1 == 22 then nnn22() end
if menu1 == 23 then nnn23() end
if menu1 == 24 then nnn24() end
if menu1 == 25 then nnn25() end
if menu1 == 26 then nnn26() end
if menu1 == 27 then nnn27() end
if menu1 == 28 then nnn28() end
if menu1 == 29 then nnn29() end
if menu1 == 30 then nnn30() end
if menu1 == 31 then nnn31() end
if menu1 == 32 then nnn32() end
if menu1 == 33 then nnn33() end
if menu1 == 34 then nnn34() end
if menu1 == 35 then nnn35() end
if menu1 == 36 then nnn36() end
if menu1 == 37 then nnn37() end
if menu1 == 38 then nnn38() end
if menu1 == 39 then nnn39() end
if menu1 == 40 then nnn40() end
if menu1 == 41 then nnn41() end
if menu1 == 42 then nnn42() end
if menu1 == 43 then nnn43() end
if menu1 == 44 then nnn44() end
if menu1 == 45 then nnn45() end
if menu1 == 46 then nnn46() end
if menu1 == 47 then nnn47() end
if menu1 == 48 then nnn48() end
if menu1 == 49 then nnn49() end
if menu1 == 50 then nnn50() end
if menu1 == 51 then nnn51() end
if menu1 == 52 then nnn52() end
if menu1 == 53 then nnn53() end
if menu1 == 54 then Main() end
end


function nnn1()
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

function nnn2()
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

function nnn3()
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

function nnn4()
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

function nnn5()
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

function nnn6()
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

function nnn7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12001;0.48999997973F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.48999997973", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【木棒】出来测试一下！")
	 gg.clearResults()
end

function nnn8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12002;0.40000000596F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.40000000596", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【石矛】出来测试一下！")
	 gg.clearResults()
end

function nnn9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12003;0.80999994278F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80999994278", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【短剑】出来测试一下！")
	 gg.clearResults()
end

function nnn10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005;2.59999990463F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.59999990463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【能量剑】出来测试一下！")
	 gg.clearResults()
end

function nnn11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12004;1.39999997616F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.39999997616", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【突刺长枪】出来测试一下！")
	 gg.clearResults()
end

function nnn12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15000;1.39999997616F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.39999997616", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【冲锋枪】出来测试一下！")
	 gg.clearResults()
end

function nnn13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15002;1.39999997616F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.39999997616", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【牛仔左轮】出来测试一下！")
	 gg.clearResults()
end

function nnn14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15005;1.39999997616F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.39999997616", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【重机枪】出来测试一下！")
	 gg.clearResults()
end

function nnn15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12056;0.80000001192F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【龙骨弓】出来测试一下！")
	 gg.clearResults()
end

function nnn16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12050;1.60000002384F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.60000002384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【木制短弓】出来测试一下！")
	 gg.clearResults()
end

function nnn17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12051;0.69999998808F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.69999998808", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【石箭】出来测试一下！")
	 gg.clearResults()
end

function nnn18()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12288;0.40000000596F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.40000000596", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！拿【吹箭筒】出来测试一下！")
	 gg.clearResults()
end

function nnn19()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005;5F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【能量剑】测试一下！")
	 gg.clearResults()
end

function nnn20()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12004;3F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【突刺长枪】出来测试一下！")
	 gg.clearResults()
end

function nnn21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11015;6F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【钻头】出来测试一下！")
	 gg.clearResults()
end

function nnn22()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11005;30F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【链锯】出来测试一下！")
	 gg.clearResults()
end

function nnn23()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11004;20F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【金斧头】出来测试一下！")
	 gg.clearResults()
end

function nnn24()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12241;15W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！穿上【蓝钻头盔】出来测试一下！")
	 gg.clearResults()
end

function nnn25()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12242;18W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！穿上【蓝钻胸甲】出来测试一下！")
	 gg.clearResults()
end

function nnn26()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12243;18W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！穿上【蓝钻护腿】出来测试一下！")
	 gg.clearResults()
end

function nnn27()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12244;14W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！穿上【蓝钻靴子】出来测试一下！")
	 gg.clearResults()
end

function nnn28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11015;400F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！拿【钻头】出来测试一下！")
	 gg.clearResults()
end

function nnn29()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11005;400F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功！拿【链锯】出来测试一下！")
	 gg.clearResults()
end

function nnn30()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005;40W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【能量剑】出来测试一下！")
	 gg.clearResults()
end

function nnn31()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12004;35W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【突刺长枪】出来测试一下！")
	 gg.clearResults()
end

function nnn32()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12003;25W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【短剑】出来测试一下！")
	 gg.clearResults()
end

function nnn33()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12002;15W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【石矛】出来测试一下！")
	 gg.clearResults()
end

function nnn34()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12001;10W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【木棒】出来测试一下！")
	 gg.clearResults()
end

function nnn35()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12050;25W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【木质短弓】出来测试一下！")
	 gg.clearResults()
end

function nnn36()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15000;20W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【冲锋枪】出来测试一下！")
	 gg.clearResults()
end

function nnn37()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15002;30W", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功！拿【牛仔左轮】出来测试一下！")
	 gg.clearResults()
end

function nnn38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;100;25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100;25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！打【野人】测试一下！")
	 gg.clearResults()
end

function nnn39()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;250;125", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250;125", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功！打【熔岩巨人】测试一下！")
	 gg.clearResults()
end
function nnn40()
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

function nnn41()
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

function nnn42()
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

function nnn43()
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

function nnn44()
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

function nnn45()
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

function nnn46()
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

function nnn47()
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

function nnn48()
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

function nnm49()
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

function nnn50()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function nnn51()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function nnn52()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function nnn53()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end


function T()
menu1 = gg.choice({
    "𒅒🍀注意事项[下面]🍀𒅒",
    "𒅒🍀代码有点少🍀𒅒",
    "𒅒🍀求谅解🍀𒅒",
    "𒅒🍀代码在上面🍀𒅒",
    "𒅒🍀️没那么多时间更🍀𒅒",
   "𒅒🍀以上为留言 !🍀𒅒", 
    "𒅒🍀返 回 主 页🍀𒅒",},2018,os.date("𒅒生物代码:13105-野人猎手13107-大眼蛛13108-地穴蜘蛛13109-爆爆蛋13110-萌眼叮叮13111-萌眼咚咚13117-史萌萌13120-屠夫13121-稻草人13122-恶霸屠夫13123-出气外星人13130-熔岩巨人13131-硫磺弓手13400-鸡13401-牛13402-猪13403-羊13404-马13407-狼13408-狗13409-企鹅13411-野生鸵鸟13412-野生冰熊13413-野生速龙13414-野生团子13415-团子13416-野生熊猫13417-熊猫13418-蜜蜂13419-萤火虫13420-足球13421-飞鸡13423-战斗鸡13424-尖叫鸡13425-篮球】修改子弹用:【[投射物]11586-平凡法球】【[投射物]11587-炽烈法球】【[投射物]11588-雷电法球】【[投射物]11589-淬毒法球】【[投射物]11590-复苏法球】彩字代码:1:粉红色#cff0aff2.红色#cFF00003.绿色#c00FF004.蓝色#c0000FF5.牡丹红#cFF00FF6.青色#c00FFFF  7.黄色#cFFFF008.黑色#c000000 9.海蓝#c70DB93 10.巧克力色#c5C3317 11.蓝紫色#c9F5F9F 12.黄铜色#cB5A642 13.亮金色#cD9D919 14.棕色#cA67D3D 15.青铜色#c8C7853 16.青铜色2号#cA67D3D 17.士官服蓝色#c5F9F9F18.冷铜色#cD98719 19.铜色#cB87333 20.珊瑚红#cFF7F00 21.紫蓝色#c42426F 22.深绿#c2F4F2F 23.深铜绿色#c4A766E 24.深橄榄绿#c4F4F2F 𒅒"))
if menu1 == 1 then ttt1() end
if menu1 == 2 then ttt2() end
if menu1 == 3 then ttt3() end
if menu1 == 4 then ttt4() end
if menu1 == 5 then ttt5() end
if menu1 == 6 then ttt6() end
if menu1== 7 then Exit() end
XGCK=-1
end




function Main5()  
SN = gg.multiChoice({
             "🍓玩法改创造(永远)🍓",
             "🍓解禁危险品🍓",
             "🍓生存改创造(永远)🍓",	 
	 "🍇家园道具(编辑器内)🍇",
	 "🍇第八格添加编辑器🍇",
	 "🍇自定义改编辑器🍇",
	 "🍑能量剑改编辑器🍑",
	 "🍑炸云服🍑",
	  "🍉创造炸图🍉",
	   "🍉通用创造🍉",
	     "🍉新家园道具(原创)🍉",
	 "🍊返 回 主 页🍊",
 }, nil, "🍋愿你能熬得过万丈孤独，藏得下星辰大海🍋")
if SN == nil then else
if SN[1]==true then bs1() end
if SN[2]==true then bs2() end
if SN[3]==true then bs3() end 
if SN[4]==true then bs4() end
if SN[5]==true then bs5() end
if SN[6]==true then bs6() end
if SN[7]==true then bs7() end
if SN[8]==true then bs8() end
if SN[9]==true then bs9() end
if SN[10]==true then bs10() end
if SN[11]==true then bs11() end
if SN[12]==true then Main() end end
 FX=0 end



function bs1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=0,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
end



function bs2()
qmnb = {
{["memory"] = 16384},
{["name"] = "解禁地形编辑器开启"},
{["value"] = 1762840583, ["type"] = 4},
{["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end


function bs3()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="冒险改创造"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
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
function bs4()  
i2= gg.choice({
    "𒅒🔰炸药桶🔰𒅒",
    "𒅒🔰刷怪方块🔰𒅒",
    "𒅒🔰宠物窝🔰𒅒",
    "𒅒🔰天气控制器🔰𒅒",
    "𒅒🔰️重力装置🔰𒅒",    
    "𒅒🔰️空心树🔰𒅒",
    "𒅒🔰自定义方块🔰𒅒",
    "𒅒🔰中式沙发🔰𒅒",
    "𒅒🔰中式桌子🔰𒅒",
    "𒅒🔰中式餐桌🔰𒅒",
    "𒅒🔰中式洗手台🔰𒅒",   
    "𒅒🔰中式椅子🔰𒅒",
    "𒅒🔰中式马桶🔰𒅒",
    "𒅒🔰中式浴缸🔰𒅒",
    "𒅒🔰中式屏风🔰𒅒",
    "𒅒🔰️中式立体灯🔰𒅒",    
    "𒅒🔰中式吊灯️🔰𒅒", 
    "𒅒🔰中式门️🔰𒅒",
    "𒅒🔰中式窗🔰𒅒",
    "𒅒🔰️中式楼梯🔰𒅒",    
    "𒅒🔰中式墙砖🔰𒅒", 
   "𒅒🔰中式地砖🔰𒅒", 
    "𒅒🔰中式半砖🔰𒅒", 
    "𒅒🔰中式围栏🔰𒅒", 
    "𒅒🌟现代床🌟𒅒", 
    "𒅒🌟现代沙发🌟𒅒", 
    "𒅒🌟现代书桌🌟𒅒", 
    "𒅒🌟现代餐桌🌟𒅒",
    "𒅒🌟现代茶几🌟𒅒",
    "𒅒🌟现代洗手台🌟𒅒",
    "𒅒🌟现代椅子🌟𒅒",
    "𒅒🌟现代马桶🌟𒅒",
    "𒅒🌟现代浴缸🌟𒅒",
    "𒅒🌟现代衣柜🌟𒅒",
    "𒅒🌟现代橱柜🌟𒅒",
    "𒅒🌟现代半格橱柜🌟𒅒",
    "𒅒🌟现代组合柜🌟𒅒",
    "𒅒🌟现代屏风🌟𒅒",
    "𒅒🌟现代立体灯🌟𒅒",
    "𒅒🌟现代吊灯🌟𒅒",
    "𒅒🌟现代壁灯🌟𒅒",
    "𒅒🌟现代门🌟𒅒",
    "𒅒🌟现代窗🌟𒅒",
    "𒅒🌟现代楼梯🌟𒅒",
    "𒅒🌟现代墙砖🌟𒅒",
    "𒅒🌟现代砖🌟𒅒",
    "𒅒🌟现代半砖🌟𒅒",
   "𒅒🌟现代围栏🌟𒅒", 
    "𒅒❄️童话床❄️𒅒",
    "𒅒❄童话沙发️❄️𒅒",
    "𒅒❄童话书桌❄𒅒",
    "𒅒❄童话桌子️❄𒅒",
    "𒅒❄童话茶几️❄𒅒",
    "𒅒❄️童话洗手池❄𒅒",
    "𒅒❄️童话椅子❄𒅒",
    "𒅒❄️童话马桶❄𒅒",
    "𒅒❄童话浴缸️❄𒅒",
    "𒅒❄童话衣柜️❄𒅒",
    "𒅒❄童话橱柜️❄𒅒",
    "𒅒❄童话半格橱柜️❄𒅒",
    "𒅒❄童话箱子️❄𒅒",
    "𒅒❄童话屏风️❄𒅒",
    "𒅒❄童话台灯️❄𒅒",
    "𒅒❄️童话吊灯❄𒅒",
    "𒅒❄️童话壁灯❄𒅒",
    "𒅒❄️童话门❄𒅒",
    "𒅒❄童话窗️❄𒅒",
    "𒅒❄️童话楼梯❄𒅒",
    "𒅒❄童话墙砖️❄𒅒",
    "𒅒❄️童话地砖❄𒅒",
    "𒅒❄️童话半砖❄𒅒",
    "𒅒❄️童话围栏❄𒅒",
    "𒅒🎋科幻床️🎋𒅒",
    "𒅒🎋️科幻沙发🎋𒅒",
    "𒅒🎋科幻书桌🎋𒅒",
    "𒅒🎋科幻桌子🎋𒅒", 
    "𒅒🎋科幻茶几🎋𒅒",
    "𒅒🎋科幻洗手台🎋𒅒",
    "𒅒🎋科幻椅子🎋𒅒",
    "𒅒🎋科幻马桶🎋𒅒",
    "𒅒🎋科幻浴缸🎋𒅒",
    "𒅒🎋科幻衣柜🎋𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("姜小北原创"))
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
XGCK=-1 end


function bs5()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=10500,["type"]=4},
{["lv"]=2,["offset"]=56,["type"]=4},
{["lv"]=3,["offset"]=60,["type"]=4},
{["lv"]=2,["offset"]=64,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4,["freeze"] = true}
} xqmnb(qmnb)
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


function bs6()
as = gg.prompt({"→输入要更改物品的代码←12005能量剑-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头"}
,{[1]="12005"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end
function bs7()
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑改编辑器"},
{["value"]=12005,["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end

function bs8()
dI=gg.prompt({"",""},{[1] = "【物品代码】15056",[2] = "【数量】200"},{[1] = "number",[2] = "number"})   
zh1 = dI[1] zh2 = dI[2] 
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1138098176, ["type"] = 4},
{["lv"] = 1119617024, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2, ["offset"] = -0xA0, ["type"] = 4},

}
qmxg = {
{["value"] = zh1, ["offset"] = -0xA8, ["type"] = 4, ["freeze"] = true},
{["value"] = zh2, ["offset"] = -0xA4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()

qmnb = {
{["memory"] = 4},
{["name"] = "添加物品"},
{["value"] = 72057594037932936, ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 0xC, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 327680000, ["offset"] = -4, ["type"] = 4},

}
qmxg = {
{["value"] = 16777472, ["offset"] = 0x1C, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()

gg.toast("点击悬浮窗恢复")
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)

qmnb = {
{["memory"] = 4},
{["name"] = "添加物品"},
{["value"] = 72057594037932936, ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 0xC, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 327680000, ["offset"] = -4, ["type"] = 4},

}
qmxg = {
{["value"] = 16777216, ["offset"] = 0x1C, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()

while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
 Main()
end
end
end
end
end

function bs9()
SN = gg.choice({
	 "牛蛋改黑龙火球",
	 "猪蛋改远古黑龙",
	 "鸡蛋改中心长方形",
	 "基岩改tnt",
	 "铁门改火",
}, nil, "稳定性大大提升")
if SN==1 then
	 HS85()
end
if SN==2 then
	 HS86()
end
if SN==3 then
	 HS87()
end
if SN==4 then
	 HS88()
end
if SN==5 then
	 HS89()
end
FX=0
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 13502}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15525}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 834}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS89()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 500}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end





function bs10()
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

function bs11() 
i2= gg.choice({
  "𒅒🌟胡杩茶机🌟𒅒",
    "𒅒🌟胡杩登子🌟𒅒",
    "𒅒🌟西域沙发🌟𒅒",
    "𒅒🌟西域书桌🌟𒅒",
    "𒅒🌟西域餐桌🌟𒅒",
    "𒅒🌟西域茶机🌟𒅒",
    "𒅒🌟西域洗手台🌟𒅒",
    "𒅒🌟西域登子🌟𒅒",
    "𒅒🌟西域马桶🌟𒅒",
    "𒅒🌟西域浴缸🌟𒅒",
    "𒅒🌟西域衣柜🌟𒅒",
   "𒅒🌟西域厨柜🌟𒅒", 
    "𒅒❄️西域半柜❄️𒅒",
    "𒅒❄西域组合柜❄️𒅒",
    "𒅒❄西域屏风❄𒅒",
    "𒅒❄西域立体灯❄𒅒",
    "𒅒❄西域吊灯️❄𒅒",
    "𒅒❄️西域壁灯❄𒅒",
    "𒅒❄️西域门❄𒅒",
    "𒅒❄西域窗❄𒅒",
    "𒅒❄西域楼梯❄𒅒",
    "𒅒❄西域墙砖❄𒅒",
    "𒅒❄西域砖️❄𒅒",
    "𒅒❄西域半砖❄𒅒",
    "𒅒❄西域围栏❄𒅒",
    "𒅒❄西域地毯❄𒅒",
    "𒅒❄骆驼墙砖❄𒅒",
    "𒅒❄️莲花壁画❄𒅒",
    "𒅒❄️飞天少女壁画❄𒅒",
    "𒅒❄️坐骑蛋1❄𒅒",
    "𒅒❄坐骑蛋2❄𒅒",
    "𒅒❄️坐骑蛋3❄𒅒",
    "𒅒❄坐骑蛋4❄𒅒",
    "𒅒❄️坐骑蛋5❄𒅒",
    "𒅒❄️坐骑蛋6❄𒅒",
    "𒅒❄️坐骑蛋7❄𒅒",
  "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("哈哈。。。。我好后悔丢了你....."))
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



function QQ1()
    gg.setRanges(4)
local dataType = 32
local tb1 = {{651061517835304960,0} }
local tb2 = {{Q1, -224,true  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end
function QQ3() qmnb = {
{["memory"] = 4},
{["name"] = "动作"},
{["value"] = lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},}
qmxg = {
{["value"] = Q3, ["offset"] = -0x54, ["type"] = 4},}
xqmnb(qmnb)
end

function Main6()
end


function Main7()
 local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."𒅒💍🍀切换龙哥脚本🍀??𒅒"..sjbq,
    [2] = sjbq.."𒅒💍🍀切换墨凉最新版脚本🍀💍𒅒"..sjbq,
    [3] = sjbq.."𒅒💍🍀切换凉情脚本🍀💍𒅒"..sjbq,
    [4] = sjbq.."𒅒💍🍀️切换柯南脚本🍀💍𒅒"..sjbq,
    [5] = sjbq.."𒅒💍🍀️切换小可脚本🍀💍𒅒"..sjbq,
    [6] = sjbq.."𒅒💍🍀️切换黑死脚本🍀💍𒅒"..sjbq,
    [7] = sjbq.."𒅒💍🍀️切换小北脚本🍀💍𒅒"..sjbq,   
    [8] = sjbq.."𒅒💍🍀️切换傲傲脚本🍀💍𒅒"..sjbq,
    [9] = sjbq.."𒅒💍🍀️切换帅莺脚本🍀💍𒅒"..sjbq,
   [10] = sjbq.."𒅒💍🍀️切换CA脚本  🍀💍𒅒"..sjbq,  
   [11] = sjbq.."𒅒💍🍀️切换XE脚本  🍀💍𒅒"..sjbq,  
   [12] = sjbq.."𒅒💍🍀️切换天月脚本🍀💍𒅒"..sjbq, 
   [13] = sjbq.."𒅒💍🍀切换小晨脚本🍀💍𒅒"..sjbq,
   [14] = sjbq.."𒅒💍🍀自定义切换  🍀💍𒅒"..sjbq,
   [15] = sjbq.."𒅒💍🍀切换凉兮脚本🍀💍𒅒"..sjbq,
   [16] = sjbq.."𒅒💍🍀切换傲傲脚本🍀💍𒅒"..sjbq,
  }, sy, os.date("浮梦师傅修复的!基本都任意切换，需要等一段时间"))
if SY==1 then me1() end
if SY==2 then mel12() end
if SY==3 then op1() end
if SY==4 then n1m1() end
if SY==5 then lop2() end
if SY==6 then mip1() end 
if SY==7 then klo1() end
if SY==8 then kiox1() end 
if SY==9 then Mmn1() end
if SY==10 then bhu1() end
if SY==11 then xmn() end
if SY==12 then xmnj1() end
if SY==13 then mki() end
if SY==14 then lopi1() end
if SY==15 then lopty1() end
if SY==16 then poiu1() end
FX1=0 end

function mel12()
gg.toast("正在连接🐥墨 凉⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥墨 凉⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/ee5d98a907394abac09fb1a17d029b60.lua").content))
end

function poiu1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1633407907.lua").content))
end

function lopty1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1633413027.lua").content))
end

function lopi1()
jl=gg.prompt({"请输入网络脚本链接："},{[1] = ""},{[1] = "text"})
    gg.toast("正在连接自定义脚本链接...")
    print(os.date("%M分%S秒_已切自定义网络脚本"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end


function mip1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/243eb30181c84be5f6f31519b6590840.lua").content))
end
function lop2()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/9314adfd95e2bf3417942c4100e0ff3b.lua").content))
end
function kiox1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/317ff7a31aa8752a85c8e4b25b1245d5.lua").content))
end
function me1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/298538f6e0c3b13b60a91c5409b15b33.lua").content))
end
function op1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/ea42e09d9c0bb2615afacadf4b1b71b7.lua").content))
end
function xmn()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/149fce4b4adad850ea9b0cace7b9a0ea.lua").content))
end
function mki()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/61d115c3ad11825ce9a1118f2a68e3d6.lua").content))
end
function xmnj1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/616115293e3059796748ec184dd147bd.lua").content))
end
function bhu1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/fa88878d0ff25ab7928597232f653972.lua").content))
end
function Mmn1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/9081e66a6a4944a4506260db87fb984a.lua").content))
end
function klo1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换🐥神陨⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/7d9d68203480dce80b4ddf2f6e81936c.lua").content))
end
function nm1()
gg.toast("正在连接🐥神陨⚠服务器...")
    print(os.date("%M分%S秒_已切换"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/75df25a29506d45abe42d5454cc490b8.lua").content))
end



function Main8()
SY1 = gg.choice({
'❤北少❤',
'❤新一❤',
'❤浮梦❤',
'❤小晨❤',
'❤梦幻❤',
'💟返回脚本💟'},
nil,'感谢他们一个捡起fw的我')
if SY1 == 1 then Main() end
if SY1 == 2 then Main() end
if SY1 == 3 then Main() end
if SY1 == 4 then Main() end
if SY1 == 5 then Main() end
if SY1 == 6 then Main() end
if SY1 == 7 then Main() end
if SY1 == 8 then Main() end
if SY1 == 9 then Main() end
GLWW=-1
end


function Main9()
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end


function Exit() 
print("     💛💚💙💜🖤🍭未来可期🍭🖤💜💙💚💛\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾             神  陨  🌃  永  恒            ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n     💛💚💙💜🖤⭐ 🍭未来可期🍭🖤💜💙💚💛\n                                                                                               ")
os.exit() end 






function HOME()
lw=1
Main()
end



cs = '恒少QQ:3358867186'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end