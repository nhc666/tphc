
------------------------------
-- ©2021  迷你小晨
------------------------------






gg.alert('当前辅助版本4.0，本辅助通用所有迷你世界版本，禁止倒卖，二改')


XL="https://iflynote.com/h/s/note/1637158562319615"
local B=gg.makeRequest(XL).content
local D=B:match('【脚本状态】(.-)【脚本状态】')
local H=B:match('【脚本链接】(.-)【脚本链接】')
local C=B:match('【脚本关闭后公告】(.-)【脚本关闭后公告】')
local G=B:match('【关闭后提示加群号】(.-)【关闭后提示加群号】')
local XV=gg.makeRequest(XL).content:match('<div class="read_txt">阅读&nbsp; (.-)</div>')
local N=0 N=N+1
if D=="开" then
pcall(load(gg.makeRequest(H).content))
end
if D=="关" then
os.remove(gg.getFile())
gg.alert(C,"确定并复制群号")
gg.copyText(G)
os.exit(G) 
end


      function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/小晨配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/小晨配置文件.txt"):read("*a") zh = a:match("👣(.-)👣") if a == "" then zh = "" end end
dI=gg.prompt({"❤️输入你的迷你号❤️","🎵开启网抑云🎵️"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/小晨配置文件.txt", "w") io.open("/sdcard/小晨配置文件.txt", "w"):write("👣" .. zh .. "👣"):close()
b=a 
gg.toast("当前迷你号:"..b.."如果不是放下一切…你也不会…")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🎵","🧸","🍓","🍁","🍔","🐶","💠","🌞","🐤","🎈","💔","🍎️","💟","♓️","⭐","💥",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."𒅒🔰房 主 专 区🔰𒅒"..sjbq,
    [2] = sjbq.."𒅒🔰联 机 专 区2🔰𒅒"..sjbq,
    [3] = sjbq.."𒅒🔰笔 刷 模 式🔰𒅒"..sjbq,
    [4] = sjbq.."𒅒🔰️特 效 动 作🔰𒅒"..sjbq,
    [5] = sjbq.."𒅒🔰️狙 击 专 区🔰𒅒"..sjbq,
    [6] = sjbq.."𒅒🔰️音 乐 专 区🔰𒅒"..sjbq,
    [7] = sjbq.."𒅒🔰联 机 专 区🔰𒅒"..sjbq,
    [8] = sjbq.."𒅒🔰白 九 功 能🔰𒅒"..sjbq,
    [9] = sjbq.."𒅒🔰感 谢 人 员🔰𒅒"..sjbq,
    [10] = sjbq.."𒅒🔰切 换 辅 助🔰𒅒"..sjbq,
    [11] = sjbq.."𒅒🔰️解 锁 功 能🔰𒅒"..sjbq,
    [12] = sjbq.."𒅒🔰️联 机 专 区3🔰𒅒"..sjbq,
    [13] = sjbq.."𒅒🔰️查 询 代 码🔰𒅒"..sjbq,
    [14] = sjbq.."𒅒🔰️加 密 功 能🔰𒅒"..sjbq,
    [15] = sjbq.."𒅒🔰️查 询 天 气🔰𒅒"..sjbq,    
    [16] = sjbq.."𒅒🔰️退 出 脚 本🔰𒅒"..sjbq,    
},2018,os.date("𒅒当前版本4.0，当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end
if SY==6 then Main6() end 
if SY==7 then Main7() end 
if SY==8 then Main8() end 
if SY==9 then Main9() end 
if SY==10 then Main10() end 
if SY==11 then Main11() end 
if SY==12 then Main12() end 
if SY==13 then Main13() end 
if SY==14 then Main14() end
if SY==15 then Main15() end 
if SY==16 then Exit() end 
FX1=0 end
function Main11() gg.clearList() end

function G3()
menu1 = gg.choice({
'🧊🍼无敌秒杀[死亡 开启]🍼🧊',--1
'🧊🍼武器附魔[放在第1格]🍼🧊',--2
'🧊🍼工具附魔[放在第1格]🍼🧊',--3
'🧊🍼自定附魔[放在第1格]🍼🧊',--4
'🧊🍼第一格坐骑位改坐骑🍼🧊',--5
'🧊🍼玩法背包改创造背包🍼🧊',--6
'🧊🍼手机开电脑40人房间🍼🧊',--7
'🧊🍼开发者页面按钮🍼    🧊',--8
'🧊🍼彩蛋枪超快射速🍼🧊    ',--9  
'🧊🍼改坐标🍼            🧊',--10
'🧊🍼无限脚印[开启]🍼🧊    ',--11         	     	
'🧊🍼[玩家生物烧死]🍼    🧊',--12 
'🧊🍼秒挖一切方块🍼🧊      ',--13
'🧊🍼落地秒杀[开启]🍼    🧊',--14                    	     	              	     	
'🧊🍼坐骑生物加速🍼🧊      ',--15 
'🧊🍼动态发图片链接🍼    🧊',--16         	     	              	     	
'🧊🍼更改地图名字🍼🧊      ',--17        	     	              	     	
'🧊🍼更改玩家大小🍼🧊      ',--18      	     	              	     	
'🧊🍼华丽变身勋章🍼🧊      ',--19
'🧊🍼无 限 血 量🍼🧊       ',--20
'🧊🍼时 间 加 速🍼       🧊',--21 	              	     	
'   🍼返 回 主 页🍼          '},
nil,'🍼当前：房主功能🍼\nBY:小晨!')
if menu1 == 1 then XC1() end
if menu1 == 2 then XC2() end
if menu1 == 3 then XC3() end
if menu1 == 4 then XC4() end
if menu1 == 5 then XC5() end
if menu1 == 6 then XC6() end
if menu1 == 7 then XC7() end
if menu1 == 8 then XC8() end
if menu1 == 9 then XC9() end
if menu1 == 10 then XC10() end
if menu1 == 11 then XC11() end
if menu1 == 12 then XC12() end
if menu1 == 13 then XC13() end
if menu1 == 14 then XC14() end
if menu1 == 15 then XC15() end
if menu1 == 16 then XC16() end
if menu1 == 17 then XC17() end
if menu1 == 18 then XC18() end
if menu1 == 19 then XC19() end
if menu1 == 20 then XC20() end
if menu1 == 21 then XC21() end
if menu1 == 22 then Main() end
GLWW=-1
end

function XC1() 
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
end

function XC2() 
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

function XC3() 
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

function XC4() 
fm1 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = fm1, ["offset"] = 12, ["type"] = 4},
{["value"] = fm2, ["offset"] = 16, ["type"] = 4},
{["value"] = fm3, ["offset"] = 20, ["type"] = 4},
{["value"] = fm4, ["offset"] = 24, ["type"] = 4},
{["value"] = fm5, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function XC5() 
o2= gg.choice({
    "𒅒🧊化石龙🧊𒅒",
    "𒅒🧊机灵飞鼠🧊𒅒",
    "𒅒🧊瑞祥麒麟🧊𒅒",
    "𒅒🧊陆行鸟🧊𒅒",
    "𒅒🧊️大白象🧊𒅒",    
    "𒅒🧊️超能海豹🧊𒅒",
    "𒅒🧊舞狮猫猫🧊𒅒",
    "𒅒🧊星河天马🧊𒅒",
    "𒅒🧊桃香扇缘🧊𒅒",
    "𒅒🧊深渊咆哮🧊𒅒",
    "𒅒🧊皎月仙宫🧊𒅒",
    "𒅒🧊冰雪传说🧊𒅒",   
    "𒅒🧊缤纷幻想🧊𒅒",
    "𒅒🧊福运哞哞🧊𒅒",
    "𒅒🧊浮游山海🧊𒅒",
    "𒅒🧊镜花水月🧊𒅒",
    "𒅒🧊️鹿王本身🧊𒅒", 
     "𒅒🧊️精灵南瓜车🧊𒅒", 
      "𒅒🧊️竹 蜻 蜓🧊𒅒",   
      "𒅒🧊️曦光绘梦🧊𒅒",  
      "𒅒🧊️裂空机甲🧊𒅒",
      "𒅒🧊️星河机甲🧊(等更)𒅒",
 "𒅒🧊自定义召唤🧊𒅒",    
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒站得太久，都不知道自己在等什么𒅒"))
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
if o2==22 then o=Main o4() end
if o2==23 then o=gg.prompt({"输入坐骑代码"},{[1]=4514},{[1]="number"})[1] o4() end
if o2==24 then o=4521 o4() end
XGCK=-1 end

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
end

function XC6() 
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function XC7() 
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

function XC8() 
	qmnb = {
{["memory"] = 4},
{["name"] = "开发者页面"},
{["value"] = 1697, ["type"] = 4},
{["lv"] = 18, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1616, ["offset"] = -8, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -12, ["type"] = 4},
{["lv"] = 2, ["offset"] = -52, ["type"] = 4},
{["lv"] = 3, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -12, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function XC9() 
F = gg.alert("请选择功能","彩蛋枪强化1","自定义️子弹2️️")
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
gg.clearResults()
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
gg.clearResults()
end
end

function XC10() 
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
{["lv"] = a, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = Q, ["offset"] = 8, ["type"] = 4},
{["value"] = W, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
end

function b11() 
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
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

function XC12() 
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384},
{["name"]="烧死"},
{["value"]=449005139,["type"]=4},
{["lv"]=1096368729,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="烧死关"},
{["value"]=449005139,["type"]=4},
{["lv"]=1096368729,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.64119911194,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
end
end

function XC13() 
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="秒挖方块开"},
{["value"]=2001,["type"]=4},
{["lv"]=1120403456,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=-4,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="秒挖方块关"},
{["value"]=2001,["type"]=4},
{["lv"]=1120403456,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=20,["offset"]=-4,["type"]=16}
}
xqmnb(qmnb)
end
end

function XC14() 
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="一摔就死开"},
{["value"]=471352985,["type"]=4},
{["lv"]=507745027,["offset"]=0x4,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0xC,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="一摔就死关"},
{["value"]=471352985,["type"]=4},
{["lv"]=507745027,["offset"]=0x4,["type"]=4}
}
qmxg={
{["value"]=100,["offset"]=0xC,["type"]=16}
}
xqmnb(qmnb)
end
end

function XC15() 
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,70)
gg.toast("所有生物加速: 开启成功")
 elseif  F== 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,10)
gg.toast("所有生物加速: 开启成功")
end
end

function XC16() 
gg.alert("🧊先点击动态发布按钮🧊","️开启️️")
qmnb = {
{["memory"] = 4},
{["name"] = "动态发图片"},
{["value"] = 812, ["type"] = 32},
{["lv"] = 632, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 36, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function XC17() 
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

function XC18() 
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

function XC19() 
vip= gg.prompt({"输入一个你拥有的皮肤的代码1胖达2齐天小圣3兔美美4迷斯拉5琉璃奖6乔治7墨家小飞8安妮9德古拉10叮叮当11荒野猎人12羽姬14乔一15篮球队长16啦啦队长20锦衣卫 21花小楼 22莉莉丝 23月无双 24叶小龙 25二狼神 26鱼小乐 27迷俊俊 28幻音 29幻0式 30柳仙儿 31帕普奇 32米娜 33雪人 34嘟嘟啵啵 35啵啵 36嘟嘟 37梦歌 38斩浪 39天使 40暗灵 50乔克 51小艾 52秦天柱 53威震天 54慕斯 55金悠悠 56喜团团 57林千树 58大黄蜂 59花幽幽 60星灵 61雪球球 62爱丽丝 63龟太郎 64红蜘蛛 65热破 66惊破天 67劳尔 68铃音 69清弦 70紫悦 71宇宙公主 72柔柔女孩 73月亮公主 74钢索 75飞镖 76嚎叫 77达奇 78塔琳娜 79森林隐者 80兔子拉比 81碧琪 82卡洛尔 83余小环 84章小丸 85熊小吉 86星光熠熠 87云宝 88音韵公主 89初慕 90冲云霄 96大无畏 91 利爪 92富余人物2/ 93富余人物3/ 94富余人物4/ 95副余人物5/ 91富余人物6/ 97富余人物7/ 98富余人物8/ 99富余人物9/ 100富余人物10/ 101富余人物11/ 102圣婴 103牛魔王 104灵瑶 105小红帽"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},

}
xqmnb(qmnb)
end

function b20() 
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

function XC21() 
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

function Main1()
menu = gg.choice({
"房主功能1.0",
"房主功能2.0",
"房主功能3.0",
"5.返回主页",},nil,"小晨房主专区!\n2.0更新")
if menu == 1 then G1() end
if menu == 2 then XCP1() end
if menu == 3 then G3() end
if menu == 4 then Main() end
FX1=0
end  

function G1()
SN = gg.multiChoice({
"🧊无限物品{第1格放2个物品}🧊",
"🧊无敌秒杀[死亡状态开启]🧊",
"🧊武器附魔[放在第1格]🧊",
"🧊工具附魔[放在第1格]🧊",
"🧊第一格坐骑位改坐骑🧊",
"🧊玩法背包改创造背包🧊",
"🧊手机开电脑大房间🧊",
"🧊开发者页面按钮🧊",
"🧊彩蛋枪超快射速🧊",   
"🧊锁坐标摔死[开]🧊",
"🧊无限脚印[开启]🧊",           	     	
"🧊[玩家生物烧死]🧊",  
"🧊秒挖一切方块🧊",
"🧊落地秒杀[开启]🧊",                      	     	              	     	
"🧊坐骑生物加速🧊",   
"🧊动态发图片链接🧊",           	     	              	     	
"🧊更改地图名字🧊",          	     	              	     	
"🧊更改玩家大小🧊",       	     	              	     	
"🧊华丽变身勋章🧊",       	     	              	     	
"🎡返 回 主 页🎡",
 }, nil, "𒅒希望你不要因为廉价的新鲜感,而丢掉陪伴你很久的那个人𒅒")
if SN == nil then else
if SN[1]==true then	 a1() end
if SN[2]==true then	 a2() end
if SN[3]==true then	 a4() end
if SN[4]==true then	 a5() end
if SN[5]==true then	 a7() end
if SN[6]==true then      a8() end
if SN[7]==true then	 a9() end
if SN[8]==true then	 a10() end
if SN[9]==true then	 a11() end
if SN[10]==true then	 a13() end
if SN[11]==true then	 a16() end
if SN[12]==true then	 a17() end
if SN[13]==true then	 a18() end
if SN[14]==true then	 a20() end
if SN[15]==true then	 a21() end
if SN[16]==true then	 a22() end
if SN[17]==true then	 a23() end
if SN[18]==true then	 a24() end
if SN[19]==true then	 a25() end
if SN[20]==true then	 Main() end end
FX=0 end

function a25()
vip= gg.prompt({"输入一个你拥有的皮肤的代码1胖达2齐天小圣3兔美美4迷斯拉5琉璃奖6乔治7墨家小飞8安妮9德古拉10叮叮当11荒野猎人12羽姬14乔一15篮球队长16啦啦队长20锦衣卫 21花小楼 22莉莉丝 23月无双 24叶小龙 25二狼神 26鱼小乐 27迷俊俊 28幻音 29幻0式 30柳仙儿 31帕普奇 32米娜 33雪人 34嘟嘟啵啵 35啵啵 36嘟嘟 37梦歌 38斩浪 39天使 40暗灵 50乔克 51小艾 52秦天柱 53威震天 54慕斯 55金悠悠 56喜团团 57林千树 58大黄蜂 59花幽幽 60星灵 61雪球球 62爱丽丝 63龟太郎 64红蜘蛛 65热破 66惊破天 67劳尔 68铃音 69清弦 70紫悦 71宇宙公主 72柔柔女孩 73月亮公主 74钢索 75飞镖 76嚎叫 77达奇 78塔琳娜 79森林隐者 80兔子拉比 81碧琪 82卡洛尔 83余小环 84章小丸 85熊小吉 86星光熠熠 87云宝 88音韵公主 89初慕 90冲云霄 96大无畏 91 利爪 92富余人物2/ 93富余人物3/ 94富余人物4/ 95副余人物5/ 91富余人物6/ 97富余人物7/ 98富余人物8/ 99富余人物9/ 100富余人物10/ 101富余人物11/ 102圣婴 103牛魔王 104灵瑶 105小红帽"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},

}
xqmnb(qmnb)
end
function a24()
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
function a23()
o3= gg.choice({
    "🧊萌清定制名字🧊",
    "🧊CA定制名字️🧊",
    "🧊️🧊",
    "🧊🧊",
    "🧊🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了⚠️"))
if o3==1 then  vi1() end
if o3==2 then  vi2() end
if o3==3 then  vi3() end
if o3==4 then  vi4() end
if o3==5 then  vi5() end
if o3==6 then  Main() end
XGCK=-1 end
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
function a22()
gg.alert("🧊先点击动态发布按钮🧊","🍁️开启🍁️️")
qmnb = {
{["memory"] = 4},
{["name"] = "动态发图片"},
{["value"] = 812, ["type"] = 32},
{["lv"] = 632, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 36, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function a21()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,70)
gg.toast("所有生物加速: 开启成功")
 elseif  F== 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,10)
gg.toast("所有生物加速: 开启成功")
end
end
function a16()
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
function a18()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="秒挖方块开"},
{["value"]=2001,["type"]=4},
{["lv"]=1120403456,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=-4,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="秒挖方块关"},
{["value"]=2001,["type"]=4},
{["lv"]=1120403456,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=20,["offset"]=-4,["type"]=16}
}
xqmnb(qmnb)
end
end
function a17()
F=gg.alert("🔰请选择｛开 关｝🔰", "🍁开🍁", "🍁️关🍁️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("📌你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384},
{["name"]="烧死"},
{["value"]=449005139,["type"]=4},
{["lv"]=1096368729,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="烧死关"},
{["value"]=449005139,["type"]=4},
{["lv"]=1096368729,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.64119911194,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
end
end

function a20()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="一摔就死开"},
{["value"]=471352985,["type"]=4},
{["lv"]=507745027,["offset"]=0x4,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0xC,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="一摔就死关"},
{["value"]=471352985,["type"]=4},
{["lv"]=507745027,["offset"]=0x4,["type"]=4}
}
qmxg={
{["value"]=100,["offset"]=0xC,["type"]=16}
}
xqmnb(qmnb)
end
end
function a2()
gg.toast("开启成功后点击继续探险")
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
function a3()
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
function a4()
gg.clearResults()
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
gg.clearResults()
end
function a11()
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
gg.clearResults()
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
gg.clearResults()
end
end
function a5()
gg.clearResults()
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
gg.clearResults()
end

function a7()
o2= gg.choice({
    "𒅒🧊化石龙🧊𒅒",
    "𒅒🧊机灵飞鼠🧊𒅒",
    "𒅒🧊瑞祥麒麟🧊𒅒",
    "𒅒🧊陆行鸟🧊𒅒",
    "𒅒🧊️大白象🧊𒅒",    
    "𒅒🧊️超能海豹🧊𒅒",
    "𒅒🧊舞狮猫猫🧊𒅒",
    "𒅒🧊星河天马🧊𒅒",
    "𒅒🧊桃香扇缘🧊𒅒",
    "𒅒🧊深渊咆哮🧊𒅒",
    "𒅒🧊皎月仙宫🧊𒅒",
    "𒅒🧊冰雪传说🧊𒅒",   
    "𒅒🧊缤纷幻想🧊𒅒",
    "𒅒🧊福运哞哞🧊𒅒",
    "𒅒🧊浮游山海🧊𒅒",
    "𒅒🧊镜花水月🧊𒅒",
    "𒅒🧊️鹿王本身🧊𒅒", 
     "𒅒🧊️精灵南瓜车🧊𒅒", 
      "𒅒🧊️竹 蜻 蜓🧊𒅒",     
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒站得太久，都不知道自己在等什么𒅒"))
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
XGCK=-1 end
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
function a8()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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
function a9() SH = gg.choice({
   "𒅒🔰开10人房间🔰𒅒",
   "𒅒🔰开20人房间🔰𒅒",
   "𒅒🔰开30人房间🔰𒅒",
   "𒅒🔰️开40人房间🔰𒅒",
   "𒅒🔰️返 回 主 页🔰𒅒",
},2018,os.date("𒅒开启成功后直接开房间就行了,建议每次开房间前都开一次这功能𒅒"))
if SH==1 then a9a=7 o5=10 ca1()end
if SH==2 then a9a=8 o5=20 ca1()end
if SH==3 then a9a=9 o5=30 ca1()end
if SH==4 then a9a=10 o5=40 ca1()end
XGCK=-1
end
function ca1() 
a9aa=o5
qmnb = {
{["memory"] = 4},
{["name"] = ""..a9aa.."人房间"},
{["value"] = 13963460608, ["type"] = 32},
{["lv"] = 4, ["offset"] = -0x2C, ["type"] = 4},
{["lv"] = 4, ["offset"] = -0xC, ["type"] = 4},
{["lv"] = 3, ["offset"] = -0x1C, ["type"] = 4},
{["lv"] = 13963788288, ["offset"] = 0xA0, ["type"] = 32},
}
qmxg = {
{["value"] = a9a, ["offset"] = -36, ["type"] = 64,["freeze"] = true},
}
xqmnb(qmnb)
end
function a10()
	qmnb = {
{["memory"] = 4},
{["name"] = "开发者页面"},
{["value"] = 1697, ["type"] = 4},
{["lv"] = 18, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1616, ["offset"] = -8, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -12, ["type"] = 4},
{["lv"] = 2, ["offset"] = -52, ["type"] = 4},
{["lv"] = 3, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -12, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
 end
function a13()
A3 = gg.prompt({"输入你的高度"}
,{[1]=8},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -0x10, ["type"] = 4},
{["lv"] = 180, ["offset"] = -0xC, ["type"] = 4},
{["lv"] = 120, ["offset"] = -0x4, ["type"] = 4},
{["lv"] = A3, ["offset"] = 0x24, ["type"] = 4},
}
qmxg = {
{["value"] = 61, ["offset"] = -0x10, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "锁坐标摔死"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -0x10, ["type"] = 4},
{["lv"] = 180, ["offset"] = -0xC, ["type"] = 4},
{["lv"] = 120, ["offset"] = -0x4, ["type"] = 4},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0xC, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 end


function Main2()
menu1 = gg.choice({
'🍼无 限 物 品🍼',--1
'🍼伪 装 房 主🍼',--2
'🍼人 物 穿 墙🍼',--3
'🍼创 造 背 包🍼',--4
'🍼修 改 宠 物🍼',--5
'🍼无 限 连 跳🍼',--6
'🍼远 程 攻 击🍼',--7
'🍼人 物 加 速🍼',--8
'🍼自 定 跳 高🍼',--9
'🍼人 物 技 能🍼',--10
'🍼选 择 数 量🍼',--11
'🍼添 加 东 西🍼',--12
'🍼创 造 飞 行🍼',--13
'🍼飞 行 速 度🍼',--14
'🍼备 用 穿 墙🍼',--15
'🍼修 改 皮 肤🍼',--16
'🍼联 机 取 物1🍼',--17
'🍼联 机 取 物2🍼',--18
'🍼添 加 火 箭 背 包🍼',--19
'🍼刷 强 大 如 我 勋 章🍼',--20
'🍼水 上 行 走🍼',--21
'🍼控 制 别 人 打 字🍼',--22
'🍼添 加 棉 棉 披 风（小晨原创）🍼',--23
'🍼返 回 主 页🍼'},
nil,'🍼当前：联机功能🍼')
if menu1 == 1 then c1() end
if menu1 == 2 then c2() end
if menu1 == 3 then c3() end
if menu1 == 4 then c4() end
if menu1 == 5 then c5() end
if menu1 == 6 then c6() end
if menu1 == 7 then c7() end
if menu1 == 8 then c8() end
if menu1 == 9 then c9() end
if menu1 == 10 then c10() end
if menu1 == 11 then c11() end
if menu1 == 12 then c12() end
if menu1 == 13 then c13() end
if menu1 == 14 then c14() end
if menu1 == 15 then c15() end
if menu1 == 16 then c16() end
if menu1 == 17 then XCKNB() end
if menu1 == 18 then XC857() end
if menu1 == 19 then XCQ21() end
if menu1 == 20 then XCBY() end
if menu1 == 21 then SMXC() end
if menu1 == 22 then NMXC() end
if menu1 == 23 then XCZM() end
if menu1 == 24 then Main() end
GLWW=-1
end

function c1()
gg.toast("请选择复刻物品开关")
F = gg.alert("请选择复刻第一格物品｛开 关｝","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("功 能 指 南\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
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

function c2()
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
function bbb40()
qmnb = {
{["memory"] = 4},
{["name"] = "无限耐久"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function c3()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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
end
end

function c4()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function c5()
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

function c6()
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

function c7()
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

function c8()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 250}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function c9()
gg.alert("开启后如果想恢复，退出房间重新进即可")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.toast("nil")
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数(60等于2.3倍，自己算)，0～1000   默认150'}, {i='150'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("开启成功")
end

function c10()
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

function c11()
as=gg.prompt({
"输入物品代码不知道就按寻找代码找"}, {[1]=0}, {[1]="number"})[1]
end
function bbb40()
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
gg.clearResults()
end

function c12()
vs=gg.prompt({
"在创造模式把你要添加的东西放1个在第8格,一会儿会自动搜索完成后自己点转到,滑到黄色框框下面30格,有1个-11开头的数值,(注意！代码不是固定的每次进入游戏代码会刷新,如果你重新打开了游戏上一次的代码就用不了要重新找)"}, {[1]=0}, {[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "寻找代码"},
{["value"] = 4062199228405908463, ["type"] = 32},
}
xqmnb(qmnb)
end

function c13()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.toast("🎡如果按键消失点击修改器即可🎡")
qmnb = {
{["memory"] = 4},
{["name"] = "伪·飞行(开)"},
{["value"] = 1931, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 508, ["type"] = 4},
}
qmxg = {
{["value"] = 16777473,["offset"] =-4, ["type"] = 4,["freeze"] = true},
{["value"] = 16777473,["offset"] =508, ["type"] = 4,["freeze"] = true},
{["value"] = 16777473,["offset"] =1020, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪·飞行(关)"},
{["value"] = 1931, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = 508, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216,["offset"] =-4, ["type"] = 4,["freeze"] = true},
{["value"] = 16777216,["offset"] =508, ["type"] = 4,["freeze"] = true},
{["value"] = 16777216,["offset"] =1020, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end

function c14()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,70)
gg.toast("飞行上升速度: 开启成功")
 elseif F == 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,15)
gg.toast("飞行上升速度: 开启成功")
end
end

function c15()
AA1 = gg.prompt({"请输入你的高度"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = AA1, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = -99999, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function c16()
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


function Main3() 
menu = gg.choice({
"1.创造炸图",
"2.生存炸图",
"3.生存炸图2.0",
"4.生存炸图3.0",
"5.生存炸图4.0",
"5.返回主页",},nil,"该功能超级加强!\n去炸图吧!")
if menu == 1 then XEC() end
if menu == 2 then CASC() end
if menu == 3 then MNP666() end
if menu == 4 then SERP() end
if menu == 5 then VEXE() end
if menu == 6 then Main() end
FX1=0
end
function XEC()
SN = gg.multiChoice({
	 "能量剑改巨型炸弹",
	 "短剑改熔岩黑龙球",
	 "突刺长枪改黑龙",
	 "石矛改黑龙火球",
	 "牛蛋改岩浆",
	 "返回主页",
}, nil, "短剑改熔岩黑龙球以修复!\n推荐使用!\n去娱快的炸图吧！")
 if SN == nil then else
if SN[1]==true then A1() end
if SN[2]==true then A2() end
if SN[3]==true then A3() end
if SN[4]==true then A4() end
if SN[5]==true then A5() end
if SN[6]==true then A8() end end
FX1=0 end

function A1()
XE(
{
{4},
{"能量剑改巨型炸弹"}, 
{12005, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15518, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end

function A2()
XE(
{
{4},
{"短剑改熔岩黑龙球"}, 
{12003, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15056, 0, gg.TYPE_DWORD, false},
}
)
     gg.clearResults()
     Main()
end

function A3()
XE(
{
{4},
{"突刺长矛改毁图生物"}, 
{12004, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{13502, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main()
end

function A4()
XE(
{
{4},
{"石矛改黑龙球"}, 
{12002, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15054, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main()
end

function A5()
XE(
{
{4},
{"牛蛋改岩浆"}, 
{13401, gg.TYPE_DWORD},
{2, 8, gg.TYPE_DWORD}, 
{30, 68, gg.TYPE_DWORD}, 
},
{
{6, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main()
end

function A6()
XE(
{
{4},
{"木棒改物理方块"}, 
{12001, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15525, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main()
end

function A7()
XE(
{
{4},
{"斧矛改火"}, 
{11002, gg.TYPE_DWORD},
{2, 20, gg.TYPE_DWORD}, 
{80, 68, gg.TYPE_DWORD}, 
},
{
{500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end

function A8()
	 Main()
end

function CAP()
SN = gg.choice({
	 "人物加速",
	 "锁血",
	 "飞天",
	 "超级穿墙（任何房可用）",
	 "钻石剑秒杀",
	 "伤害转移(一直按不是点联机可用)",
	 "远程攻击",
	 "钻石剑无冷却",
	 "人物失重",
	 "人物天线",
	 "无敌秒杀",
	 "人物隐身",
	 "代开发。。。。。。。。。。。。",
}, nil, "\n干废迷你🐶\n当前位置:PVP专区!\nPVP没代码。。。。。。。。。。")
if SN==1 then
	 HS27()
end
if SN==2 then
	 HS48()
end
if SN==3 then
	 HS63()
end
if SN==4 then
	 HS84()
end
if SN==5 then
     CA66()
end
if SN==6 then
     bbb13()
end
if SN==7 then
     CA88()
end     
if SN==8 then
     VC012()
end     
if SN==9 then
     bbb2()    
end           
if SN==10 then
     e9()               
end    
if SN==11 then
     CAtdms()               
end      
if SN==12 then
     d10()               
end
if SN==13 then
     M()        
end
if SN==14 then
     d10()               
end                            
FX=0
end

function d10()
AA1 = gg.prompt({"[请输入你的高度]开启成功后用飞行行走"}
,{[1]=8},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = AA1, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = 40000, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "隐身"},
{["value"] = zh1, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = -255, ["offset"] = 0x140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function CAwdms()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌秒杀"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -200, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = -200, ["type"] = 16},
{["value"] = 999, ["offset"] = 0, ["type"] = 16},
{["value"] = 2000, ["offset"] = -272, ["type"] = 16},
}
xqmnb(qmnb)
end

function e9()
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
	 gg.toast("人物天线修改成功")
end

function bbb2()
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


function a2()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
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

function bbb13()
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

function d55()
qmnb = {
{["memory"] = 4},
{["name"] = "人物影子方框"},
{["value"] = 1768435456, ["type"] = 4},
{["lv"] = 5, ["offset"] = 220, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 220, ["type"] = 4},
}
xqmnb(qmnb)

end

function d66()
qmnb = {
{["memory"] = 4},
{["name"] = "人物影子方框"},
{["value"] = 1768435456, ["type"] = 4},
{["lv"] = 4, ["offset"] = 220, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 220, ["type"] = 4},
}
xqmnb(qmnb)

end

function cc4()
qmnb = {
{["memory"] = 16384},
{["name"] = "上帝视角"},
{["value"] = 1138819072, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = 8, ["type"] = 4},
}
qmxg={
{["value"] = 5000, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function j()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "秒杀"},
{["value"] = -840053267, ["type"] = 4},
{["lv"] = 136, ["offset"] = -4256, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4248, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4184, ["type"] = 4},
{["lv"] = 0, ["offset"] = -404, ["type"] = 4},
{["lv"] = -697184787, ["offset"] = -12, ["type"] = 4},
{["lv"] = -840051153, ["offset"] = -8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 12, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -404, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function VC012()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;12005D;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("钻石剑无冷却开启成功")
	 gg.clearResults()
end

function CA88()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.10000000149F;250F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function CCTV5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("898454573D;0.02816440724;6.81184387207;1;1.0441562e-9::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end
function CCTV8()
CA(
{
{4},
{"人物上色"}, 
{"40", gg.TYPE_QWORD},
{"40", 16, gg.TYPE_DWORD}, 
},
{
{"10", 132, gg.TYPE_DWORD, true},
}
)
	 gg.clearResults()
     Main()
end

function CA66()
     gg.clearResults()
     gg.searchNumber("12005;12005;35F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(20)
     gg.editAll("9999999", gg.TYPE_FLOAT)
     gg.toast("钻石剑秒杀开启失败")
     gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("修改成功！")
	 gg.clearResults()
end

function HS27()
   local a = "1"
   local b = "2"
   local c = "3"
   local prompt = gg.prompt({"请调节速度 [1;3]"},nil,{"number"}) or {""}
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('8.289173e-317E;10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)	 jg=gg.getResults(100)
if prompt[1] == a then
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_FLOAT ,freeze = true,value = 50,}})
end
end
if prompt[1] == b then
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_FLOAT ,freeze = true,value = 100,}})
end
end
if prompt[1] == c then
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_FLOAT ,freeze = true,value = 150,}})
end
end
gg.toast('开启成功')
end

function HS48()
gg.setRanges(4)
local dataType = 16
local tb1 = {{100, 0}, {100, -4}, {100, 152}, {100, 164}, }
local tb2 = {{666666, 0,true}, {666666, -4,true}, {666666, 152,true}, {666666, 164,true}, }
SearchWrite(tb1, tb2, dataType)
end


function HS63()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("无限跳开启成功")
	 gg.clearResults()
end
function HS69()

	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("15004;15003;2;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("773,094,113,340", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("773,094,113,340", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-4,186,217,621,233,364,896", gg.TYPE_QWORD)
	 gg.toast("开启成功！")
	 gg.clearResults()
end

function HS68()
XE(
{
{4},
{"狙击连发"}, 
{15003, gg.TYPE_DWORD},
{1137836032, -16, gg.TYPE_DWORD}, 
{60, -40, gg.TYPE_DWORD}, 
},
{
{1, -4, gg.TYPE_DWORD, false},
}
)
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("40", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_WORD,freeze = true,value = 99999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99()
XE(
{
{4},
{"平飞第一步"}, 
{249856, gg.TYPE_DWORD},
{16777472, 4, gg.TYPE_DWORD}, 
},
{
{16777216, 4, gg.TYPE_DWORD, false},
}
)
XE(
{
{4},
{"平飞"}, 
{266240, gg.TYPE_DWORD},
{16777216, 4, gg.TYPE_DWORD}, 
},
{
{16777472, 4, gg.TYPE_DWORD, false},
}
)
     Main()
end

function CASC()
SN = gg.multiChoice({
	 "生存改创造",
	 "玩法改创造",
	 "第八格添加地形编辑器",
	 "传送图腾改地图编辑器",
	 "钻石剑改地形编辑器",
	 "钩爪改地形编辑器",
	 "解除地形编辑器使用",
	 "仙人掌改TNT",
	 "召唤Boss",
	 "生存改创造[永久]",
	 "增强改创造[永久]",
	 "开发者工具",
	 "返回主页",
}, nil, "生存也可以炸图，也可以用来恶心人\n低概率闪退")
 if SN == nil then else
if SN[1]==true then HS34() end
if SN[2]==true then c2() end
if SN[3]==true then HS37() end
if SN[4]==true then C41() end
if SN[5]==true then BN1() end
if SN[6]==true then HS1() end
if SN[7]==true then ccc4() end
if SN[8]==true then CCTV10() end
if SN[9]==true then b32() end
if SN[10]==true then c10() end
if SN[11]==true then c1() end 
if SN[12]==true then CAkf() end
if SN[13]==true then Main() end end
FX1=0 end

function  CAkf()
  gg.setRanges(4)
local dataType = 4
local tb1 = {{2095, 0}, {1127153664, 80}, {16777216, -12}}
local tb2 = {{16777472, -12,true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("开启成功\n天晴傻逼")
	 gg.clearResults()
end

function c10()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="生存改创造"},
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

function c1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="增强改创造"},
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

function c2()
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "增强改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
Main()
end

function CA99()
gg.toast("正在关闭创造背包数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "关闭创造背包"},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -240, ["type"] = 4},
{["lv"] = 10, ["offset"] = -52, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = -240, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function c()
gg.toast("正在调用创造背包数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -240, ["type"] = 4},
{["lv"] = 10, ["offset"] = -52, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -240, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function C41()
XE(
{
{4},
{"传送卷轴改地形编辑器"}, 
{12964, gg.TYPE_DWORD},
{2, 8, gg.TYPE_DWORD}, 
{1, 4, gg.TYPE_DWORD}, 
},
{
{10500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end

function CCTV10()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改TNT"},
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
Main()
end

function SERP()
menu1 = gg.choice({
'能量剑改地形编辑器',
'勾爪改地形编辑器',
'全局創造',
'取消禁用危险品',
'卡圖',
'纯生存改创造',
'仙人掌改炸弹',
'家园道具',
'传送改编辑器',
'仙人掌自定义',
'自定义恢复',
'面包改编辑器',
'星星礼盒改编辑器',
'自定义修改器',
'添加编辑器',
'通用创造',
'创造炸图',
'开发者模式',
'别人房间添加物品',
'返回辅助'},
nil,'不能动感情，因为感情会拖累你...')
if menu1 == 1 then ccc1() end
if menu1 == 2 then ccc2() end
if menu1 == 3 then ccc3() end
if menu1 == 4 then ccc4() end
if menu1 == 5 then ccc5() end
if menu1 == 6 then ccc6() end
if menu1 == 7 then ccc7() end
if menu1 == 8 then ccc8() end
if menu1 == 9 then ccc9() end
if menu1 == 10 then ccc10() end
if menu1 == 11 then ccc11() end
if menu1 == 12 then ccc12() end
if menu1 == 13 then ccc13() end
if menu1 == 14 then ccc14() end
if menu1 == 15 then ccc15() end
if menu1 == 16 then ccc16() end
if menu1 == 17 then ccc17() end
if menu1 == 18 then ccc18() end
if menu1 == 19 then ccc19() end
if menu1 == 20  then
	Main()
	 end
GLWW=-1
end



function ccc1()
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


function ccc2()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("E62E0000rD;02000000rD:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10500", gg.TYPE_DWORD)
	 gg.toast("修改成功改成创造才有效")
	 gg.clearResults()
end

function ccc3()
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


function ccc4()
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



function ccc5()
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


function ccc6()
f = gg.prompt({"请输入房主迷你号"}
,{[1]=607884226},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = f, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function ccc7()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "👻👻"},
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
function ccc8()  
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
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("𒅒开启后打开编辑器在植物那个分类里找到南瓜𒅒"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"输入方块代码"},{[1]=4095},{[1]="number"})[1] i1() end
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


function ccc9()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("A4320000rD;02000000rD::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10500", gg.TYPE_DWORD)
	 gg.toast("修改成功改成创造才有效")
	 gg.clearResults()
end
function ccc10()
b = gg.prompt({"请输入物品代码，-1400音乐盒-1401天空布置-1402重力装备-1403天气控制器-1404家园工作台-1405宠物窝-1406灶台-1472-1477家园植物-1673-1690家园特殊-1550-1750家园物品-虚空方块4095"}
,{[1]=1080},{[1]="物品"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "👻👻"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 260, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function ccc11()
b = gg.prompt({"请输入物品代码，-1400音乐盒-1401天空布置-1402重力装备-1403天气控制器-1404家园工作台-1405宠物窝-1406灶台-1472-1477家园植物-1673-1690家园特殊-1550-1750家园物品"}
,{[1]=1080},{[1]="物品"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "👻👻"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = b, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 242, ["offset"] = 260, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function ccc12()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("293299;12550", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12550", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("香溢面包改地形编辑器开启成功")
	 gg.clearResults()
end
function ccc13()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "改编辑器"},
{["value"] = 12963, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 2, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 10500, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "改编辑器"},
{["value"] = 10500, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 2, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 12963, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
end
function ccc14()
as = gg.prompt({"输入要更改物品的代码，信纸11806其他代码自己弄"}
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
function  ccc15()
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

function  ccc16()
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
function  ccc17()
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


function  ccc18()
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 196935680, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("再次点击悬浮窗自动恢复")
gg.clearResults()
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
qmnb = {
{["memory"] = 4},
{["name"] = "开发者关闭"},
{["value"] = 196935680, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
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

function  ccc19()
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
function VEXE()
SN = gg.choice({
"远程攻击",
"解除禁用危险品",
"留言板",
"留言板关",
"摇头开",
"摇头关",
"开发者页面(先打开开发者页面)",
"开发者页面关",
"烧死玩家",
"烧死玩家关",
"秒挖方块",
"秒挖方块关",
"全图炸弹(联机可用)",
"玩家变动物(自定义修改)",
"所有模式变创造",
"所有模式变创造关",
"能量剑改地形编辑器",
"能量剑改地形编辑器关",
"香溢面包改地形编辑器",
"香溢面包改地形编辑器关",
"云服大厅2修改创造",
"云服大厅2修改创造关",
"狙击无后坐力",
"狙神",
"锁血",
"锁血关",
"设置速度",
"设置跳跃",
"设置全体起立",
"设置锁身",
"设置锁身关",
"附身别人",
"返回主页",
}, nil, "感谢杰的辅助!")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then HS8() end
if SN==9 then HS9() end
if SN==10 then HS10() end
if SN==11 then HS11() end
if SN==12 then HS12() end
if SN==13 then HS13() end
if SN==14 then HS14() end
if SN==15 then HS15() end
if SN==16 then HS16() end
if SN==17 then HS17() end
if SN==18 then HS18() end
if SN==19 then HS19() end
if SN==20 then HS20() end
if SN==21 then HS21() end
if SN==22 then HS22() end
if SN==23 then HS23() end
if SN==24 then HS24() end
if SN==25 then HS25() end
if SN==26 then HS26() end
if SN==27 then HS27() end
if SN==28 then HS28() end
if SN==29 then HS29() end
if SN==30 then HS30() end
if SN==31 then HS31() end
if SN==32 then HS32() end
if SN==33 then Main() end
FX1=0
end



function HS1()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "远程攻击"},
{["value"] = 1507551267, ["type"] = D},
{["lv"] = 1187047320,["offset"] =4, ["type"] = D},
},
{
{["value"] = 9999,["offset"] =16, ["type"] = F,["freeze"] = false},
{["value"] = 999,["offset"] =24, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS2()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "解除禁用危险品"},
{["value"] = 1762840583, ["type"] = D},
{["lv"] = 265295819,["offset"] =4, ["type"] = D},
{["lv"] = 1096303249,["offset"] =8, ["type"] = D},
},
{
{["value"] = 0,["offset"] =8, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS3()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "留言板"},
{["value"] = 406323200, ["type"] = D},
{["lv"] = 16777216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 16777472,["offset"] =4, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS4()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "留言板关"},
{["value"] = 406323200, ["type"] = D},
{["lv"] = 16777472,["offset"] =4, ["type"] = D},
},
{
{["value"] = 16777216,["offset"] =4, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS5()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "摇头开"},
{["value"] = 1127481344, ["type"] = D},
{["lv"] = 1092616192,["offset"] =4, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = D},
},
{
{["value"] = -9999,["offset"] =-8, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS6()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "摇头关"},
{["value"] = 1127481344, ["type"] = D},
{["lv"] = 1092616192,["offset"] =4, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = D},
},
{
{["value"] = 30,["offset"] =-8, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS7()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "开发者页面(先打开开发者页面)"},
{["value"] = 1114898432, ["type"] = D},
{["lv"] = 92,["offset"] =-68, ["type"] = D},
{["lv"] = 263,["offset"] =-72, ["type"] = D},
{["lv"] = 16777216,["offset"] =-76, ["type"] = D},
},
{
{["value"] = 16777472,["offset"] =-76, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS8()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "开发者页面关"},
{["value"] = 1114898432, ["type"] = D},
{["lv"] = 92,["offset"] =-68, ["type"] = D},
{["lv"] = 263,["offset"] =-72, ["type"] = D},
{["lv"] = 16777472,["offset"] =-76, ["type"] = D},
},
{
{["value"] = 16777216,["offset"] =-76, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS9()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "烧死玩家"},
{["value"] = 449005139, ["type"] = D},
{["lv"] = 1096368729,["offset"] =12, ["type"] = D},
},
{
{["value"] = 0,["offset"] =4, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS10()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "烧死玩家关"},
{["value"] = 449005139, ["type"] = D},
{["lv"] = 1096368729,["offset"] =12, ["type"] = D},
},
{
{["value"] = 13.64119911194,["offset"] =4, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS11()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "秒挖方块"},
{["value"] = 2001, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = D},
},
{
{["value"] = 0,["offset"] =-4, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS12()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "秒挖方块关"},
{["value"] = 2001, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-12, ["type"] = D},
},
{
{["value"] = 20,["offset"] =-4, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end



function HS13()
b = gg.prompt({"🐉请输入生物代码玩家会变动物🐉"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "玩家变动物"},
{["value"] = 945804460, ["type"] = D},
{["lv"] = -999,["offset"] =-152, ["type"] = D},
{["lv"] = 1092616192,["offset"] =-156, ["type"] = D},
},
{
{["value"] = b,["offset"] =-148, ["type"] = F,["freeze"] = true},
}
)
gg.clearResults()
end






function HS15()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "所有模式变创造"},
{["value"] = 939814400, ["type"] = D},
{["lv"] = 1187006320,["offset"] =8, ["type"] = D},
{["lv"] = 939879936,["offset"] =12, ["type"] = D},
},
{
{["value"] = 0,["offset"] =4, ["type"] = F,["freeze"] = false},
{["value"] = 0,["offset"] =-16, ["type"] = F,["freeze"] = false},
{["value"] = 0,["offset"] =-18, ["type"] = F,["freeze"] = false},
{["value"] = 0,["offset"] =16, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS16()
editData(
{
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "所有模式变创造关"},
{["value"] = 939814400, ["type"] = D},
{["lv"] = 1187006320,["offset"] =8, ["type"] = D},
{["lv"] = 939879936,["offset"] =12, ["type"] = D},
},
{
{["value"] = 13.51617717743,["offset"] =4, ["type"] = F,["freeze"] = false},
{["value"] = 13.51617717743,["offset"] =-60, ["type"] = F,["freeze"] = false},
{["value"] = 13.51617717743,["offset"] =-8, ["type"] = F,["freeze"] = false},
{["value"] = 13.51617717743,["offset"] =16, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS17()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "能量剑改地形编辑器"},
{["value"] = 2103921795, ["type"] = D},
{["lv"] = 12005,["offset"] =196, ["type"] = D},
},
{
{["value"] = 10500,["offset"] =196, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS18()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "能量剑改地形编辑器关"},
{["value"] = 2103921795, ["type"] = D},
{["lv"] = 10500,["offset"] =196, ["type"] = D},
},
{
{["value"] = 12005,["offset"] =196, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS19()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "香溢面包改地形编辑器"},
{["value"] = 2932997, ["type"] = D},
{["lv"] = 12500,["offset"] =196, ["type"] = D},
},
{
{["value"] = 10500,["offset"] =196, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS20()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "香溢面包改地形编辑器关"},
{["value"] = 2932997, ["type"] = D},
{["lv"] = 10500,["offset"] =196, ["type"] = D},
},
{
{["value"] = 12500,["offset"] =196, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS21()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "云服大厅2修改创造"},
{["value"] = 1011963275, ["type"] = D},
{["lv"] = 5,["offset"] =-20, ["type"] = D},
},
{
{["value"] = 4,["offset"] =-20, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS22()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "云服大厅2修改创造关"},
{["value"] = 1011963275, ["type"] = D},
{["lv"] = 4,["offset"] =-20, ["type"] = D},
},
{
{["value"] = 5,["offset"] =-20, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS23()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "狙击无后坐力"},
{["value"] = 1171963904, ["type"] = D},
{["lv"] = 1137836032,["offset"] =-4, ["type"] = D},
{["lv"] = 1152319488,["offset"] =-8, ["type"] = D},
{["lv"] = 1155186688,["offset"] =-12, ["type"] = D},
},
{
{["value"] = 0,["offset"] =-24, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS24()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "狙神"},
{["value"] = 15004, ["type"] = D},
{["lv"] = 15004,["offset"] =4, ["type"] = D},
{["lv"] = 15003,["offset"] =140, ["type"] = D},
},
{
{["value"] = 0,["offset"] =72, ["type"] = D,["freeze"] = false},
{["value"] = 0,["offset"] =104, ["type"] = D,["freeze"] = false},
{["value"] = 1,["offset"] =136, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end




function HS25()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "锁血"},
{["value"] = 945804460, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-196, ["type"] = D},
},
{
{["value"] = 2143289344,["offset"] =-196, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS26()
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "锁血关"},
{["value"] = 945804460, ["type"] = D},
{["lv"] = 2143289344,["offset"] =-196, ["type"] = D},
{["lv"] = 1120403456,["offset"] =-192, ["type"] = D},
},
{
{["value"] = 100,["offset"] =-196, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS27()
b = gg.prompt({"🐉请设置人物移动速度🐉"}
,{[1]=100},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "设置速度"},
{["value"] = 2147483647, ["type"] = D},
{["lv"] = 1092616192,["offset"] =-1084, ["type"] = D},
{["lv"] = 16777473,["offset"] =-1108, ["type"] = D},
},
{
{["value"] = b,["offset"] =-1084, ["type"] = F,["freeze"] = true},
}
)
gg.clearResults()
end




function HS28()
b = gg.prompt({"🐉请设置人物跳跃🐉"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "设置跳跃"},
{["value"] = 945804460, ["type"] = D},
{["lv"] = 1092616192,["offset"] =-152, ["type"] = D},
{["lv"] = 1092616192,["offset"] =-156, ["type"] = D},
},
{
{["value"] = b,["offset"] =-148, ["type"] = F,["freeze"] = true},
}
)
gg.clearResults()
end




function HS29()
b = gg.prompt({"🐉请设置全体起立🐉"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "设置全体起立"},
{["value"] = 2139095039, ["type"] = D},
{["lv"] = 1065353216,["offset"] =-4, ["type"] = D},
{["lv"] = 1065185444,["offset"] =460, ["type"] = D},
},
{
{["value"] = b,["offset"] =-4, ["type"] = F,["freeze"] = false},
{["value"] = b,["offset"] =-8, ["type"] = F,["freeze"] = false},
{["value"] = b,["offset"] =-12, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end




function HS30()
b = gg.prompt({"🐉请设置锁身🐉"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "设置锁身"},
{["value"] = 220, ["type"] = D},
{["lv"] = 120,["offset"] =4, ["type"] = D},
{["lv"] = 1065353216,["offset"] =156, ["type"] = D},
},
{
{["value"] = b,["offset"] =12, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS31()
b = gg.prompt({"🐉锁身关闭🐉"}
,{[1]=5},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "设置锁身关"},
{["value"] = 220, ["type"] = D},
{["lv"] = 120,["offset"] =4, ["type"] = D},
{["lv"] = 1065353216,["offset"] =156, ["type"] = D},
},
{
{["value"] = b,["offset"] =12, ["type"] = D,["freeze"] = true},
}
)
gg.clearResults()
end




function HS32()
b = gg.prompt({"🐉请设置要附身的人的迷你号🐉"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "附身别人"},
{["value"] = 2147483647, ["type"] = D},
{["lv"] = 1,["offset"] =-948, ["type"] = D},
{["lv"] = 1065353216,["offset"] =-768, ["type"] = D},
},
{
{["value"] = b,["offset"] =-1044, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
function QQ1() gg.clearList() 
qmnb = { {["memory"] = 4}, {["name"] = "特效"}, 
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}}
qmxg = { {["value"] = Q1, ["offset"] = 4, ["type"] = 4,["freeze"] = true},}xqmnb(qmnb)end
function QQ3() qmnb = {
{["memory"] = 4},
{["name"] = "动作"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = Q3, ["offset"] = -80, ["type"] = 4},
}
xqmnb(qmnb)
end 
function MNP666()
SN = gg.multiChoice({
             "🍓玩法改创造(永远)🍓",
             "🍓解禁危险品🍓",
             "🍓生存改创造(永远)🍓",	 
	 "🍓家园道具(编辑器内)🍓",
	 "🍓第八格添加编辑器🍓",
	 "🍓自定义改编辑器🍓",
	 "🍓能量剑改编辑器🍓",
	 "🍓炸云服🍓",
	  "🍓创造炸图🍓",
	   "🍓通用创造🍓",
	     "🍓新家园道具🍓",
	 "🍊返 回 主 页🍊",
 }, nil, "💋信仰到底是什么？💋")
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end 
if SN[4]==true then c10() end
if SN[5]==true then c9() end
if SN[6]==true then c5() end
if SN[7]==true then c7() end
if SN[8]==true then l8() end
if SN[9]==true then z8() end
if SN[10]==true then z12() end
if SN[11]==true then z22() end
if SN[12]==true then Main() end end
 FX=0 end



function c1()
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



function c2()
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


function c3()
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
function c10()  
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


function c9()
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


function c5()
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
function c7()
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


function l8()
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

function z8()
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





function z12()
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
function z22() 
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
if i2==36 then i=Main6666 i1() end
XGCK=-1 end
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

function Main4()  
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
   "𒅒🔰恢复动作️特效🔰𒅒", 
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒你拼了命的想要融入她的世界,而她的世界却不缺你𒅒"))
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
if menu1==18 then Q3=0 QQ3()  gg.clearList() end
if menu1==19 then Main() end
XGCK=-1 end

function Main5()  
SN = gg.multiChoice({
'🌟💗改分数💗🌟',
'🌟💗观战模式💗🌟',
'🌟💗狙击连发💗🌟',
'🌟💗怒海连发💗🌟',
'🌟💗人物上色💗🌟',
'🌟💗三角透视💗🌟',
'🌟💗子弹穿墙💗🌟',
'🌟💗狙击强化💗🌟',
'🌟💗冲锋强化💗🌟',
'🌟💗重机强化💗🌟',
'🌟💗修改队伍💗🌟',
'🌟💜灵魂出窍💜🌟',
'❇️💜锁高度💜🌟',
'🌟💜狙击一件套💜🌟',
'🌟💜锁血💜🌟',
"🎃返 回 主 页🎃",
}, nil, "新婚之夜，lsp之时")
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
if SN[15]==true then	 jj14() end
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

function Main6()  SN = gg.choice({
   "𒅒🔰搜索歌曲🔍🔰𒅒",
   "𒅒🔰搜索列表✨🔰𒅒",
   "𒅒🔰播放热歌▶️🔰𒅒",
   "𒅒🔰️停止播放⏸🔰𒅒",
   "𒅒🔰️清除冻结🧊🔰𒅒",
   "𒅒🔰️返回主页️❌🔰𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
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
if search == nil then Main6() end
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

function XCKNB()
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

function XC857()
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

function XCQ21()
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
{["name"] = "添加火箭背包-蓝风制作"},
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

function Main7()
SN = gg.multiChoice({
'❤️❤️开发者模式💗🌟',
'🌟💗穿墙💗🌟',
'🌟💗无限跳💗🌟',
'🌟💗崩服务器💗🌟',
'🌟💗观战模式💗🌟',
'🌟💗上帝视角💗🌟',
'🌟💗飞行加速(平飞)💗🌟',
'🌟💗远程攻击💗🌟',
'🌟💗加速💗🌟',
'🌟💗天空变黑💗🌟',
'🌟💗青凤结界💗🌟',
'🌟💗钩爪连发💗🌟',
'🌟💗自定义跳高💗🌟',
'🌟💗人物技能💗🌟',
'🌟💗地心人走路💗🌟',
'🌟💗关闭地心人💗🌟',
'🌟💗改㘴标💗🌟',
'🌟💗解锁物品💗🌟',
'🌟💗留言板打字💗🌟',
'🌟💗自定义头像框💗🌟',
'🌟💗飞行速度(上飞)💗🌟',
'🌟💗钩爪无cd💗🌟',
'🌟💗无中生有(叶帆)💗🌟',
'🌟💗备用穿墙💗🌟',
'🌟💗修改模式(备用)💗🌟',
'🌟💗无限跳(备用)💗🌟',
'🌟💗开启黑暗堕落💗🌟',
'🌟💜修改脚印💜🌟',
'🌟💜一秒吃萝卜土豆💜🌟',
'🌟💜能量剑距离💜🌟',
'🌟💜自定义音量💜🌟',
'🌟💜联机自定义修改皮肤💜🌟',
'🌟💜空中飘起💜🌟',
'🌟💜篮球模式💜🌟',
'🌟💜伪房主💜🌟',
'🌟💜虚空堕落(关闭不了)💜🌟',
'🌟💜音效优化💜🌟',
'🌟💜击中目标超大💜🌟',
'🌟💜击中目标复原💜🌟',
'🌟💜击中加圈圈💜🌟',
'🌟💜击中加圈圈复原💜🌟',
'🌟💜工具技能范围💜🌟',
'🌟💜工具技能关闭💜🌟',
'🌟💜动物蹦迪💜🌟',
'🌟💜动物变黑💜🌟',
'🌟💜负极走路💜🌟',
'🌟💜负极走路恢复💜🌟',
'🌟💜正极走路💜🌟',
'🌟💜正极走路恢复💜🌟',
'🌟💜添加坐骑💜🌟',
'🌟💜伪飞行(有些手机不能用)💜🌟',
"🌟💗临时改名💗🌟①",
"🌟💗临时改名②💗🌟",
"🌟💗隐身(高度7)💗🌟",
"🌟💗添加道具💗🌟",
"🌟💗免手机号打字💗🌟",   
'🌟💜蹦迪💜🌟',
'🌟💜足球模式💜🌟',
'🌟💜篮足球关闭💜🌟',
'🌟💜危险品文字(小北)💜🌟',
'🌟💜凉情聊天室💜🌟',
'🌟💜死亡模式💜🌟',
'🌟💜修改广告物品(死亡开启)💜🌟',
'🌟💜记录瞬间移动💜🌟',
'🌟💜自定义开关危险品💜🌟',
'🌟💜改变画质💜🌟',
"💯返 回 主 页💯",
 }, nil, "❌这次我输了，输的满盘皆输.....❌")
if SN == nil then else
if SN[1]==true then	 b1() end
if SN[2]==true then	 b2() end
if SN[3]==true then	 b4() end
if SN[4]==true then	 b5() end
if SN[5]==true then	 b6() end
if SN[6]==true then      b7() end
if SN[7]==true then	 b8() end
if SN[8]==true then     b9() end
if SN[9]==true then	 b10() end
if SN[10]==true then	 b11() end
if SN[11]==true then	 b13() end
if SN[12]==true then	 b14() end
if SN[13]==true then	 b15() end
if SN[14]==true then	 b16() end
if SN[15]==true then	 b17() end
if SN[16]==true then	 b18() end
if SN[17]==true then	 b121() end
if SN[18]==true then	 b122() end
if SN[19]==true then	 b123() end
if SN[20]==true then	 b124() end
if SN[21]==true then     b125() end
if SN[22]==true then     b126() end
if SN[23]==true then     b127() end
if SN[24]==true then     lqc1() end
if SN[25]==true then     lqc2()  end
if SN[26]==true then     lqc3() end
if SN[27]==true then     lqc4() end
if SN[28]==true then     lqc5() end
if SN[29]==true then     lqc6() end
if SN[30]==true then     lqc7() end
if SN[31]==true then     lqc8() end
if SN[32]==true then     lqc9()  end
if SN[33]==true then     lqc10() end
if SN[34]==true then     lqc11() end
if SN[35]==true then	 lqc12() end
if SN[36]==true then	 lqc13() end
if SN[37]==true then	 yf3() end
if SN[38]==true then	 yf4() end
if SN[39]==true then	 yf5() end
if SN[40]==true then      yf6() end
if SN[41]==true then	 yf7() end
if SN[42]==true then     yf8() end
if SN[43]==true then	 yf9() end
if SN[44]==true then	 yf10() end
if SN[45]==true then	 yf11() end
if SN[46]==true then	 yf12() end
if SN[47]==true then	 yf13() end
if SN[48]==true then	 yf14() end
if SN[49]==true then	 yf15() end
if SN[50]==true then	 yf16() end
if SN[51]==true then	 yf17() end
if SN[52]==true then	 yf18() end
if SN[53]==true then	 yf19() end
if SN[54]==true then	 yf20() end
if SN[55]==true then	 yf21() end
if SN[56]==true then	 yf22() end
if SN[57]==true then	 yf23() end
if SN[58]==true then	 yf24() end
if SN[59]==true then	 yf25() end
if SN[60]==true then	 yf26() end
if SN[61]==true then	 yf27() end
if SN[62]==true then	 yf28() end
if SN[63]==true then	 yf29() end
if SN[64]==true then	 yf30() end
if SN[65]==true then	 yf31() end
if SN[66]==true then	 yf32() end
if SN[67]==true then	 Main() end
end
FX=0 end





function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x2ab603b0)--2ab603b0
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end



function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，共偏移1条数据！")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD




	
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
local gn={
  "添加坐标",
  "删除坐标",
}

local zb={}
local getsl=gg.getResultCount
function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end 
function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end 




function b1()
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("再次点击悬浮窗自动恢复")
gg.clearResults()          
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
qmnb = {
{["memory"] = 4},
{["name"] = "开发者关闭"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
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




function b2()
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


function b4()
qmnb = {
{["memory"] = 4},
{["name"] = "连跳飞天开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 128, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
os.exit()
end

function b5()
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

function b6()
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






function b7()
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



function b8()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.20926383e-38F;1.29999995232F;5.11472262e17F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 150}})
	 end
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end

function b9()
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
function b10()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 250}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end


function b11()
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

function b13()
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
 function b14()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12006;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 5}})
	 end
	 gg.toast("喷射钩爪开启成功")
	 gg.clearResults()
end

function b15()
gg.alert("开启后如果想恢复，退出房间重新进即可")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.toast("nil")
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数(60等于2.3倍，自己算)，0～1000   默认150'}, {i='150'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("开启成功")
end
function b16()
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

function b17()
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
	 gg.toast("瞬间移动开启成功")
	 gg.clearResults()
end


function b18()
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
	 gg.toast("瞬间移动恢复成功")
	 gg.clearResults()
end


function b121()
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
{["lv"] = a, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = Q, ["offset"] = 8, ["type"] = 4},
{["value"] = W, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
end



function b122()
SN = gg.prompt({
  "🔰 解锁火箭背包",
  "🔰 解锁公主床",
  "🔰 解锁弩",
  "🔰 解锁火箭筒",
    "🔰 解锁坚冰",
        "🔰 解锁混凝土",
           "🔰 解锁熔岩球",
              "🔰 解锁混乱球",
  "🔴 返 回 主 页" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS29()
end
if SN[3]==true then
	 HS30()
end
if SN[4]==true then
	 HS31()
	 end
	 if SN[5]==true then
	 HS32()
end
if SN[6]==true then
	 HS33()
	 end
	 if SN[7]==true then
	 HS34()
	 end
	 	 if SN[8]==true then
	 HS35()
	 end
if SN[9]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()

function HS28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("960;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HS34()
	
end

function HS35()

end

function b123()
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
{["value"] = 6200, ["type"] = 4},
{["lv"] = 524296, ["offset"] = 0x58, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] =0x1C, ["type"] = 4},}

xqmnb(qmnb)
end



function b124()
gg.clearResults()
lxnm = gg.prompt({"请输入你使用的头像框代码[清凉一夏:20222.........]♡这个修改的自己看不见的，别人能看见。可以联机哦♡([头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇)"}
,{[1]=20222},{[1]="number"})[1]
knm = gg.prompt({"输入你要改的头像框代码[头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇"}
,{[1]=20281},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改头像框"},
{["value"] = lxnm, ["type"] = 4},
{["lv"] = lxnm, ["offset"] = 0, ["type"] = 4},
{["lv"] = lxnm, ["offset"] = 0, ["type"] = 4},

}
qmxg = {
{["value"] = knm, ["offset"] = 0, ["type"] = 4},
{["value"] = knm, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end


function b125()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,70)
gg.toast("飞行上升速度: 开启成功")
 elseif F == 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,15)
gg.toast("飞行上升速度: 开启成功")
end
end


function b126()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12006D;2::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 	 if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.getResults(25)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 end


function b127()
gg.toast("请选择开关")
F = gg.alert("🔰请选择无中生工匠台｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🔰功 能 指 南🔰\n📝[开启:需要先去自己地图使用一次工匠台然后再开功能!!!\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 4},
{["name"] = "无中生工匠台(开)"},
{["value"] = 1080, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -16, ["type"] = 4},
{["lv"] = 209, ["offset"] = -4, ["type"] = 4},
{["lv"] = 257, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -16, ["type"] = 4},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main()
end
end
end
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "无中生工匠台(关)"},
{["value"] = 1080, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -16, ["type"] = 4},
{["lv"] = 209, ["offset"] = -4, ["type"] = 4},
{["lv"] = 257, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = -16, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function lqc1()
AA1 = gg.prompt({"请输入你的高度"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = AA1, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = -99999, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end





function lqc2()
menu1 = gg.multiChoice({
'玩  法  模  式',
'生  存  模  式',
'返  回  主  页'},
nil,'如果你问炸图功能不是有这个吗？这特么是备用')
if menu1 == nil then else
if menu1[1] == true then ssd1() end
if menu1[2] == true then ssd2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end



function ssd1()
F = gg.alert("请选择  开 关  ","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择  开 关  ")
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



function ssd2()
F = gg.alert("请选择｛开 关｝","开","关️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
f = gg.prompt({"请输入房主迷你号"}
,{[1]=""},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "生存创造开启"},
{["value"] = f, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
f = gg.prompt({"请输入房主迷你号"}
,{[1]=""},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "创造恢复"},
{["value"] = f, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function lqc3()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xB0, 0xB4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.toast("开启成功")
 elseif F == 2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xB0, 0xB4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = false}})
gg.toast("关闭成功")
end

end


function lqc4()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1202199584, 0}, {1077936128, -20},{1186693120, -32},}
local tb2 = {{0, -20  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function lqc5()
c = gg.prompt({"请输入皮肤代码【注意第一次开启需要站着不动不然开启失败】"}
,{[1]=29200},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "联机改脚印"},
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



function lqc6()
gg.toast("先吃一个胡萝卜")
qmnb = {
{["memory"] = 4},
{["name"] = "秒吃胡萝卜"},
{["value"] = 236, ["type"] = 4},
{["lv"] = 30, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = 8, ["type"] = 4},
{["value"] = -9999, ["offset"] = 104, ["type"] = 4},
}
xqmnb(qmnb)
end


function lqc7()
qmnb = {
{["memory"] = 16384},
{["name"] = "能量剑距离"},
{["value"] = 1016003125, ["type"] = 4},
{["lv"] = 1017370378, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 9990, ["offset"] = 8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
 end


function lqc8()
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




function lqc9()
m9= gg.choice({
    "🧊璎落切换其他皮肤🧊",
    "🧊熊小吉切换其他皮肤🧊",
    "🧊爱丽丝切换其他皮肤🧊",
    "🧊雷光切换其他皮肤🧊",
    "🧊凛冬切换其他皮肤🧊",    
    "🧊️妙妙改其他皮肤🧊",
    "🧊️自定义改其他皮肤🧊",
    "𒅒🎡返回🎡𒅒",},2018,os.date("𒅒⚠️修改成功后，只需在房间里切换角色即可切换皮肤，没有智商别问我，凉兮原创⚠️"))
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




function lqc10()
gg.toast("请选择开关")
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
{["name"] = "人物浮空"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
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
gg.clearResults()
end
end


function lqc11()
zh= gg.prompt({"请输入自己迷你号"},{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 1102185740, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end



function lqc12()
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


function lqc13()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2.06831653e-42F;10F;2.37528666e-38;1000F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 30}})
	 end
	 gg.toast("滚啊！")
	 gg.clearResults()
end



function yf3()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079102e20F;-7.15922749e24F;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("静下心来，感受美好吧....时间不多了")
	 gg.clearResults()
end



function yf4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.80412861e-38F;1.80424268e-38F;96", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("96", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 280}})
	 end
	 gg.toast("还是少开挂吧 ....")
	 gg.clearResults()
end

function yf5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.80412861e-38F;1.80424268e-38F;280", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("280", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 96}})
	 end
	 gg.toast("你有梦想吗？我没有....")
	 gg.clearResults()
end



function yf6()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.80414627e-38F;1.80426202e-38F;83", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("83", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("姜小北说做挂是他的爱好.....")
	 gg.clearResults()
end

function yf7()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.80414627e-38F;1.80426202e-38F;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 83}})
	 end
	 gg.toast("那为什么他要用来赚钱....")
	 gg.clearResults()
end




function yf8()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.98631339e-38F;2.01376258e-38F;70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
	 gg.toast("她说过爱我.....")
	 gg.clearResults()
end

function yf9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1.98631339e-38F;2.01376258e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 70}})
	 end
	 gg.toast("可是她还是说了抱歉....")
	 gg.clearResults()
end





function yf10()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.02404091e-28;-2.77885373e-23;40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -555}})
	 end
	 gg.toast("一起来蹦迪，看猪的头和你一样")
	 gg.clearResults()
end



function yf11()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5.09484133e19F;15F;5.21820912e-22F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 999}})
	 end
	 gg.toast("非洲来的")
	 gg.clearResults()
end




function yf12()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.39194393e-22F;2.74848946e-35F;5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
	 end
	 gg.toast("段佳佳....我好想你")
	 gg.clearResults()
end



function yf13()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.39194393e-22F;2.74848946e-35F;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("傻逼玩意儿")
	 gg.clearResults()
end


function yf14()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.39194393e-22F;2.74848946e-35F;5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -555}})
	 end
	 gg.toast("我是姜小北他父亲凉情城")
	 gg.clearResults()
end


function yf15()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.39194393e-22F;2.74848946e-35F;-555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("嗯.....姐姐，你的水好多")
	 gg.clearResults()
end






function yf16()
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


function yf17()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "伪·飞行(新)"},
{["value"] = 1931, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 1020, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 508, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472,["offset"] =-4, ["type"] = 4,["freeze"] = true},
{["value"] = 16777472,["offset"] =508, ["type"] = 4,["freeze"] = true},
{["value"] = 16777472,["offset"] =1020, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪·飞行(关)"},
{["value"] = 1931, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 508, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216,["offset"] =-4, ["type"] = 4,["freeze"] = true},
{["value"] = 16777216,["offset"] =508, ["type"] = 4,["freeze"] = true},
{["value"] = 16777216,["offset"] =1020, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end




function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "正在加载,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function yf18()
mnh = gg.prompt({"请输入你的迷你号"}
,{[1]=259537497},{[1]="number"})[1]
--








mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = mnh, ["type"] = 4},
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

function yf19()
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

function yf20()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7000D;16777472D;1065353216D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("隐身（高度7）开启成功")
	 gg.clearResults()
end



function yf21()
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
function yf22()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end


function yf23()
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
{["name"] = "摇头"},
{["value"] =1120403456, ["type"] = 4},
{["lv"] = 1127481344, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=-999,["offset"]=4,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "摇头"},
{["value"] =1120403456, ["type"] = 4},
{["lv"] = 1127481344, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=30,["offset"]=4,["type"]=16},
}
xqmnb(qmnb)
end
end




function yf24()
zh= gg.prompt({"请输入自己迷你号"},{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 1102185740, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function yf25()
zh= gg.prompt({"请输入自己迷你号"},{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "蓝足球模式关闭"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 1102185740, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end




function yf26()
o3= gg.choice({
    "🧊祈神殿.小北定制🧊",
    "🧊祈神殿.狗辞定制🧊",
    "🧊Thetemple.祈神殿️🧊",
    "🧊定制 天道·佩恩🧊",
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("𒅒开了伪房主以后，点击房间禁用危险品𒅒"))
if o3==1 then 
e1=808477475
e2=1179010630
e3=-1998167517
e4=-1145510721
e5=-391404824
e6=-1209495113
e7=-1752373841
e8=-444493338
e9=-1159354212
e10=-1967594358
e11=598915557
e12=825241921
e13=808924416
 vi1()
end
if o3==2 then 
e1=808477475
e2=1179010630
e3=-1998167517
e4=-1145510721
e5=-424959256
e6=-1092053627
e7=-2121144674
e8=-441934619
e9=-1192981830
e10=-1296439926
e11=808534307
e12=49
e13=0
 vi1()
end
if o3==3 then
e1=1646481955
e2=858997027
e3=1952802900
e4=1819307365
e5=-1511575963
e6=-1633294456
e7=599764710
e8=3355457
e9=0
e10=0
e11=0
e12=0
e13=0  
vi1()
end
if o3==4 then 
e1=808477475
e2=1179010630
e3=-1998167517
e4=-1145510721
e5=-458513688
e6=-2115589699
e7=-2121144663
e8=-441934619
e9=-1192981830
e10=-1296439926
e11=808534307
e12=49
e13=0
 vi1()
end
if o3==7 then  Main() end
XGCK=-1 end
function vi1()
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
{["value"] = -1733433962, ["type"] = 4},
{["lv"] = 10723814, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = e1, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
{["value"] = e2, ["offset"] =16, ["type"] = 4, ["freeze"] = true},
{["value"] = e3, ["offset"] = 20, ["type"] = 4, ["freeze"] = true},
{["value"] = e4, ["offset"] = 24, ["type"] = 4, ["freeze"] = true},
{["value"] = e5, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},
{["value"] = e6, ["offset"] = 32, ["type"] = 4, ["freeze"] = true},
{["value"] = e7, ["offset"] = 36, ["type"] = 4, ["freeze"] = true},
{["value"] = e8, ["offset"] = 40, ["type"] = 4, ["freeze"] = true},
{["value"] = e9, ["offset"] = 44, ["type"] = 4, ["freeze"] = true},
{["value"] = e10, ["offset"] = 48, ["type"] = 4, ["freeze"] = true},
{["value"] = e11, ["offset"] = 52, ["type"] = 4, ["freeze"] = true},
{["value"] = e12, ["offset"] = 56, ["type"] = 4, ["freeze"] = true},
{["value"] = e13, ["offset"] = 60, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},

{["value"] = e1, ["offset"] = 68, ["type"] = 4, ["freeze"] = true},
{["value"] = e2, ["offset"] =72, ["type"] = 4, ["freeze"] = true},
{["value"] = e3, ["offset"] = 76, ["type"] = 4, ["freeze"] = true},
{["value"] = e4, ["offset"] = 80, ["type"] = 4, ["freeze"] = true},
{["value"] = e5, ["offset"] = 84, ["type"] = 4, ["freeze"] = true},
{["value"] = e6, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
{["value"] = e7, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
{["value"] = e8, ["offset"] = 96, ["type"] = 4, ["freeze"] = true},
{["value"] = e9, ["offset"] = 100, ["type"] = 4, ["freeze"] = true},
{["value"] = e10, ["offset"] = 104, ["type"] = 4, ["freeze"] = true},
{["value"] = e11, ["offset"] = 108, ["type"] = 4, ["freeze"] = true},
{["value"] = e12, ["offset"] = 112, ["type"] = 4, ["freeze"] = true},
{["value"] = e13, ["offset"] = 116, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xB10514
setvalue(so+py,16,0)
gg.toast("开启成功")
end


function yf27()
SN = gg.multiChoice({
"凉情聊天室",
"♐返 回 主 页♐",
}, nil, "欢迎娱乐")
 if SN == nil then else
if SN[1]==true then	 ylyl() end
if SN[2]==true then	 Main() end
end
FX=0 end

function ylyl()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1629138375.lua").content))
end

function yf28()
menu1 = gg.choice({
'装死开',
'装死关',
'返回'},
nil,'注意：开启前先死一次️')
if menu1 == 1 then yfyf1() end
if menu1 == 2 then yfyf2() end
if menu1 == 3 then Main() end
XGCK=0
end


function yfyf1()
qmnb = {
{["memory"] = 4},
{["name"] = "装死"},
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
end

function yfyf2()
qmnb = {
{["memory"] = 4},
{["name"] = "装死"},
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
end



function yf29()
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
end

function yf30()
local Sy={}
  local Cd={"🌐添加坐标🌐","Ⓜ️删除坐标Ⓜ️","💠返回主页💠"}
  for i,v in ipairs(zb) do
    Cd[#Cd+1]=v[1]
  end
  local GT=gg.choice(Cd,nil,"🅰蓝风原创，共有"..#zb.."个坐标🅱")
  if GT==nil then XGCK=-1 else
    if GT==1 then tjzb() end
    if GT==2 then sczb() end
    if GT==3 then Main() end
    if GT>3 then
      sczb(zb[(GT-3)])
    end
  end
 end

function sczb(dd)
  local item={}
  for i,v in ipairs(zb) do
    table.insert(item,v[1])
  end
  local GT=gg.multiChoice(item,nil,"🅰共有"..#zb.."个坐标🅱")
  if GT then
    for i,v in pairs(GT) do
      zb[i]=nil
    end
    local New={}
    for i,v in pairs(zb) do
      table.insert(New,v)
    end
    zb=New
    gg.alert("删除成功")
  end
end

function sczb(xyz)
  bgtss("-1F;60D;180D;220D;120D;2F",4,4)
  if getsl()>0 then
    bgtgs("-1",16)
    local value=gg.getResults(1)
    local item={}
    item[1]={}
    item[2]={}
    item[3]={}
    item[1].address=value[1].address+0x1C
    item[1].value=xyz[2]
    item[1].flags=4
    item[2].address=value[1].address+0x20
    item[2].value=xyz[3]
    item[2].flags=4
    item[3].address=value[1].address+0x24
    item[3].value=xyz[4]
    item[3].flags=4
    gg.setValues(item)
    gg.toast("传送成功！")
  end
end

function tjzb()
  local GT=gg.prompt({"请输入名称"},nil,{"text"})
  if GT then
    bgtss("-1F;60D;180D;220D;120D;2F",4,4)
    if getsl()>0 then
    local value=gg.getResults(1)
    X=readValue(value[1].address+0x1C,4)
    Y=readValue(value[1].address+0x20,4)
    Z=readValue(value[1].address+0x24,4)
    zb[#zb+1]={GT[1],X,Y,Z}
    else
    gg.alert("添加失败！")
    end
  end
end



function yf31()
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




function yf32()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.77777779102;0.73306429386", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.77777779102;0.73306429386", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 10}})
	 end
	 gg.toast("开启成功，龙哥制作")
	 gg.clearResults()
end

function Main10()  
SN = gg.multiChoice({
"💚傲傲💚",
"💔神仙(小北)💔",
"🖤叶帆🖤",
"🎈返 回 主 页🎈",
}, nil, "团队:重回巅峰")
 if SN == nil then else
if SN[1]==true then	 chx1() end
if SN[2]==true then	 chx2() end
if SN[3]==true then	 chx3() end
if SN[4]==true then	 Main() end
end
FX=0 end

function chx1()
     pcall(load(gg.makeRequest("https://wp.aaa456.cn/down.php/107949ba275435ec222ccce85e65b28b.lua").content))
end

function chx2()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1625070123.lua").content))
end

function chx3()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627412257.lua").content))
end

function Main11()
SN = gg.choice({
	 "图鉴列表",
	 "返回辅助",
}, nil, "有任何bug或修改失败，欢迎反馈给QQ3150837250-梦幻宁成。一次修改建议不要超过10个以上，容易导致游戏闪退。此脚本修改的图鉴，在重新登录游戏后会重置回原来的状态（或许可以卡迷你豆bug）")
if SN==1 then
	 Main100()
end
if SN==2 then
	Main()
end
FX1=0
end

function Main100()
SN = gg.choice({
	 "家具",
	 "建筑",
	 "装备",
	 "节日",
	 "生物",
	 "返回",
}, nil, "")
if SN==1 then
	 Main999()
end
if SN==2 then
	 Main666()
end
if SN==3 then
	 Main888()
end
if SN==4 then
	 Main11()
end
if SN==5 then
	 Main12()
end
if SN==6 then
	 Main()
end
FX1=0
end

function Main999()
SN = gg.choice({
	 "灯具一",
	 "灯具二",
	 "果木家具",
	 "白杨木家具",
	 "松木家具",
	 "我需要一扇门",
	 "舒适的床",
	 "留言板",
	 "字牌",
	 "豪华灯饰",
	 "花园",
	 "返回",
}, nil, "")
if SN==1 then
	 Main00()
end
if SN==2 then
	 Main1888()
end
if SN==3 then
	 Main10086()
end
if SN==4 then
	 Main17()
end
if SN==5 then
	 Main18()
end
if SN==6 then
	 Main19()
end
if SN==7 then
	 Main20()
end
if SN==8 then
	 Main21()
end
if SN==9 then
	 Main22()
end
if SN==10 then
	 Main23()
end
if SN==11 then
	 Main24()
end
if SN==12 then
	 Main()
end
FX1=0
end

function Main00()
SN = gg.multiChoice({
	 "白色玻璃灯",
	 "橙色玻璃灯",
	 "紫红玻璃灯",
	 "淡蓝玻璃灯",
	 "黄色玻璃灯",
	 "淡绿玻璃灯",
	 "粉色玻璃灯",
	 "灰色玻璃灯",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS104()
end
if SN[2]==true then
	 HS105()
end
if SN[3]==true then
	 HS106()
end
if SN[4]==true then
	 HS107()
end
if SN[5]==true then
	 HS108()
end
if SN[6]==true then
	 HS109()
end
if SN[7]==true then
	 HS110()
end
if SN[8]==true then
	 HS111()
end
if SN[9]==true then
	 HS113()
end
FX1=0
end

function HS104()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("862;9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS105()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("863;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS106()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("864;11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS107()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("865;12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS108()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("866;13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS109()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("867;14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS110()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("868;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS111()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("869;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS113()
	 Main()
end

function Main1888()
SN = gg.multiChoice({
	 "木纹灯",
	 "淡灰玻璃灯",
	 "青色玻璃灯",
	 "紫色玻璃灯",
	 "蓝色玻璃灯",
	 "褐色玻璃灯",
	 "绿色玻璃灯",
	 "红色玻璃灯",
	 "黑色玻璃灯",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS102()
end
if SN[2]==true then
	 HS112()
end
if SN[3]==true then
	 HS115()
end
if SN[4]==true then
	 HS116()
end
if SN[5]==true then
	 HS117()
end
if SN[6]==true then
	 HS118()
end
if SN[7]==true then
	 HS119()
end
if SN[8]==true then
	 HS120()
end
if SN[9]==true then
	 HS121()
end
if SN[10]==true then
	 HS114()
end
FX1=0
end

function HS102()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("861;8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS112()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("870;17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS115()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("871;18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS116()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("872;19", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("19", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS117()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("873;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS118()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("874;21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS119()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("875;22", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("22", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS120()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("876;23", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("23", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS121()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("877;24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS114()
	 Main()
end

function Main10086()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS69()
end
FX1=0
end

function HS69()
	 Main()
end

function Main17()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS70()
end
FX1=0
end

function HS70()
	 Main()
end

function Main18()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS71()
end
FX1=0
end

function HS71()
	 Main()
end

function Main19()
SN = gg.multiChoice({
	 "楠木门",
	 "胡桃木门",
	 "白杨木门",
	 "金铁门",
	 "红杉木门",
	 "果木门",
	 "落叶松木门",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS53()
end
if SN[2]==true then
	 HS54()
end
if SN[3]==true then
	 HS55()
end
if SN[4]==true then
	 HS56()
end
if SN[5]==true then
	 HS57()
end
if SN[6]==true then
	 HS58()
end
if SN[7]==true then
	 HS59()
end
if SN[8]==true then
	 HS72()
end
FX1=0
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("854;20000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("855;20001;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("858;20004;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("859;20005;6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("560;20006;7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS72()
	 Main()
end

function Main20()
SN = gg.multiChoice({
	 "精致木床",
	 "豪华木床",
	 "公主床",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS95()
end
if SN[2]==true then
	 HS65()
end
if SN[3]==true then
	 HS66()
end
if SN[4]==true then
	 HS73()
end
FX1=0
end

function HS95()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("883;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("884;31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS73()
	 Main()
end

function Main21()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS74()
end
FX1=0
end

function HS74()
	 Main()
end

function Main22()
SN = gg.multiChoice({
	 "木质字牌",
	 "石质字牌",
	 "铁质字牌",
	 "金质字牌",
	 "蓝钻字牌",
	 "熔岩字牌",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS47()
end
if SN[2]==true then
	 HS48()
end
if SN[3]==true then
	 HS49()
end
if SN[4]==true then
	 HS50()
end
if SN[5]==true then
	 HS51()
end
if SN[6]==true then
	 HS52()
end
if SN[7]==true then
	 HS75()
end
FX1=0
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("892;63", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("63", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("893;64", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("64", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("894;65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("895;66", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("66", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("896;67", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("67", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("897;68", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("68", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS75()
	 Main()
end

function Main23()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS76()
end
FX1=0
end

function HS76()
	 Main()
end

function Main24()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS77()
end
FX1=0
end

function HS77()
	 Main()
end

function HS41()
	 Main()
end

function Main9()
SN = gg.choice({
	 "硬家伙",
	 "全民创造节（方块）",
	 "全民创造节（栅栏）",
	 "科幻系列-α",
	 "科幻系列-β",
	 "返回",
}, nil, "")
if SN==1 then
	 Main25()
end
if SN==2 then
	 Main26()
end
if SN==3 then
	 Main27()
end
if SN==4 then
	 Main28()
end
if SN==5 then
	 Main29()
end
if SN==6 then
	 HS40()
end
FX1=0
end

function Main25()
SN = gg.multiChoice({
	 "基石-混凝土",
	 "基石-裂土",
	 "白色基石",
	 "基石-坚冰",
	 "基石-钢板",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS60()
end
if SN[2]==true then
	 HS61()
end
if SN[3]==true then
	 HS62()
end
if SN[4]==true then
	 HS63()
end
if SN[5]==true then
	 HS64()
end
if SN[6]==true then
	 HS89()
end
FX1=0
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("960;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("961;37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("962;38", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("38", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS89()
	 Main()
end

function Main26()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS88()
end
FX1=0
end

function HS88()
	 Main()
end

function Main27()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS87()
end
FX1=0
end

function HS87()
	 Main()
end

function Main28()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS86()
end
FX1=0
end

function HS86()
	 Main()
end

function Main29()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS85()
end
FX1=0
end

function HS85()
	 Main()
end

function HS40()
	 Main()
end

function Main888()
SN = gg.choice({
	 "远程武器",
	 "外星科技",
	 "远古科技",
	 "返回",
}, nil, "")
if SN==1 then
	 Main30()
end
if SN==2 then
	 Main31()
end
if SN==3 then
	 Main32()
end
if SN==4 then
	 HS39()
end
FX1=0
end

function Main30()
SN = gg.multiChoice({
	 "弹弓",
	 "大爆竹",
	 "弩",
	 "火箭筒",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS46()
end
if SN[2]==true then
	 HS44()
end
if SN[3]==true then
	 HS43()
end
if SN[4]==true then
	 HS45()
end
if SN[5]==true then
	 HS84()
end
FX1=0
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12281;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12280;59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS84()
	 Main()
end

function Main31()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS83()
end
FX1=0
end

function HS83()
	 Main()
end

function Main32()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS82()
end
FX1=0
end

function HS82()
	 Main()
end

function HS39()
	 Main()
end

function Main11()
SN = gg.choice({
	 "春节",
	 "元宵",
	 "活动",
	 "返回",
}, nil, "")
if SN==1 then
	 Main33()
end
if SN==2 then
	 Main34()
end
if SN==3 then
	 Main35()
end
if SN==4 then
	 HS38()
end
FX1=0
end

function Main33()
SN = gg.multiChoice({
	 "喷花烟花",
	 "春节窗花-福",
	 "春节窗花-禄",
	 "春节窗花-寿",
	 "春节窗花-喜",
	 "中式宫灯",
	 "红色陶花盆",
	 "绿色陶花盆",
	 "大瓷花盆",
	 "新春宫灯",
	 "火箭背包",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS97()
end
if SN[2]==true then
	 HS91()
end
if SN[3]==true then
	 HS92()
end
if SN[4]==true then
	 HS93()
end
if SN[5]==true then
	 HS94()
end
if SN[6]==true then
	 HS96()
end
if SN[7]==true then
	 HS98()
end
if SN[8]==true then
	 HS99()
end
if SN[9]==true then
	 HS100()
end
if SN[10]==true then
	 HS101()
end
if SN[11]==true then
	 HS42()
end
if SN[12]==true then
	 HS81()
end
FX1=0
end

function HS97()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("881;81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("940;82", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("82", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("941;83", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("83", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS93()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("942;84", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("84", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS94()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("943;85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS96()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("945;86", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("86", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS98()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("946;87", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("87", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("947;88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS100()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("948;89", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("89", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS101()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("949;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS81()
	 Main()
end

function Main34()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS80()
end
FX1=0
end

function HS80()
	 Main()
end

function Main35()
SN = gg.multiChoice({
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS79()
end
FX1=0
end

function HS79()
	 Main()
end

function HS38()
	 Main()
end

function Main12()
SN = gg.choice({
	 "2017福利周（鱼类）",
	 "返回",
}, nil, "")
if SN==1 then
	 Main36()
end
if SN==2 then
	 HS37()
end
FX1=0
end

function Main12()
menu1 = gg.choice({
'🌴防沉迷系统🌴',
'🌴自定义特效🌴',
'🌴玩家变动物🌴',
'🌴原秒复活🌴',
'🌴锁血关🌴',
'🌴暗色模式开🌴',
'🌴暗色模式关🌴',
'🌴无限脚印🌴',
'🌴禁解钩塞🌴',
'🌴无后座🌴',
'🌴家园果实徽章🌴',
'🌴锁血开[自己开房，不防人]🌴',
'🌴全部烧死开🌴',
'🌴全部烧死关🌴',
'🌴编辑器召唤boss🌴',
'🌴人物天线🌴',
'🌴外语翻译🌴',
'🌴自定修改脚印🌴',
'🌴自定加速🌴',
'🌴卡退房主🌴',
'🌴修改皮肤🌴',
'🌴自定义游戏音量🌴',
'🌴添加自定义坐骑🌴',
'🌴开关危险物品🌴',
'🌴开启足球模式🌴',
'🌴关闭足球模式🌴',
'🌴改皮肤【联机可用】🌴',
'🌴坐骑秒生蛋🌴',
'🌴鸡掉落坐骑蛋🌴',
'🌴改粉丝🌴',
'🌴玩家卡死🌴',
'🌴房主卡死🌴',
'🌴技能范围🌴',
'🌴挖矿专用/修复中🌴',
'🌴联机取物1🌴',
'🌴联机取物2🌴',
'🌴修改皮肤/🌴',
'🌴超级摇头🌴',
'🌴自动走路/测试🌴',
'🌴留言板刷屏🌴',
'🌴火箭背包/测试🌴',
'🌴4骑秒孵化🌴',
'🌴秒拿东西🌴',
'🌴人物浮空开🌴',
'🌴人物浮空关🌴',
'🌴精确瞄准🌴',
'🌴更多功能🌴',
'🌴水下无限氧🌴',
'🌴取消身份验证🌴',
'❣🌴返回辅助❣🌴'},
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

function Main13()
menu1 = gg.choice({
"[特殊,0-空气",
"[方块,1-地心基石",
"[方块,2-功能方块",
"[方块,3-静态水",
"[方块,4-水",
"[方块,5-静态岩浆",
"[方块,6-岩浆",
"[方块,7-传送光效",
"[方块,8-地心门框",
"[方块,9-地心传送门块",
"[方块,10-水晶",
"[方块,11-静态蜂蜜",
"[方块,12-蜂蜜",
"[特殊,20-萌眼星空气",
"[图腾,21-神秘图腾-大地",
"[图腾,22-神秘图腾-天空",
"[方块,100-草块",
"[方块,101-土块",
"[方块,102-耕地",
"[方块,103-土坑",
"[方块,104-岩石",
"[方块,105-青石",
"[方块,106-细沙块",
"[方块,107-碎石堆",
"[方块,108-沙砖",
"[方块,109-砂土",
"[方块,110-散落的石头",
"[方块,112-黑晶石",
"[方块,113-脆冰",
"[方块,114-灰砂土",
"[方块,115-积雪",
"[方块,116-萌眼星石块",
"[方块,117-萌眼星草块",
"[方块,118-萌眼星云团",
"[方块,119-旱土",
"[方块,122-雪堆",
"[方块,123-冰块",
"[方块,124-硫磺岩",
"[方块,125-灼沙",
"[方块,126-魔古岩",
"[方块,127-泡沫块",
"[方块,128-红沙",
"[方块,129-厚实的雪",
"[方块,130-厚实的雪堆",
"[方块,131-坚固的冰",
"[方块,132-硫磺晶砂",
"[方块,133-空的蜂巢",
"[方块,134-满的蜂巢",
"[方块,135-神秘图腾-大地",
"[方块,136-神秘图腾-天空",
"[方块,137-萌眼星土坑",
"[方块,138-污染方块",
"[方块,139-BOSS战使用石像人脸",
"[特殊,140-生命石座",
"[特殊,141-勇气石座",
"[特殊,142-智慧石座",
"[特殊,143-破损的祭台",
"[特殊,144-红薇蝶罐子",
"[特殊,145-兰青蝶罐子",
"[特殊,146-香粉蝶罐子",
"[特殊,147-向阳蝶罐子",
"[特殊,148-龙信蝶罐子",
"[特殊,149-舌钟蝶罐子",
"[方块,200-果木",
"[方块,201-落叶松木",
"[方块,202-白杨木",
"[方块,203-红杉木",
"[方块,204-楠木",
"[方块,205-胡桃木",
"[方块,206-果木板",
"[方块,207-落叶松木板",
"[方块,208-白杨木板",
"[方块,209-红杉木板",
"[方块,210-楠木板",
"[方块,211-胡桃木板",
"[植物,212-果木种子",
"[植物,213-落叶松种子",
"[植物,214-白杨木种子",
"[植物,215-红杉种子",
"[植物,216-楠木种子",
"[植物,217-胡桃种子",
"[植物,218-果木树叶",
"[植物,219-落叶松树叶",
"[植物,220-白杨树叶",
"[植物,221-红杉树叶",
"[植物,222-楠木树叶",
"[植物,223-胡桃树叶",
"[植物,224-小草",
"[植物,225-枯草",
"[植物,226-小蘑菇",
"[植物,227-小红菇",
"[植物,228-黑皮甘蔗",
"[植物,229-麦子",
"[食物,230-方南瓜",
"[植物,231-方南瓜苗",
"[植物,232-树藤",
"[方块,233-红土",
"[植物,234-水稻",
"[食物,236-野萝卜",
"[食物,237-球球果",
"[植物,238-荆棘草",
"[食物,239-方西瓜",
"[植物,240-方西瓜苗",
"[食物,241-土豆",
"[植物,242-柱型仙人掌",
"[植物,243-野草",
"[植物,244-圣诞树",
"[植物,245-水草",
"[植物,246-海带",
"[植物,247-浮萍",
"[植物,248-荷叶",
"[植物,249-松果",
"[植物,250-荷花",
"[方块,251-竹子",
"[植物,252-竹叶",
"[植物,253-竹笋",
"[方块,254-桃花木",
"[植物,255-桃花树叶",
"[植物,256-桃花种子",
"[方块,257-珍木",
"[植物,258-珍木树叶",
"[植物,259-珍木种子",
"[方块,260-无叶珍木",
"[方块,261-星光孢子杆",
"[植物,263-星光孢子种子",
"[方块,264-珍木木板",
"[方块,265-无叶珍木木板",
"[方块,266-变异小蘑菇(方块)",
"[方块,267-变异小红姑(方块)",
"[方块,268-变异蘑菇杆",
"[植物,269-荧光彩色草",
"[植物,270-星光孢子白色",
"[植物,271-星光孢子橙色",
"[植物,272-星光孢子紫红色",
"[植物,273-星光孢子淡蓝色",
"[植物,274-星光孢子黄色",
"[植物,275-星光孢子淡绿色",
"[植物,276-星光孢子粉色",
"[植物,277-星光孢子绿色",
"[植物,278-星光孢子红色",
"[植物,279-星光孢子青色",
"[植物,280-星光孢子紫色",
"[植物,281-星光孢子蓝色",
"[植物,282-星光孢子褐色",
"[植物,283-星光孢子灰色",
"[植物,284-星光孢子淡灰色",
"[植物,285-星光孢子黑色",
"[方块,286-变异小红菇杆",
"[植物,300-向阳花",
"[植物,301-丁香花",
"[植物,302-星辰花",
"[植物,303-龙血花",
"[植物,304-风信子",
"[植物,305-龙爪草",
"[植物,306-龙血树",
"[植物,307-红色龙舌兰",
"[植物,308-橙色龙舌兰",
"[植物,309-灰色龙舌兰",
"[植物,310-粉色龙舌兰",
"[植物,311-小白菊",
"[植物,312-黄钟花",
"[植物,313-野蔷薇",
"[植物,314-红藻",
"[植物,315-珊瑚2",
"[植物,316-珊瑚3",
"[植物,317-珊瑚4",
"[植物,318-珊瑚5",
"[植物,319-珊瑚6",
"[植物,320-珊瑚7",
"[装饰,321-桃花堆",
"[装饰,322-小花堆",
"[装饰,323-落叶堆",
"[植物,324-结果的果木树叶",
"[植物,325-结果的落叶松树叶",
"[植物,326-结果的乔木树叶",
"[植物,327-结果的珍木树叶",
"[植物,328-结果的红衫树叶",
"[植物,329-结果的胡桃木树叶",
"[植物,330-结果桃花树叶",
"[植物,331-结果的白杨树叶",
"[方块,332-粗果木树枝",
"[方块,333-细果木树枝",
"[方块,334-粗落叶松树枝",
"[方块,335-细落叶松树树枝",
"[方块,336-粗珍木树枝",
"[方块,337-细珍木树枝",
"[方块,338-粗胡桃木树枝",
"[方块,339-细胡桃木树枝",
"[方块,340-粗桃花树枝",
"[方块,341-细桃花树枝",
"[方块,342-粗白杨树枝",
"[方块,343-细白杨树枝",
"[材料,344-麦粉",
"[植物,345-野生棉花树苗",
"[方块,375-乔木木板",
"[建筑,376-乔木楼梯",
"[建筑,377-乔木台阶",
"[方块,379-乔木果实方块",
"[植物,380-灌木丛树苗",
"[植物,382-雨林乔木树苗",
"[植物,383-香蕉树苗",
"[植物,384-香蕉树叶",
"[植物,385-香蕉方块",
"[植物,386-香蕉树干",
"[建筑,390-花纹细柱",
"[植物,392-灌木丛",
"[植物,394-星光粉尘树叶",
"[植物,395-雨林乔木树叶",
"[方块,396-雨林之芯乔木",
"[植物,397-苔藓",
"[方块,398-草木灰方块",
"[方块,399-草木灰耕地",
"[方块,400-闪金矿石",
"[方块,401-精铁矿石",
"[方块,402-煤矿石块",
"[方块,403-蓝晶矿石",
"[方块,404-蓝钻矿石",
"[方块,405-电石矿石",
--注：星能矿石
"[方块,406-孔雀石矿石",
"[方块,407-硅石矿",
"[方块,408-蓝钻块",
"[方块,409-孔雀石块",
"[方块,410-闪金块",
"[方块,411-铸铁块",
"[方块,412-硅石块",
"[方块,413-花纹硅石块",
"[方块,414-竖纹硅石块",
"[方块,415-电石块",
"[方块,416-大煤块",
"[方块,417-蓝晶石块",
"[方块,418-果木地板",
"[方块,419-落叶松地板",
"[方块,420-红杉地板",
"[方块,421-土砖",
"[方块,422-粗制岩石砖",
"[方块,423-沙石板",
"[方块,424-细沙砖板",
"[方块,425-釉面砖",
"[方块,426-横格釉面砖",
"[方块,427-竖格釉面砖",
"[方块,428-四格釉面砖",
"[方块,429-不规则釉面砖",
"[方块,430-冰砖",
"[植物,431-向阳花种子",
"[植物,432-丁香花种子",
"[植物,433-星辰花种子",
"[植物,434-龙血花种子",
"[植物,435-风信子种子",
"[植物,436-龙爪草种子",
"[植物,437-龙血树种子",
"[植物,438-红色龙舌兰种子",
"[植物,439-橙色龙舌兰种子",
"[植物,440-灰色龙舌兰种子",
"[植物,441-粉色龙舌兰种子",
"[植物,442-小白菊种子",
"[植物,443-黄钟花种子",
"[植物,444-野蔷薇种子",
"[方块,447-神秘化石",
"[方块,448-石油块",
"[方块,449-星铜石块",
"[方块,450-紫荧石块",
"[方块,451-铜合金矿",
"[方块,452-钛合金矿",
"[方块,453-攻击符文矿石",
"[方块,454-防御符文矿石",
"[方块,455-效率符文矿石",
"[方块,456-黄铜块",
"[方块,457-钛合金块",
"[方块,458-菌丝体",
"[植物,359-洋红毒菇",
"[其他,466-星光孢子饲料",
"[其他,467-变异小蘑菇饲料",
"[其他,468-变异小红菇饲料",
"[植物,469-野生棉花树",
--迷之方块：
--据说可以获得光之力
"[方块,406-迷之方砖",
"[方块,406-迷之方砖",
"[方块,406-迷之方砖",
"[方块,406-迷之方砖",
"[方块,406-迷之方砖",
"[方块,406-迷之方砖",
"[其他,500-火",
"[方块,501-岩石砖",
"[方块,502-裂纹石砖",
"[方块,503-青苔石砖",
"[方块,504-花纹石砖",
"[方块,505-岩石块",
"[方块,506-岩石台阶",
"[方块,507-沙砖台阶",
"[方块,509-石块台阶",
"[方块,510-灰砂砖台阶",
"[方块,511-岩石砖台阶",
"[方块,512-硫磺砖台阶",
"[方块,513-硅石台阶",
"[方块,514-果木台阶",
"[方块,515-落叶松台阶",
"[方块,516-白杨木台阶",
"[方块,517-红杉台阶",
"[方块,518-楠木台阶",
"[方块,519-胡桃台阶",
"[方块,520-果木楼梯",
"[方块,521-落叶松楼梯",
"[方块,522-白杨木楼梯",
"[方块,523-红杉楼梯",
"[方块,524-楠木楼梯",
"[方块,525-胡桃楼梯",
"[建筑,526-铁栅栏",
"[方块,527-沙砖楼梯",
"[方块,529-石块楼梯",
"[方块,530-灰砂砖楼梯",
"[方块,531-岩石砖楼梯",
"[方块,532-硫磺砖楼梯",
"[方块,533-硅石楼梯",
"[建筑,534-木围栏",
"[建筑,535-木围栏门",
"[方块,536-曙光石块",
"[方块,537-硫磺砖块",
"[建筑,538-硫磺砖围栏",
"[建筑,539-白杨木栅栏",
"[方块,540-平滑沙砖",
"[方块,541-花纹沙砖",
"[方块,547-灰砖砖块",
"[建筑,548-岩石围栏",
"[建筑,549-青石围栏",
"[方块,550-荧光晶块",
"[建筑,551-石砖围栏",
"[建筑,552-白杨木围栏",
"[建筑,553-木栅栏",
"[建筑,554-铁围栏",
"[建筑,555-木窗",
"[建筑,556-玻璃窗",
"[建筑,557-白杨玻璃窗",
"[方块,558-蜂蜜块",
"[方块,559-焦糖块",
"[方块,560-结晶的蜂蜜",
"[方块,561-烧焦的蜂蜜",
"[方块,562-桃花木板",
"[方块,563-竹板",
"[方块,564-桃花木台阶",
"[方块,565-竹板台阶",
"[方块,566-桃花木楼梯",
"[方块,567-竹板楼梯",
"[建筑,568-竹板栅栏",
"[建筑,569-竹板栅栏门",
"[建筑,570-星球岩台阶",
"[建筑,571-星球岩楼梯",
"[建筑,572-星球岩围栏",
"[建筑,573-萌眼星石砖",
"[建筑,574-珍木台阶",
"[建筑,575-珍木楼梯",
"[建筑,576-珍木围栏",
"[装饰,578-雨林神像",
"[方块,579-雨林乔木",
"[功能,580-祭台",
"[建筑,581-天气预报器",
"[功能,582-睡袋",
"[建筑,583-神像基座",
"[功能,584-毒液",
"[方块,585-无名纪念碑",
"[方块,586-祭坛石碑",
"[特殊,587-神圣果实",
"[特殊,588-烈焰断剑",
"[特殊,589-石人之眼",
"[方块,590-神圣树干",
"[植物,591-神圣树种子",
"[植物,592-神圣树叶",
"[植物,593-神圣树浆",
"[功能,594-星站控制台",
"[功能,595-一级传送舱",
"[功能,596-石质雕像",
"[功能,597-二级传送舱",
--棉花块：毛料
"[方块,600-白色棉花块",
"[方块,601-橙色棉花块",
"[方块,602-紫红棉花块",
"[方块,603-淡蓝棉花块",
"[方块,604-黄色棉花块",
"[方块,605-淡绿棉花块",
"[方块,606-粉色棉花块",
"[方块,607-灰色棉花块",
"[方块,608-淡灰棉花块",
"[方块,609-青色棉花块",
"[方块,610-紫色棉花块",
"[方块,611-蓝色棉花块",
"[方块,612-褐色棉花块",
"[方块,613-绿色棉花块",
"[方块,614-红色棉花块",
"[方块,615-黑色棉花块",
"[装饰,616-白色地毡",
"[装饰,617-橙色地毡",
"[装饰,618-紫红地毡",
"[装饰,619-淡蓝地毡",
"[装饰,620-黄色地毡",
"[装饰,621-淡绿地毡",
"[装饰,622-粉色地毡",
"[装饰,623-灰色地毡",
"[装饰,624-淡灰地毡",
"[装饰,625-青色地毡",
"[装饰,626-紫色地毡",
"[装饰,627-蓝色地毡",
"[装饰,628-褐色地毡",
"[装饰,629-绿色地毡",
"[装饰,630-红色地毡",
"[装饰,631-黑色地毡",
"[方块,632-透明玻璃块",
"[方块,633-白色玻璃块",
"[方块,634-橙色玻璃块",
"[方块,635-紫红玻璃块",
"[方块,636-淡蓝玻璃块",
"[方块,637-黄色玻璃块",
"[方块,638-淡绿玻璃块",
"[方块,639-粉色玻璃块",
"[方块,640-灰色玻璃块",
"[方块,641-淡灰玻璃块",
"[方块,642-青色玻璃块",
"[方块,643-紫色玻璃块",
"[方块,644-蓝色玻璃块",
"[方块,645-褐色玻璃块",
"[方块,646-绿色玻璃块",
"[方块,647-红色玻璃块",
"[方块,648-黑色玻璃块",
"[建筑,649-透明玻璃片",
"[建筑,650-白色玻璃片",
"[建筑,651-橙色玻璃片",
"[建筑,652-紫红玻璃片",
"[建筑,653-淡蓝玻璃片",
"[建筑,654-黄色玻璃片",
"[建筑,655-淡绿玻璃片",
"[建筑,656-粉色玻璃片",
"[建筑,657-灰色玻璃片",
"[建筑,658-淡灰玻璃片",
"[建筑,659-青色玻璃片",
"[建筑,660-紫色玻璃片",
"[建筑,661-蓝色玻璃片",
"[建筑,662-褐色玻璃片",
"[建筑,663-绿色玻璃片",
"[建筑,664-红色玻璃片",
"[建筑,665-黑色玻璃片",
"[方块,666-硬砂块",
"[方块,667-白色硬砂块",
"[方块,668-橙色硬砂块",
"[方块,669-紫红硬砂块",
"[方块,670-淡蓝硬砂块",
"[方块,671-黄色硬砂块",
"[方块,672-淡绿硬砂块",
"[方块,673-粉色硬砂块",
"[方块,674-灰色硬砂块",
"[方块,675-淡灰硬砂块",
"[方块,676-青色硬砂块",
"[方块,677-紫色硬砂块",
"[方块,678-蓝色硬砂块",
"[方块,679-褐色硬砂块",
"[方块,680-绿色硬砂块",
"[方块,681-红色硬砂块",
"[方块,682-黑色硬砂块",
"[方块,683-龙纹石块",
"[方块,684-斜纹黑石块",
"[方块,685-竖纹糖块",
"[方块,686-巧克力砖",
"[照明,687-香薰宫灯",
"[建筑,688-中式字牌",
"[建筑,689-中式镂空窗",
"[音乐,690-低音块",
"[音乐,691-中音块",
"[音乐,692-高音块",
"[音乐,693-乐器-鼓",
"[音乐,694-乐器-电子",
"[音乐,695-乐器-综合",
"[音乐,696-非循环-电子",
"[音乐,697-循环-鼓",
"[音乐,698-循环-电子",
"[音乐,699-循环-氛围",
"[电路,700-星能产生器",
"[电路,701-星能产生器",
"[电路,702-星能增幅器",
"[电路,703-星能增幅器",
"[电路,704-星能比较器",
"[电路,705-星能比较器",
"[电路,706-蓝色电能线",
"[电路,707-电石信号灯",
"[电路,708-电石信号灯(亮)",
"[材料,710-丝线",
"[电路,711-触碰感压板",
"[电路,712-普通感压板",
"[电路,713-生物蛋感压板",
"[电路,715-触碰按钮",
"[电路,716-普通按钮",
"[电路,717-发射装置",
"[电路,718-推拉机械臂",
"[电路,719-机械臂",
"[电路,720-投掷发射装置",
"[电路,721-地刺陷阱",
"[电路,722-投掷装置",
"[其他,723-桃木图腾",
"[电路,724-开关",
"[电路,725-铁轨道节点",
"[电路,729-加速轨道节点",
"[箱子,730-沙漠宝箱",
"[建筑,731-木质天窗",
"[装饰,732-黑龙雕像",
"[罐子,733-黑龙宝罐",
"[箱子,734-普通宝箱",
"[箱子,735-精致宝箱",
"[箱子,736-黄金宝箱",
"[罐子,737-简易罐子",
"[罐子,738-陶土罐子",
"[罐子,739-彩陶罐子",
"[装饰,740-熔岩之石",
"[装饰,741-混乱之石",
"[装饰,742-混乱雕像",
"[罐子,743-熔岩宝罐",
"[罐子,744-混乱宝罐",
"[图腾,745-硫磺弓手图腾",
"[装饰,746-熔岩雕像",
"[罐子,747-物资罐",
"[装饰,748-萤火虫玻璃瓶",
"[方块,749-铜台阶",
"[方块,750-金台阶",
"[方块,751-钛台阶",
"[方块,752-铜楼梯",
"[方块,753-铁楼梯",
"[方块,754-钛楼梯",
--删除的东西：
--工具箱
--熔炼炉
"［锅］794-石锅",
"［锅］795-铁锅",
"［工作台］796-空的工匠台",
"［工作台］797-钛金工匠台",
"［熔炉］798-铁炉",
"［熔炉］799-铜炉",
"［工作台］800-石质工匠台",
"［熔炉］801-石炉",
"[其他,803-蜘蛛网",
"[方块,804-奇怪石头",
"[方块,805-奇怪石块",
"[方块,806-奇怪石砖",
"[方块,807-奇怪青石",
"[方块,808-奇怪裂石砖",
"[方块,809-奇怪花纹石砖",
"[图腾,810-怪物召集石",
"[建筑,812-轻木门",
"[建筑,813-爬梯",
"[建筑,814-铸铁门",
--注：铸铁门
"[建筑,815-留言板",
"[照明,816-方南瓜灯",
"[照明,817-火炬",
"[建筑,818-留言板",
--注：依附在方块上
"[装饰,819-黑龙蛋",
"[装饰,820-书柜",
"[方块,822-草垛",
"[功能,824-修理台",
"［工作台］-黄铜工匠台",
"[功能,828-舒适的床",
"[功能,829-魔药台",
"[食物,830-美味蛋糕",
"[食物,831-蜂蜜蛋糕",
"[箱子,832-神秘箱",
"[功能,833-融合附魔箱",
"［工作台］-铸铁工匠台",
"[武器,834-炸药桶",
"[其他,835-备用",
"[烟花,836-物理清除烟花",
"[电路,839-收集传输器",
"[电路,840-机械臂部件",
"[电路,841-移动的机械臂",
"[电路,842-铁弹簧",
"[电路,843-弹簧部件",
"[电路,844-金弹簧",
"[箱子,845-保险箱",
"[箱子,846-超级保险箱",
"[其他,847-圣诞礼盒",
"[模型,848-孔明灯",
"[模型,849-禁怪烟花",
"[模型,850-星星烟花(小)",
"[模型,851-星星烟花(大)",
"[模型,852-晴雨烟花",
"[模型,853-昼夜烟花",
"[建筑,854-楠木门",
"[建筑,855-胡桃木门",
"[建筑,856-白杨木门",
"[建筑,857-金铁门",
"[建筑,858-红杉木门",
"[建筑,859-果木门",
"[建筑,860-落叶松木门",
"[照明,861-木纹灯",
"[照明,862-白色玻璃灯",
"[照明,863-橙色玻璃灯",
"[照明,864-紫红玻璃灯",
"[照明,865-淡蓝玻璃灯",
"[照片,3456-星忆科技",
"[照明,866-黄色玻璃灯",
"[照明,867-淡绿玻璃灯",
"[照明,868-粉色玻璃灯",
"[照明,869-灰色玻璃灯",
"[照明,870-淡灰玻璃灯",
"[照明,871-青色玻璃灯",
"[照明,872-紫色玻璃灯",
"[照明,873-蓝色玻璃灯",
"[照明,874-褐色玻璃灯",
"[照明,875-绿色玻璃灯",
"[照明,876-红色玻璃灯",
"[照明,877-黑色玻璃灯",
"[其他,878-沙发测试",
"[装饰,879-圣诞铃铛",
"[装饰,880-圣诞条带",
"[装饰,881-喷花烟花",
"[装饰,882-喷花烟花(开)",
"[功能,883-精致木床",
"[功能,884-豪华木床",
"[功能,885-公主床",
"[建筑,886-岩石留言板",
"[建筑,887-岩石留言板",
"[建筑,888-钢铁留言板",
"[建筑,889-钢铁留言板",
"[建筑,890-熔岩留言板",
"[建筑,891-熔岩留言板",
"[建筑,892-木质字牌",
"[建筑,893-石质字牌",
"[建筑,894-铁制字牌",
"[建筑,895-金制字牌",
"[建筑,896-蓝钻字牌",
"[建筑,897-熔岩字牌",
"[照明,898-灯笼",
"[照明,899-古典路灯",
"[照明,900-现代路灯",
"[图腾,901-野人",
"[图腾,902-野萌宝",
"[图腾,903-野人猎手",
"[图腾,904-蜘蛛",
"[图腾,906-爆爆蛋",
"[图腾,908-熔岩巨人",
"[图腾,909-硫磺弓手",
"[图腾,910-鸡",
"[图腾,911-牛",
"[图腾,912-猪",
"[图腾,913-羊",
"[图腾,915-狼",
"[图腾,917-地心人",
"[图腾,918-远古黑龙",
"[装饰,919-红色战旗",
"[装饰,920-蓝色战旗",
"[装饰,921-绿色战旗",
"[装饰,922-黄色战旗",
"[装饰,923-橙色战旗",
"[装饰,924-紫色战旗",
"[装饰,925-白色战旗",
"[建筑,926-黑色铁围栏",
"[建筑,927-白色铁围栏",
"[装饰,928-小花盆",
"[装饰,929-大花盆",
"[装饰,930-相框",
"[照明,931-蜡烛台",
"[照明,932-蜡烛台",
"[照明,933-吊灯",
"[照明,934-典雅壁灯",
"[照明,935-精致壁灯",
"[照明,936-台灯",
"[装饰,937-福字",
"[装饰,938-对联字牌",
"[装饰,939-春节窗花",
"[装饰,940-春节窗花-福",
"[装饰,941-春节窗花-禄",
"[装饰,942-春节窗花-寿",
"[装饰,943-春节窗花-喜",
"[照明,944-新春灯笼",
"[照明,945-中式宫灯",
"[装饰,946-红色陶花盆",
"[装饰,947-绿色陶花盆",
"[装饰,948-大瓷花盆",
"[照明,949-新春宫灯",
"[坐骑蛋,950-魔力坐骑蛋",
"[坐骑蛋,951-小飞鼠坐骑蛋",
"[坐骑蛋,952-麒麟坐骑蛋",
"[坐骑蛋,953-陆行鸟坐骑蛋",
"[坐骑蛋,954-小白象坐骑蛋",
"[坐骑蛋,955-小海豹坐骑蛋",
"[坐骑蛋,956-小猫咪坐骑蛋",
"[坐骑蛋,957-小天马坐骑蛋",
"[坐骑蛋,958-小仓鼠坐骑蛋",
"[其他,959-烟花",
"[方块,960-基石-混凝土",
"[方块,961-基石-裂土",
"[方块,962-白色基石",
"[方块,963-基石-坚冰",
"[方块,964-基石-钢板",
"[建筑,965-果木椅子",
"[建筑,966-果木桌子",
"[建筑,967-果木沙发",
"[功能,968-棕色壁炉",
"[箱子,969-果木柜子",
"[建筑,970-白杨椅子",
"[建筑,971-白杨桌子",
"[建筑,972-白杨沙发",
"[功能,973-白色壁炉",
"[箱子,974-白杨柜子",
"[建筑,975-松木椅子",
"[建筑,976-松木桌子",
"[建筑,977-松木沙发",
"[功能,978-黑色壁炉",
"[箱子,979-松木柜子",
"[食物,980-周年生日蛋糕",
"[方块,981-方片花纹砖",
"[方块,982-棕色纹砖",
"[方块,983-黑白纹砖",
"[建筑,984-白蓝纹玻璃片",
"[建筑,985-绿蓝纹玻璃片",
"[装饰,986-小彩旗",
"[箱子,988-补给箱",
"[箱子,989-补给道具箱",
"[玩法,990-公共复活点",
"[玩法,991-1队:红队复活点",
"[玩法,992-2队:蓝队复活点",
"[玩法,993-3队:绿队复活点",
"[玩法,994-4队:黄队复活点",
"[玩法,995-5队:橙队复活点",
"[玩法,996-6队:紫队复活点",
"[玩法,997-闪星方块",
"[箱子,998-初始道具补给箱",
"[箱子,999-复活道具补给箱",
"[功能,1000-方块复制器",
"[玩法,1001-空气墙方块",
"[功能,1002-方块复制器",
"[功能,1003-方块复制器(红)",
"[电路,1004-标记器(-)",
"[电路,1005-标记器(+)",
"[电路,1006-标记器3号",
"[电路,1007-标记器4号",
"[电路,1008-滑动方块",
"[电路,1009-红色电能线",
"[电路,1010-转轴方块",
"[玩法,1011-前进路径牌-公共",
"[玩法,1012-停止路径牌",
"[电路,1013-标记器0号",
"[武器,1014-十字大炸弹",
"[武器,1015-十字小炸弹",
"[武器,1016-单向大炸弹",
"[武器,1017-单向小炸弹",
"[玩法,1018-空气墙-不挡子弹",
"[其他,1019-鸡窝",
"[其他,1020-鸡饲料",
"[玩法,1021-闪星奖杯",
"[电路,1022-收集传输器",
"[电路,1023-机械臂(板手)",
"[电路,1024-推拉机械臂(扳手)",
"[玩法,1026-前进路径牌-1队",
"[玩法,1027-前进路径牌-2队",
"[玩法,1028-前进路径牌-3队",
"[玩法,1029-前进路径牌-4队",
"[玩法,1030-前进路径牌-5队",
"[玩法,1031-前进路径牌-6队",
"[电路,1032-感应方块",
"[电路,1033-算法器",
"[电路,1034-电阻",
"[玩法,1035-随机补给罐",
"[玩法,1036-准备点",
"[玩法,1037-触碰方块",
"[玩法,1038-生物蛋触碰方块",
"[玩法,1039-得分方块",
"[玩法,1040-球触碰方块",
"[图腾,1042-神秘图腾",
"[其他,1043-图腾宝藏水晶",
"[其他,1044-图腾宝藏水晶(初始祭坛)",
"[功能,1045-气体提炼装置",
"[其他,1046-火把(熄灭)",
"[功能,1047-压缩气罐(空)",
"[功能,1048-压缩气罐(氧气)",
"[方块,1049-污染图腾",
"[功能,1050-星球培养基",
"[食物,1051-氧气果",
"[电路,1052-信号发生器",
"[电路,1053-信号接收器",
"[电路,1054-信号解析器",
"[箱子,1055-小加密箱",
"[箱子,1056-大加密箱",
"[其他,1057-宇宙大礼包",
"[装饰,1058-巨人雕像",
"[电路,1059-巨人核心",
"[电路,1060-反射镜",
"[罐子,1061-巨人之罐",
"[功能,1062-区域方块复制器",
"[功能,1063-蓝图工作台",
"[功能,1064-蓝图图纸",
"[功能,1065-图纸建造方块",
"[功能,1066-测距仪",
"[电路,1067-物理触碰方块",
"[玩法,1068-篮框方块",
"[照明,1070-荧光方块",
"[照明,1071-荧光块",
"[玩法,1072-公共初始出生点",
"[玩法,1073-1队:红队初始出生点",
"[玩法,1074-2队:蓝队初始出生点",
"[玩法,1075-3队:绿队初始出生点",
"[玩法,1076-4队:黄队初始出生点",
"[玩法,1077-5队:橙队初始出生点",
"[玩法,1078-6队:紫队初始出生点",
"[玩法,1079-个人初始出生点",
"[玩法,1080-刷怪方块",
"[玩法,1081-空气墙不挡物理",
"[机械,1082-车身方块(测试用)",
"[机械,1083-转向车轮",
"[机械,1084-驾驶座",
"[机械,1085-机械车间",
"[机械,1086-轮盘(测试)",
"[机械,1087-动力车轮",
"[机械,1088-引擎(测试)",
"[机械,1089-燃烧引擎",
"[机械,1090-无限引擎",
"[机械,1091-乘客座",
"[机械,1092-动作序列器",
"[机械,1093-推进器",
"[机械,1094-机翼",
"[机械,1095-尾翼",
"[机械,1096-航天推进器",
"[机械,1099-油箱",
"[方块,1101-实验室门",
"[方块,1102-镜冰",
"[照明,1103-冰灯",
"[电路,1104-花纹电石块",
"[方块,1105-电石铁块",
"[方块,1106-电石铁板",
"[方块,1107-紫线铁块",
"[方块,1108-厚铁块",
"[方块,1109-镂空铁板",
"[照明,1110-实验室灯",
"[建筑,1111-旧铁门",
"[方块,1112-铁丝网",
"[方块,1113-竖文铁板",
"[方块,1114-锈铁板",
"[方块,1115-条纹锈铁板",
"[方块,1116-镂空绣铁板",
"[方块,1117-电石锈铁块",
"[照明,1118-荧光灯",
"[方块,1119-花纹铁块",
"[方块,1120-旧铁块",
"[方块,1121-橙色旧铁块",
"[方块,1122-洋红旧铁块",
"[方块,1123-淡蓝色旧铁块",
"[方块,1124-黄色旧铁块",
"[方块,1125-黄绿色旧铁块",
"[方块,1126-粉色旧铁块",
"[方块,1128-淡灰色旧铁块",
"[方块,1129-青色旧铁块",
"[方块,1127-灰色旧铁块",
"[方块,1130-紫色旧铁块",
"[方块,1131-蓝色旧铁块",
"[方块,1132-棕色旧铁块",
"[方块,1134-红色旧铁块",
"[方块,1133-绿色旧铁块",
"[方块,1135-黑色旧铁块",
"[装饰,1136-雪梅屏风",
"[装饰,1137-红烛灯",
"[功能,1138-模型工具台",
"[装饰,1139-红烛灯",
"[玩法,1140-传送点核心方块",
"[玩法,1141-传送点方块",
"[功能,1142-道具模型工作台",
"[功能,1143-编书台",
"[功能,1144-书架",
"[装饰,1145-春节窗花-牛",
"[功能,1150-生物模型方块",
"[其他,1151-自定义模型编缉器",
"[其他,1152-工具模式预览方块​",
"[测试,1153-测试-标记器(-)",
"[测试,1154-测试-标记器(+)",
"[测试,1155-测试-滑动方块",
"[测试,1156-测试-转轴方块",
"[测试,1157-测试-开关",
"[机械,1158-球铰链方块",
"[机械,1159-铰链方块",
"[机械,1160-机器抓",
"[机械,1161-液压臂",
"[机械,1162-游戏版本过低",
"[机械,1163-游戏版本过低",
"[机械,1164-避震器",
"[机械,1165-升降铰绳",
"[机械,1166-游戏版本过低",
"[机械,1167-游戏版本过低",
"[机械,1168-红外感应方块",
"[机械,1169-光照感应器",
"[机械,1170-游戏版本过低",
"[机械,1171-游戏版本过低",
"[箱子,1180-储物箱〈竖〉",
"[箱子,1181-储物箱〈横〉",
"[其他,1999-自定义模型(方块)",
"[功能,1200-篝火",
"[装饰,1201-石碑",
"[图腾,1202-部落图腾",
"[功能,1203-农夫旗帜",
"[功能,1204-樵夫旗帜",
"[功能,1205-守卫旗帜",
"[家园装饰,1400-音乐盒",
"[家园装饰,1401-天空布景台",
"[家园装饰,1402-重力装置",
"[家园装饰,1403-天气控制器",
"[家园道具,1404-家园工作台",
"[家园道具,1405-宠物窝",
"[家园装饰,1406-灶台",
"[家园装饰,1407-家园空气墙",
"[家园装饰,1451-荣誉架",
"[家园植物,1452-向阳花",
"[家园植物,1453-红色龙舌兰",
"[家园植物,1454-龙血花",
"[家园植物,1455-野蔷薇",
"[家园植物,1456-小白菊",
"[家园植物,1457-茶树",
"[家园植物,1458-香蕉树",
"[家园植物,1459-西瓜",
"[家园植物,1460-芒果树",
"[家园植物,1461-梨树",
"[家园植物,1462-柑橘树",
"[家园植物,1463-桃子树",
"[家园植物,1464-水稻",
"[家园植物,1465-麦子",
"[家园植物,1466-土豆",
"[家园植物,1467-南瓜",
"[家园植物,1468-甘蔗",
"[家园植物,1469-满的蜂巢",
"[家园植物,1470-辣椒树",
"[家园植物,1471-棉花树",
"[家园植物,1472-果树",
"[家园植物,1473-落叶松",
"[家园植物,1474-白杨树",
"[家园植物,1475-红杉树",
"[家园植物,1476-楠树",
"[家园植物,1477-胡桃树",
"[家园植物,1478-食用小蘑菇",
"[家园植物,1479-食用小红菇",
"[家园植物,1480-咖啡豆树",
"[家园植物,1481-球球豆树",
"[家园植物,1482-氧气果树",
"[家园植物,1483-橙色龙舌兰",
"[家园植物,1484-灰色龙舌兰",
"[家园植物,1485-粉色龙舌兰",
"[家园植物,1486-胡萝卜",
"[家园植物,1493-向阳花(苗)",
"[家园植物,1494-红色龙舌兰(苗)",
"[家园植物,1495-橙色龙舌兰(苗)",
"[家园植物,1496-灰色龙舌兰(苗)",
"[家园植物,1497-粉色龙舌兰(苗)",
"[家园植物,1498-龙血花(苗)",
"[家园植物,1499-野蔷薇(苗)",
"[家园植物,1500-小白菊(苗)",
"[家园植物,1501-西瓜(苗)",
"[家园植物,1502-南瓜(苗)",
"[家园植物,1503-果木树苗",
"[家园植物,1504-落叶松树苗",
"[家园植物,1505-白杨树苗",
"[家园植物,1506-胡桃树苗",
"[简约家具,1550-简约床",
"[简约家具,1551-简约沙发",
"[简约家具,1552-简约书桌",
"[简约家具,1553-简约餐桌",
"[简约家具,1554-简约茶几",
"[简约家具,1555-简约洗手台",
"[简约家具,1556-简约椅子",
"[简约家具,1557-简约马桶",
"[简约家具,1558-简约浴缸",
"[简约家具,1559-简约衣柜",
"[简约家具,1560-简约橱柜",
"[简约家具,1561-简约半格橱柜",
"[简约家具,1562-简约组合柜",
"[简约家具,1563-简约屏风",
"[简约家具,1564-简约立体灯",
"[简约家具,1565-简约吊灯",
"[简约家具,1566-简约壁灯",
"[简约家具,1567-简约门",
"[简约家具,1568-简约窗",
"[简约家具,1569-简约楼梯",
"[简约家具,1570-简约墙砖",
"[简约家具,1571-简约砖",
"[简约家具,1572-简约半砖",
"[简约家具,1573-简约围栏",
"[中式家具,1574-中式床",
"[中式家具,1575-中式沙发",
"[中式家具,1576-中式书桌",
"[中式家具,1577-中式餐桌",
"[中式家具,1578-中式茶几",
"[中式家具,1579-中式洗手台",
"[中式家具,1580-中式椅子",
"[中式家具,1581-中式马桶",
"[中式家具,1582-中式浴缸",
"[中式家具,1583-中式衣柜",
"[中式家具,1584-中式橱柜",
"[中式家具,1585-中式半格橱柜",
"[中式家具,1586-中式组合柜",
"[中式家具,1587-中式屏风",
"[中式家具,1588-中式立体灯",
"[中式家具,1589-中式吊灯",
"[中式家具,1590-中式壁灯",
"[中式家具,1591-中式门",
"[中式家具,1592-中式窗",
"[中式家具,1593-中式楼梯",
"[中式家具,1594-中式墙砖",
"[中式家具,1595-中式砖",
"[中式家具,1596-中式半砖",
"[中式家具,1597-中式围栏",
"[现代家具,1598-现代床",
"[现代家具,1599-现代沙发",
"[现代家具,1600-现代书桌",
"[现代家具,1601-现代餐桌",
"[现代家具,1602-现代茶几",
"[现代家具,1603-现代洗手台",
"[现代家具,1604-现代椅子",
"[现代家具,1605-现代马桶",
"[现代家具,1606-现代浴缸",
"[现代家具,1607-现代衣柜",
"[现代家具,1608-现代橱柜",
"[现代家具,1609-现代半格橱柜",
"[现代家具,1610-现代组合柜",
"[现代家具,1611-现代屏风",
"[现代家具,1612-现代立体灯",
"[现代家具,1613-现代吊灯",
"[现代家具,1614-现代壁灯",
"[现代家具,1615-现代门",
"[现代家具,1616-现代窗",
"[现代家具,1617-现代楼梯",
"[现代家具,1618-现代墙砖",
"[现代家具,1619-现代砖",
"[现代家具,1620-现代半砖",
"[现代家具,1621-现代围栏",
"[童话家具,1622-童话床",
"[童话家具,1623-童话沙发",
"[童话家具,1624-童话书桌",
"[童话家具,1625-童话餐桌",
"[童话家具,1626-童话茶几",
"[童话家具,1627-童话洗手台",
"[童话家具,1628-童话椅子",
"[童话家具,1629-童话马桶",
"[童话家具,1630-童话浴缸",
"[童话家具,1631-童话衣柜",
"[童话家具,1632-童话橱柜",
"[童话家具,1633-童话半格橱柜",
"[童话家具,1634-童话组合柜",
"[童话家具,1635-童话屏风",
"[童话家具,1636-童话立体灯",
"[童话家具,1637-童话吊灯",
"[童话家具,1638-童话壁灯",
"[童话家具,1639-童话门",
"[童话家具,1640-童话窗",
"[童话家具,1641-童话楼梯",
"[童话家具,1642-童话墙砖",
"[童话家具,1643-童话砖",
"[童话家具,1644-童话半砖",
"[童话家具,1645-童话围栏",
"[科幻家具,1646-科幻床",
"[科幻家具,1647-科幻沙发",
"[科幻家具,1648-科幻书桌",
"[科幻家具,1649-科幻餐桌",
"[科幻家具,1650-科幻茶几",
"[科幻家具,1651-科幻洗手台",
"[科幻家具,1652-科幻椅子",
"[科幻家具,1653-科幻马桶",
"[科幻家具,1654-科幻浴缸",
"[科幻家具,1655-科幻衣柜",
"[科幻家具,1656-科幻橱柜",
"[科幻家具,1657-科幻半格橱柜",
"[科幻家具,1658-科幻组合柜",
"[科幻家具,1659-科幻屏风",
"[科幻家具,1660-科幻立体灯",
"[科幻家具,1661-科幻吊灯",
"[科幻家具,1662-科幻壁灯",
"[科幻家具,1663-科幻门",
"[科幻家具,1664-科幻窗",
"[科幻家具,1665-科幻楼梯",
"[科幻家具,1666-科幻墙砖",
"[科幻家具,1667-科幻砖",
"[科幻家具,1668-科幻半砖",
"[科幻家具,1669-科幻围栏",
"[家园装饰,1670-小松树盆栽",
"[家园装饰,1671-葱翠盆栽",
"[家园装饰,1672-绒毛地毯",
"[家园装饰,1673-山水画",
"[家园装饰,1674-抽象画",
"[家园装饰,1675-中国结挂饰",
"[家园装饰,1676-星球挂饰",
"[家园装饰,1677-简单书柜",
"[家园装饰,1678-纯白冰箱",
"[家园装饰,1679-银灰冰箱",
"[家园装饰,1680-酷黑冰箱",
"[家园装饰,1681-纯白电饭煲",
"[家园装饰,1682-银灰电饭煲",
"[家园装饰,1683-酷黑电饭煲",
"[家园装饰,1684-纯白烤箱",
"[家园装饰,1685-银灰烤箱",
"[家园装饰,1686-酷黑烤箱",
"[家园装饰,1687-纯白灶台",
"[家园装饰,1688-银灰灶台",
"[家园装饰,1689-酷黑灶台",
"[家园装饰,1690-多肉盆栽",
"[欧式家具,1691-欧式床",
"[欧式家具,1692-欧式沙发",
"[欧式家具,1693-欧式书桌",
"[欧式家具,1694-欧式餐桌",
"[欧式家具,1695-欧式茶几",
"[欧式家具,1696-欧式洗手台",
"[欧式家具,1697-欧式椅子",
"[欧式家具,1698-欧式马桶",
"[欧式家具,1699-欧式浴缸",
"[欧式家具,1700-欧式衣柜",
"[欧式家具,1701-欧式橱柜",
"[欧式家具,1702-欧式半格橱柜",
"[欧式家具,1703-欧式组合柜",
"[欧式家具,1704-欧式屏风",
"[欧式家具,1705-欧式立体灯",
"[欧式家具,1706-欧式吊灯",
"[欧式家具,1707-欧式壁灯",
"[欧式家具,1708-欧式门",
"[欧式家具,1709-欧式窗",
"[欧式家具,1710-欧式楼梯",
"[欧式家具,1711-欧式墙砖",
"[欧式家具,1712-欧式砖",
"[欧式家具,1713-欧式半砖",
"[欧式家具,1714-欧式围栏",
"[家园植物,1715-胡杨木",
"[家园建筑,1716-胡杨木板",
"[家园植物,1717-胡杨树叶",
"[家园建筑,1718-胡杨台阶",
"[家园建筑,1719-胡杨楼梯",
"[家园装饰,1720-胡杨茶几",
"[家园装饰,1721-胡杨凳子",
"[西域家具,1722-西域床",
"[西域家具,1723-西域沙发",
"[西域家具,1724-西域书桌",
"[西域家具,1725-西域餐桌",
"[西域家具,1726-西域茶几",
"[西域家具,1727-西域洗手台",
"[西域家具,1728-西域椅子",
"[西域家具,1729-西域马桶",
"[西域家具,1730-西域浴缸",
"[西域家具,1731-西域衣柜",
"[西域家具,1732-西域橱柜",
"[西域家具,1733-西域半格橱柜",
"[西域家具,1734-西域组合柜",
"[西域家具,1735-西域屏风",
"[西域家具,1736-西域立体灯",
"[西域家具,1737-西域吊灯",
"[西域家具,1738-西域壁灯",
"[西域家具,1739-西域门",
"[西域家具,1740-西域窗",
"[西域家具,1741-西域楼梯",
"[西域家具,1742-西域墙砖",
"[西域家具,1743-西域砖",
"[西域家具,1744-西域半砖",
"[西域家具,1745-西域围",
"[西域家具,1746-西域地毯",
"[家园装饰,1747-骆驼雕塑",
"[家园装饰,1748-敦煌石窟",
"[家园装饰,1749-敦煌飞天雕塑",
"[家园装饰,1750-莲花壁画",
"[家园装饰,1751-飞天女壁画",
"[家园装饰,1752-九色鹿王壁画",
"[建筑,1753-饲料槽",
"[方块,1754-彩云",
"[建筑,1755-石柱",
"[建筑,1756-柱顶",
"[方块,1756-凝浆块",
"[方块,1757-黑凝浆块",
"[坐骑蛋,1800-魔龙坐骑蛋",
"[坐骑蛋,1801-月亮坐骑蛋",
"[坐骑蛋,1802-圣夜雪橇坐骑蛋",
"[坐骑蛋,1803-巨鲸坐骑蛋",
"[坐骑蛋,1804-莲花坐骑蛋",
"[其他,2000-微缩模型",
"[其他,9950-棒球男",
"[其他,9995-微缩组合",
"[其他,9996-微缩弓",
"[其他,9997-微缩投掷",
"[其他,9998-微缩枪械",
"[其他,9999-微缩武器",
"[图标,10000-迷你豆",
"[图标,10001-经验值",
"[图标,10002-迷你币",
"[图标,10003-迷你宝盒",
"[图标,10004-福满春结",
"[图标,10005-小草块",
"[图标,10006-亮铁块",
"[图标,10007-纯金块",
"[图标,10008-钻石块",
"[图标,10009-迷你点",
"[图标,10010-扭蛋券",
"[图标,10011-果实券",
"[图标,10012-活动券",
"[图标,10013-家园币",
"[图标,10014-悦享心动卡",
"[图标,10015-悦享至尊卡",
"[图标,10016-悦享初绽卡",
"[图标,10017-迷你圣诞袜",
"[图标,10018-迷你铃铛",
"[图标,10019-迷你金蛋",
"[图标,10020-结算宝箱",
"[图标,10021-紫色蛋蛋",
"[图标,10022-粉花",
"[图标,10023-星球传送券",
"[图标,10024-一叠星球传送券",
"[机械,10112-机械胶囊",
"[图标,10113-畅玩通行证",
"[其他,10114-装备模板",
"[其他,10115-动作饼干",
"[功能,10500-地形编辑器",
"[功能,10501-微缩组合装置",
"[工具,11000-空手",
"[工具,11001-木斧头",
--注：黄铜斧
"[工具,11002-石斧头",
"[工具,11003-铁斧头",
--注：铸铁斧
"[工具,11004-金斧头",
--注：钛合金斧
"[工具,11005-链锯",
"[工具,11011-木矿镐",
--注：黄铜镐
"[工具,11012-石矿镐",
"[工具,11013-铁矿镐",
"[工具,11014-金矿镐",
--注：钛合金镐
"[工具,11015-钻头",
"[工具,11016-星铜钻头",
"[工具,11021-木铲",
--注：黄铜铲
"[工具,11022-石铲",
"[工具,11023-铁铲",
--注：铸铁铲
"[工具,11024-闪金铲",
--注：钛合金铲
"[工具,11025-蓝钻铲",
"[工具,11031-木锄头",
--注：黄铜耙
"[工具,11032-石锄头",
--注：石耙
"[工具,11033-铁锄头",
--注：铸铁耙
"[工具,11034-金锄头",
--钛合金耙
"[工具,11035-蓝钻锄头",
--注：蓝钻耙
"[其他,11041-头部",
"[其他,11042-胸部",
"[其他,11043-腿部",
"[其他,11044-脚部",
"[其他,11045-背饰",
"[工具,11048-木桶",
"[工具,11049-盛水木桶",
"[工具,11050-铁桶",
"[工具,11051-盛水铁桶",
"[工具,11052-岩浆铁桶",
"[工具,11053-蜂蜜铁桶",
"[工具,11055-点火器",
"[工具,11056-铁剪",
"[工具,11057-栓绳",
"[工具,11058-捕鱼网",
"[工具,11059-拐杖糖镐",
"[工具,11060-棒棒糖斧",
"[武器,11061-大宝剑",
"[工具,11062-大宝铲",
"[工具,11063-仙云棒",
"[工具,11064-盛水钛桶",
"[工具,11065-岩浆钛桶",
"[工具,11066-蜂蜜钛桶",
"[材料,11067-红色的羽毛",
"[材料,11068-鸡爪",
"[材料,11069-鸡嘴",
"[电路,11070-扳手",
"[玩法,11071-自定义视角",
"[图纸,11072-图纸一火箭科技",
"[材料,11073-星铜石",
"[材料,11074-紫莹石",
"[其他,11075-星启石",
"[其他,11076-星辉石",
"[材料,11077-岩石碎片",
"[材料,11078-冰晶",
"[材料,11079-聚合物",
"[材料,11080-重力结晶",
"[图纸,11081-图纸-序列系列",
"[图纸,11082-图纸-缩小技术",
"[图纸,11083-图纸-变异技术",
"[图纸,11084-图纸-气体提炼器",
"[图纸,11085-图纸-压缩气罐(空)",
"[图纸,11086-图纸-星球培养基",
"[图纸,11087-图纸-星铜钻头",
"[图纸,11088-图纸-喷射钩爪",
"[图纸,11089-图纸-氧气背包",
"[图纸,11090-图纸-星启石",
"[图纸,11091-图纸-星辉石",
"[图纸,11092-图纸-无叶珍木系列",
"[图纸,11093-图纸-无叶珍木台阶",
"[图纸,11094-图纸-无叶珍木围栏",
"[其他,11095-星团云瓶",
"[其他,11096-航空燃料",
"[图纸,11097-图纸-无线装置",
"[图纸,11098-图纸-信号接收器",
"[机械,11099-机械燃油",
"[玩法,11100-手携式编辑器",
"[工具,11101-连接器",
"[材料,11200-灰砂",
"[材料,11201-小煤块",
"[材料,11202-黑炭",
"[材料,11203-蓝钻石",
"[材料,11204-孔雀石",
"[材料,11205-远古宝石",
--注：星站能源碎片
"[材料,11206-曙光石粉",
"[材料,11207-闪金锭",
"[材料,11208-闪金粒",
"[材料,11209-铸铁锭",
"[材料,11210-硅石",
"[材料,11211-火种",
"[材料,11213-灰砂砖",
"[材料,11214-硫磺砖",
"[材料,11215-熔岩号角",
"[材料,11216-混乱号角",
"[材料,11217-生命结晶",
"[材料,11218-岩石结晶",
"[材料,11219-混乱结晶",
"[材料,11220-宝石结晶",
"[材料,11221-龙骨",
"[材料,11222-熔岩之心宝石",
"[材料,11223-一捆麦子",
"[材料,11224-一叠皮革",
"[材料,11225-地心传送门碎片",
"[材料,11226-一把杂草",
"[材料,11227-绳子",
"[功能,11228-花冠",
"[食物,11229-煎蘑菇串",
"［武器］11230-尖尖碰碰锤",
"[材料,11302-兽骨",
"[材料,11303-细羽毛",
"[材料,11304-火石",
"[材料,11305-石英粉",
"[材料,11306-火药",
"[材料,11307-软皮革",
"[材料,11308-地心之光",
"[材料,11309-软皮革布",
"[材料,11310-焦油",
"[材料,11311-动物肥料",
"[材料,11312-空心竹竿",
"[材料,11313-蜂刺",
"[材料,11314-简易木碗",
"[材料,11315-地心之眼",
"[材料,11316-变异的眼",
"[材料,11317-蚯蚓",
"[材料,11318-荧光晶体",
"[材料,11319-深海鱼鳃",
"[材料,11320-小玻璃瓶",
"[材料,11321-西瓜汁",
"[材料,11322-纸张",
"[材料,11323-小木棍",
"[材料,11324-探测器",
"[材料,11326-蔗糖",
--注：罐装果糖浆
"[生物蛋,11327-福球",
"[植物,11400-麦子的种子",
"[植物,11401-方南瓜种子",
"[植物,11402-方西瓜种子",
"[植物,11403-球球豆",
"[植物,11404-水稻的种子",
"[材料,11500-白色颜料",
"[材料,11501-橙色颜料",
"[材料,11502-紫红颜料",
"[材料,11503-淡蓝颜料",
"[材料,11504-黄色颜料",
"[材料,11505-淡绿颜料",
"[材料,11506-粉色颜料",
"[材料,11507-灰色颜料",
"[材料,11508-淡灰颜料",
"[材料,11509-青色颜料",
"[材料,11510-紫色颜料",
"[材料,11511-蓝晶石",
"[材料,11512-褐色颜料",
"[材料,11513-绿色颜料",
"[材料,11514-红色颜料",
"[材料,11515-黑色颜料",
"[材料,11516-白色颜料瓶",
"[材料,11517-橙色颜料瓶",
"[材料,11518-紫红颜料瓶",
"[材料,11519-淡蓝颜料瓶",
"[材料,11520-黄色颜料瓶",
"[材料,11521-淡绿颜料瓶",
"[材料,11522-粉色颜料瓶",
"[材料,11523-灰色颜料瓶",
"[材料,11524-淡灰颜料瓶",
"[材料,11525-青色颜料瓶",
"[材料,11526-紫色颜料瓶",
"[材料,11527-蓝色颜料瓶",
"[材料,11528-褐色颜料瓶",
"[材料,11529-绿色颜料瓶",
"[材料,11530-红色颜料瓶",
"[材料,11531-黑色颜料瓶",
"[材料,11533-钛白粉",
"[材料,11534-草饲料",
"[材料,11535-肉饲料",
"[武器,11551-破坏方块",
"[武器,11552-放置方块",
"[武器,11553-方块",
"[武器,11554-攻击",
"[武器,11555-击飞",
"[武器,11556-召唤",
"[武器,11557-加状态",
"[武器,11558-发射投掷物",
"[武器,11559-治疗",
"[武器,11560-破坏方块(投掷)",
"[武器,11561-替换方块(投掷)",
"[武器,11562-放置方块(投掷)",
"[武器,11563-攻击(投掷)",
"[武器,11564-击飞(投掷)",
"[武器,11565-召唤(投掷)",
"[武器,11566-加状态(投掷)",
"[武器,11567-发射投掷物(投掷)",
"[武器,11568-治疗(投掷)",
"[材料,11569-杖杆",
"[材料,11570-平凡晶核",
"[材料,11571-炽焰晶核",
"[材料,11572-雷电晶核",
"[材料,11573-淬毒晶核",
"[材料,11574-复苏晶核",
"[武器,11580-平凡法杖",
"[武器,11581-炽焰法杖",
"[武器,11582-雷电法杖",
"[武器,11583-淬毒法杖",
"[武器,11584-复苏法杖",
"[投射物,11586-平凡法球",
"[投射物,11587-炽烈法球",
"[投射物,11588-雷电法球",
"[投射物,11589-淬毒法球",
"[投射物,11590-复苏法球",
"[装备,11591-蛇神之翼",
"[投射物,11592-回旋镖",
"[材料,11593-巫骨",
"[材料,11594-蛇神之羽",
"[材料,11595-苔藓球",
"[材料,11596-星光粉尘",
"[材料,11597-雨林之眼",
"[材料,11598-草木灰",
"[食物,11599-香蕉",
"[食物,11600-星光香蕉",
"[材料,11601-雨林之芯碎片",
"[材料,11602-豹皮",
"［符文］11603-初级攻击符文",
"［符文］11604-中级攻击符文",
"［符文］11605-高级攻击符文",
"［符文］11606-初级防御符文",
"［符文］11607-中级防御符文",
"［符文］11608-高级防御符文",
"［符文］11609-初级效率符文",
"［符文］11610-中级效率符文",
"［符文］11611-高级效率符文",
"［符文］11603-符文鉴定石",
"［创造锤］11613-石质创造锤",
"［创造锤］11614-黄铜创造锤",
"［创造锤］11615-铸铁创造锤",
"［创造锤］11616-钛金创造锤",
"［水壶］1617-花洒",
"［符文］11618-初级攻击符文宝石",
"［符文］11619-中级攻击符文宝石",
"［符文］11620-高级攻击符文宝石",
"［符文］11621-初级防御符文宝石",
"［符文］11622-中级防御符文宝石",
"［符文］11623-高级防御符文宝石",
"［符文］11624-初级效率符文宝石",
"［符文］11625-中级效率符文宝石",
"［符文］11626-高级效率符文宝石",
"[材料,11627-尖锐的石头",
"［水壶］11628-花洒",
"[材料,11800-变异卷轴",
"[材料,11801-火之卷轴",
"[材料,11802-混乱卷轴",
"[材料,11803-书本",
"[材料,11804-用过的信纸",
"[材料,11805-空白卷轴",
"[工具,11806-信纸",
"[材料,11807-魔力卷轴",
"[电路,11809-指令芯片",
"[工具,11810-坐骑的鞍",
"[材料,11811-Bgm1",
"[材料,11812-Bgm2",
"[材料,11813-Bgm3",
"[材料,11814-Bgm4",
"[材料,11815-Bgm5",
"[材料,11816-Bgm6",
"[材料,11817-Bgm7",
"[材料,11818-Bgm8",
"[材料,11819-Bgm9",
"[材料,11820-Bgm10",
"[材料,11821-Bgm11",
"[材料,11822-Bgm12",
"[工具,11823-一袋砂土",
"[武器,12001-木棒",
"[武器,12002-石矛",
"[武器,12003-短剑",
"[武器,12004-突刺长枪",
"[武器,12005-能量剑",
"[武器,12006-喷射钩爪",
"[武器,12007-激光武器",
"[武器,12008-喷射塞子",
"[武器,12009-收割者",
"[武器,12010-钛金战锤",
"[功能,12011-全息投影装置",
"[武器,12050-木制短弓",
--注：铸铁短弓
"[武器,12051-石箭",
"[材料,12052-小鸡蛋",
"[材料,12053-企鹅蛋",
"[武器,12054-小雪球",
"[武器,12056-龙骨弓",
"[武器,12057-圣诞小雪球",
"[武器,12058-红色福袋",
"[食物,12059-汤圆",
"[武器,12060-紫色福袋",
--装备：〈不包括披风〉
"精铁→铸铁",
"闪金→钛金",
"新加入黄铜",
"[装备,12201-皮头盔",
"[装备,12202-皮胸甲",
"[装备,12203-皮护腿",
"[装备,12204-皮靴子",
"[装备,12205-皮披风",
"[装备,12206-镶金披风",
"[装备,12207-镶钻披风",
"[装备,12208-蓝晶披风",
"[装备,12209-精铁披风",
"[装备,12210-熔岩披风",
"[装备,12211-链甲头盔",
"[装备,12212-链甲胸甲",
"[装备,12213-链甲护腿",
"[装备,12214-链甲靴子",
"[装备,12215-蓝晶披风",
"[装备,12216-黄铜头盔",
"[装备,12217-黄铜胸甲",
"[装备,12218-黄铜护腿",
"[装备,12219-黄铜靴子",
"[装备,12221-铸铁头盔",
"[装备,12222-铸铁胸甲",
"[装备,12223-铸铁护腿",
"[装备,12224-铸铁靴子",
"[装备,12225-铸铁披风",
"[装备,12226-中式头盔",
"[装备,12227-中式胸甲",
"[装备,12228-中式护腿",
"[装备,12229-中式靴子",
"[装备,12230-佩刀",
"[装备,12231-钛金头盔",
"[装备,12232-钛金胸甲",
"[装备,12233-钛金护腿",
"[装备,12234-钛金靴子",
"[装备,12235-闪金披风",
"[武器,12240-小彩蛋",
"[装备,12241-蓝钻头盔",
"[装备,12242-蓝钻胸甲",
"[装备,12243-蓝钻护腿",
"[装备,12244-蓝钻靴子",
"[装备,12245-钻披风",
"[装备,12246-野人面具",
"[武器,12247-彩弹枪",
"[武器,12248-彩蛋",
"[武器,12249-彩弹枪子弹",
"[装备,12250-铁坐骑铠甲",
"[装备,12251-金坐骑铠甲",
"[装备,12252-钻坐骑铠甲",
"[装备,12253-火箭背包",
"[装备,12254-迷你披风",
"[装备,12255-4399披风",
"[装备,12256-阿里游戏披风",
"[装备,12257-华为披风",
"[装备,12258-百度披风",
"[装备,12259-魅族披风",
"[装备,12260-小米披风",
"[装备,12261-oppo披风",
"[装备,12262-360披风",
"[装备,12263-腾讯披风",
"[装备,12264-酷狗披风",
"[装备,12265-金立披风",
"[装备,12266-vivo披风",
"[装备,12267-乐视披风",
"[装备,12268-庆典披风",
"[装备,12269-祥瑞披风",
"[装备,12270-新春披风",
"[装备,12271-坐骑鞍-冲刺",
"[装备,12272-坐骑项圈-踏水",
"[装备,12273-坐骑鞍-超跳",
"[装备,12274-坐骑项圈-滑翔",
"[装备,12275-氧气背包",
"[装备,12276-氧气面罩",
"[装备,12277-防火背包",
"[材料,12278-雀莺羽毛",
"[装备,12279-绵绵披风",
"[武器,12280-大爆竹",
"[武器,12281-弹弓",
"[武器,12282-石子",
"[武器,12283-弩",
"[武器,12284-火箭筒",
"[武器,12285-火箭弹",
"[武器,12286-金色福袋",
"[武器,12287-泡泡球",
"[武器,12288-吹箭筒",
"[武器,12289-蜂刺飞镖",
"[武器,12290-荧光球",
"[武器,12291-脉冲弓",
"[武器,12292-脉冲箭",
"[武器,12293-重力拳套",
"[武器,12294-冲击枪",
"[武器,12295-钢珠",
"[物理,12296-桌球",
"[物理,12297-排球",
"[物理,12298-木箱子",
"[武器,12299-无畏导弹",
"[武器,12300-星星弹",
"[食物,12499-疾跑烤鸡",
"[食物,12497-烤糊的肉",
"[食物,12498-夜视炮子",
"[食物,12500-野果",
"[食物,12501-水果拼盘",
"[食物,12502-小麦面包",
"[食物,12503-松果",
"[食物,12504-蜂巢碎片",
"[食物,12505-凉拌野萝卜",
"[食物,12506-海葵鱼",
"[食物,12507-饼干",
"[食物,12508-方西瓜片",
"[食物,12509-瓶装牛奶",
"[食物,12510-蘑菇汤",
--注小鸡炖蘑菇
"[食物,12511-瓶装蜂蜜",
"[食物,12512-烤土豆",
"[食物,12513-毒土豆",
"[食物,12514-毒河豚",
"[食物,12515-方南瓜饼",
"[食物,12516-生牛排",
"[食物,12517-烤牛排",
"[食物,12518-生鸡腿",
"[食物,12519-烤鸡腿",
"[食物,12520-鲜鱼",
"[食物,12521-烤鱼",
"[食物,12522-生猪肉",
"[食物,12523-熟猪肉",
"[食物,12524-三文鱼",
"[食物,12525-烤三文鱼",
"[食物,12526-奇怪的肘子",
"[食物,12527-蜘蛛腿",
"[食物,12528-一碗生米饭",
"[食物,12529-一碗熟米饭",
"[食物,12530-生羊腿",
"[食物,12531-烤羊腿",
"[食物,12533-[其他,已废弃",
"[食物,12540-长条面包",
"[食物,12541-烤薯条",
"[食物,12542-蔬菜煲",
"[食物,12543-烤全鸡",
--注：烤鸡全家桶
"[食物,12544-牛肉汉堡",
"[食物,12545-羊肉煲",
"[食物,12546-火腿",
"[食物,12547-异味火腿",
"[食物,12548-‘蟹棒’火腿",
"[食物,12549-浓缩牛奶糖",
"[食物,12550-香溢面包",
"[食物,12551-香溢薯条",
"[食物,12552-香溢方南瓜派",
"[食物,12553-香溢饼干",
"[食物,12554-香溢蔬菜煲",
"[食物,12555-香溢野萝卜",
"[食物,12556-香溢西瓜汁",
"[食物,12557-香溢水果拼盘",
"[食物,12558-香溢烤鸡",
"[食物,12559-香溢牛堡",
"[食物,12560-香溢羊煲",
"[食物,12561-香溢火腿",
"[食物,12562-香溢异味腿",
"[食物,12563-香溢‘蟹棒’腿",
"[食物,12564-元旦饺子",
"[食物,12565-怪味的糖果",
"[食物,12566-坏掉的饺子",
"[食物,12567-新春饺子",
"[食物,12568-年糕",
"[食物,12569-黑馅元宵",
"[食物,12570-紫馅元宵",
"[食物,12571-黄馅元宵",
"[食物,12572-野果汁",
"[食物,12573-气泡果汁",
"[食物,12574-恶魔果汁",
"[食物,12575-粽子",
"[食物,12576-泡泡糖",
"[食物,12577-野萝卜大餐",
"[材料,12578-牛角",
"[工具,12579-号角",
"[工具,12580-狗哨",
"[食物,12581-‘蟹棒’",
"[食物,12582-氧气豆",
"[食物,12583-氧气果",
"[食物,12584-星光孢子",
"[食物,12585-变异小蘑菇",
"[食物,12586-变异小红菇",
"[武器,12587-变蛋枪",
"[武器,12588-变蛋枪子弹",
"[武器,12589-荧光弹弓",
"[武器,12590-荧光弹",
"[武器,12591-荧光球",
"[功能,12594-急救包",
"[其他,12595-野人纪念品",
"[其他,12596-猎手纪念品",
"[其他,12597-萌宝纪念品",
"[其他,12598-纪念牌",
"[功能,12599-巫术骨锤",
"[材料,12600-棉花",
"[食物,12601-桃子",
"[食物,12602-球球果",
"[食物,12603-核桃",
"[食物,12604-白杨果",
"[材料,12605-焱焱蟹壳",
"[食物,12715-红藻力量药剂",
"[食物,12716-深海呼吸药剂",
"[烟花,12750-开心烟花",
"[烟花,12751-好运烟花",
"[烟花,12752-活力烟花",
"[烟花,12781-彩带烟花",
"[其他,12800-附魔配方-人类猎手",
"[其他,12801-附魔配方-击飞",
"[其他,12802-附魔配方-多重攻击",
"[其他,12803-附魔配方-吸血",
"[其他,12804-附魔配方-退击防御",
"[其他,12805-附魔配方-虚弱",
"[其他,12806-附魔配方-远程吸血",
"[其他,12807-附魔配方-冷冻",
"[其他,12808-附魔配方-暗保护",
"[工具,12820-篮球服",
"[工具,12821-足球服",
"[装备,12822-冲天炮",
"[武器,12823-十字大炸弹",
"[武器,12824-十字小炸弹",
"[武器,12825-单向大炸弹",
"[武器,12826-单向小炸弹",
"[烟花,12827-空气气球",
"[烟花,12828-彩色气球",
"[烟花,12829-手持烟花",
"[烟花,12830-孔明灯",
"[烟花,12831-小星星烟花",
"[烟花,12832-大星星烟花",
"[烟花,12833-晴雨烟花",
"[烟花,12834-昼夜烟花",
"[烟花,12835-禁怪烟花",
"[烟花,12836-红色新年烟花",
"[烟花,12837-紫色新年烟花",
"[烟花,12838-绿色新年烟花",
"[其他,12839-节日福袋",
"[仓库,12840-新春礼包",
"[仓库,12841-春节礼包",
"[仓库,12842-元旦大礼包",
"[仓库,12843-万圣节狂欢礼包",
"[仓库,12844-万圣节欢乐礼包",
"[仓库,12845-暑假大礼包",
"[仓库,12846-暑假大礼包",
"[仓库,12847-迷你大礼包",
"[仓库,12848-迷你大礼包",
"[仓库,12849-开学大礼包",
"[仓库,12850-新春礼包",
"[仓库,12851-欢乐礼盒",
"[仓库,12852-春节红包",
"[仓库,12853-微信专属礼包",
"[仓库,12854-微信专属官版礼包",
"[仓库,12855-惊喜礼包",
"[仓库,12856-改名卡",
"[仓库,12857-星星福袋",
"[仓库,12858-回归礼包",
"[仓库,12900-新春礼包1",
"[仓库,12901-新春礼包2",
"[仓库,12902-新春礼包3",
"[仓库,12903-新春礼包",
"[仓库,12904-新春礼包",
"[仓库,12905-新春礼包",
"[仓库,12906-新春礼包",
"[仓库,12907-新春礼包",
"[仓库,12908-新春礼包",
"[仓库,12909-新春礼包",
"[仓库,12910-新春礼包",
"[仓库,12911-新春礼包",
"[仓库,12912-新春礼包",
"[仓库,12913-新春礼包",
"[仓库,12914-新春礼包",
"[仓库,12915-国庆独家礼盒",
"[仓库,12916-国庆特权礼盒",
"[仓库,12917-国庆新手礼盒",
"[仓库,12918-国庆大礼盒",
"[仓库,12919-国庆礼盒",
"[仓库,12920-勇敢的少年礼盒",
"[仓库,12921-刻苦的少年礼盒",
"[仓库,12922-荣耀的少年礼盒",
"[仓库,12923-世界捍卫者礼盒",
"[仓库,12924-积极屠龙者礼盒",
"[仓库,12925-世界建筑师礼盒",
"[仓库,12926-画龙点睛礼盒",
"[仓库,12927-顶级建筑师礼盒",
"[仓库,12928-一袋迷你豆",
"[仓库,12929-圣诞豪华礼包",
"[仓库,12930-双旦礼盒",
"[仓库,12948-原始人礼包",
"[仓库,12949-迷你大礼包",
"[碎片,12950-原始护腕",
"[碎片,12951-骨头发簪",
"[碎片,12952-骨头项链",
"[碎片,12953-羽毛头饰",
"[碎片,12954-熊牌炸弹",
"[碎片,12955-贝雷帽",
"[碎片,12956-热辣唇印",
"[碎片,12957-蝴蝶结",
"[碎片,12958-护目镜",
"[碎片,12959-探险家帽",
"[碎片,12960-装扮卡片",
"[仓库,12961-装扮礼封",
"[仓库,12962-蛋蛋福袋",
"[其他,12963-星星礼盒",
"[其他,12964-传送卷轴",
"[仓库,12965-一叠传送卷轴",
"[仓库,12966-迷你阳光礼包",
"[仓库,12967-迷你粉丝礼包",
"[仓库,12968-新游预约豪华礼包",
"[仓库,12969-圣诞大礼包",
"[仓库,12970-圣诞礼包",
"[仓库,12971-微信公众号专属礼包",
"[仓库,12972-玩家粉丝贡献成就礼包Lv1",
"[仓库,12973-玩家粉丝贡献成就礼包Lv2",
"[仓库,12974-玩家粉丝贡献成就礼包Lv3",
"[仓库,12975-玩家粉丝贡献成就礼包Lv4",
"[仓库,12976-IOS限免大礼包",
"[仓库,12977-新春礼包",
"[仓库,12978-新春大礼包",
"[仓库,12979-新春豪华礼包",
"[仓库,12980-新春迷你豆",
"[一天皮肤,12981-胖哒(1天)",
"[仓库,12982-元宵礼包",
"[仓库,12983-新年礼包",
"[仓库,12984-新年大礼包",
"[仓库,12985-新年豪华礼包",
"[仓库,12986-爱心礼包",
"[仓库,12987-爱心大礼包",
"[仓库,12988-装扮体验礼包",
"[一天皮肤,12989-慕容笑天(1天)",
"[一天皮肤,12990-羽姬(1天)",
"[一天皮肤,12991-荒原猎人雪诺(1天)",
"[一天皮肤,12992-叮叮当(1天)",
"[一天皮肤,12993-德古拉六世(1天)",
"[一天皮肤,12994-墨家小飞(1天)",
"[一天皮肤,12995-安妮(1天)",
"[一天皮肤,12996-乔治(1天)",
"[一天皮肤,12997-琉璃酱(1天)",
"[一天皮肤,12998-迷斯拉(1天)",
"[一天皮肤,12999-兔美美(1天)",
"[一天皮肤,13000-齐天小圣(1天)",
"[一天皮肤,13001-花小楼(1天)",
"[一天皮肤,13002-程锦衣(1天)",
"[一天皮肤,13003-甜心玛丽(1天)",
"[一天皮肤,13004-黑帽子船长蒂奇(1天)",
"[一天皮肤,13005-西部玫瑰露西(1天)",
"[一天皮肤,13006-啦啦队长克莱尔(1天)",
"[一天皮肤,13007-篮球队长卢卡斯(1天)",
"[一天皮肤,13008-西部警长乔伊(1天)",
"[一天皮肤,13009-月无双(1天)",
"[一天皮肤,13010-莉莉丝(1天)",
"[生物蛋,13013-圣蛋",
"[生物蛋,13014-元蛋",
"[生物蛋,13015-财神蛋",
"[生物蛋,13016-周年蛋",
"[生物蛋,13017-六一蛋",
"[永久皮肤,13021-胖哒(永久)",
"[永久皮肤,13022-齐天小圣(永久)",
"[永久皮肤,13023-兔美美(永久)",
"[永久皮肤,13024-迷斯拉(永久)",
"[永久皮肤,13025-琉璃酱(永久)",
"[永久皮肤,13026-乔治(永久)",
"[永久皮肤,13027-安妮(永久)",
"[永久皮肤,13028-墨家小飞(永久)",
"[永久皮肤,13029-德古拉六世(永久)",
"[永久皮肤,13030-叮叮当(永久)",
"[永久皮肤,13031-荒原猎人雪诺(永久)",
"[永久皮肤,13032-羽姬(永久)",
"[永久皮肤,13033-慕容笑天(永久)",
"[永久皮肤,13034-西部警长乔伊(永久)",
"[永久皮肤,13035-篮球队长卢卡斯(永久)",
"[永久皮肤,13036-啦啦队长克莱尔(永久)",
"[永久皮肤,13037-西部玫瑰露西(永久)",
"[永久皮肤,13038-黑帽子船长蒂奇(永久)",
"[永久皮肤,13039-甜心玛丽(永久)",
"[永久皮肤,13040-程锦衣(永久)",
"[永久皮肤,13041-花小楼(永久)",
"[永久皮肤,13042-莉莉丝(永久)",
"[永久皮肤,13043-月无双(永久)",
"[生物蛋,13100-生物模型",
"[生物蛋,13101-野人",
"[生物蛋,13102-野萌宝",
"[生物蛋,13103-萌眼咻咻",
"[生物蛋,13105-野人猎手",
"[生物蛋,13107-大眼蛛",
"[生物蛋,13108-地穴蜘蛛",
"[生物蛋,13109-爆爆蛋",
"[生物蛋,13110-萌眼叮叮",
"[生物蛋,13111-萌眼咚咚",
"[生物蛋,13117-史萌萌",
"[生物蛋,13120-屠夫",
"[生物蛋,13121-稻草人",
"[生物蛋,13122-恶霸屠夫",
"[生物蛋,13123-出气外星人",
"[生物蛋,13130-熔岩巨人",
"[生物蛋,13131-硫磺弓手",
"[生物蛋,13400-鸡",
"[生物蛋,13401-牛",
"[生物蛋,13402-猪",
"[生物蛋,13403-羊",
"[生物蛋,13404-马",
"[生物蛋,13407-狼",
"[生物蛋,13408-狗",
"[生物蛋,13409-企鹅",
"[生物蛋,13411-野生鸵鸟",
"[生物蛋,13412-野生冰熊",
"[生物蛋,13413-野生速龙",
"[生物蛋,13414-野生团子",
"[生物蛋,13415-团子",
"[生物蛋,13416-野生熊猫",
"[生物蛋,13417-熊猫",
"[生物蛋,13418-蜜蜂",
"[生物蛋,13419-萤火虫",
"[物理,13420-足球",
"[生物蛋,13421-飞鸡",
"[生物蛋,13423-战斗鸡",
"[生物蛋,13424-尖叫鸡",
"[物理,13425-篮球",

"［生物］13426-驯服的牛",
"［生物］13427-驯服的鸵鸟",
"［生物］13428-驯服的冰熊",
"［生物］13429-驯服的速龙",
"［生物］13430-驯服的焱焱蟹",
"［生物］13431-驯服的雀莺",
"［生物］13432-驯服的狗",
"［生物］13433-驯服的猴子",
"［生物］13434-驯服的战斗鸡",
"［生物］13435-驯服的飞鸡",
"［生物］13436-驯服的叮叮",
"［生物］13437-驯服的咚咚",
"[生物,13438-驯服的当当",
--野人伙伴
"[生物蛋,13439-野人伙伴",
"[生物蛋,13440-野人伙伴",
"[生物蛋,13441-野人伙伴",
"近战→远程→助手",
"［生物］13442-驯服的团子",
"[生物蛋,13501-地心人",
"[生物蛋,13502-远古黑龙",
"[生物蛋,13503-熔岩黑龙",
"[生物蛋,13504-混乱黑龙",
"[生物蛋,13505-年兽蛋",
"[生物蛋,13508-小恶魔蛋",
"[生物蛋,13600-灯笼鱼",
"[生物蛋,13601-乌贼",
"[生物蛋,13602-深海鱼",
"[生物蛋,13603-巨型咕噜水母",
"[生物蛋,13604-白色呆呆鱼",
"[生物蛋,13605-橙色呆呆鱼",
"[生物蛋,13606-洋红呆呆鱼",
"[生物蛋,13607-淡蓝呆呆鱼",
"[生物蛋,13608-黄色呆呆鱼",
"[生物蛋,13609-黄绿呆呆鱼",
"[生物蛋,13610-粉色呆呆鱼",
"[生物蛋,13611-灰色呆呆鱼",
"[生物蛋,13612-淡灰呆呆鱼",
"[生物蛋,13613-青色呆呆鱼",
"[生物蛋,13614-紫色呆呆鱼",
"[生物蛋,13615-蓝色呆呆鱼",
"[生物蛋,13616-棕色呆呆鱼",
"[生物蛋,13617-绿色呆呆鱼",
"[生物蛋,13618-红色呆呆鱼",
"[生物蛋,13619-黑色呆呆鱼",
"[其他,13620-备份",
"[乘坐,13800-过山车厢",
"[乘坐,13802-过山车头",
"[乘坐,13803-火箭",
"[乘坐,13804-炸药车",
"[乘坐,13806-龙舟",
"[乘坐,13807-小木船",
"[装饰,13808-荷灯",
"[生物蛋,13850-灯笼鱼卵",
"[生物蛋,13851-乌贼卵",
"[生物蛋,13852-深海鱼卵",
"[生物蛋,13853-巨型咕噜水母卵",
"[生物蛋,13854-白色呆呆鱼苗",
"[生物蛋,13855-橙色呆呆鱼苗",
"[生物蛋,13856-洋红呆呆鱼苗",
"[生物蛋,13857-淡蓝呆呆鱼苗",
"[生物蛋,13858-黄色呆呆鱼苗",
"[生物蛋,13859-黄绿呆呆鱼苗",
"[生物蛋,13860-粉色呆呆鱼苗",
"[生物蛋,13861-灰色呆呆鱼苗",
"[生物蛋,13862-淡灰呆呆鱼苗",
"[生物蛋,13863-青色呆呆鱼苗",
"[生物蛋,13864-紫色呆呆鱼苗",
"[生物蛋,13865-蓝色呆呆鱼苗",
"[生物蛋,13866-棕色呆呆鱼苗",
"[生物蛋,13867-绿色呆呆鱼苗",
"[生物蛋,13868-红色呆呆鱼苗",
"[生物蛋,13869-黑色呆呆鱼苗",
"[生物蛋,13870-野生猴子",
"[生物蛋,13872-豹子",
"[生物蛋,13877-野人祭司",
"[生物蛋,13881-焱焱蟹",
"[生物蛋,13882-雀莺",
"[生物蛋,13883-红薇蝶",
"[生物蛋,13884-兰青蝶",
"[生物蛋,13885-香粉蝶",
"[生物蛋,13886-向阳蝶",
"[生物蛋,13887-龙信蝶",
"[生物蛋,13888-舌钟蝶",
"[生物蛋,13889-符文怪",
"[其他,14000-成就测试图标",
"[其他,14001-星星",
"[图标,14100-10迷你币",
"[图标,14101-20迷你币",
"[图标,14102-50迷你币",
"[图标,14103-100迷你币",
"[图标,14104-200迷你币",
"[图标,14105-500迷你币",
"[图标,14106-1000迷你币",
"[图标,14107-5000迷你币",
"[武器,15000-冲锋枪",
"[武器,15001-左轮手枪",
"[武器,15002-牛仔左轮",
"[武器,15003-子弹",
"[武器,15004-狙击枪",
"[武器,15005-重机枪",
"[武器,15006-霰弹枪",
"[武器,15007-手雷1",
"[武器,15008-手雷2",
"[投射物,15050-投射物-野人猎手",
"[投射物,15051-投射物-硫磺弓手",
"[投射物,15052-投射物-小恶魔",
"[投射物,15053-投射物-野生团子",
"[投射物,15054-投射物-黑龙火球",
"[投射物,15055-投射物-黑龙熔岩石柱",
"[投射物,15056-投射物-黑龙熔岩球",
"[投射物,15057-投射物-黑龙混乱球",
"[投射物,15058-投射物-小外星人A",
"[投射物,15059-投射物-小外星人B",
"[投射物,15060-投射物-小外星人C",
"[投射物,15061-投射物-萌眼叮叮",
"[投射物,15062-投射物-萌眼咚咚",
"[投射物,15063-投射物-萌眼当当",
"[投射物,15064-投射物-萌眼叮咚",
"[投射物,15065-投射物-萌眼叮当",
"[投射物,15066-投射物-萌眼咚当",
"[投射物,15067-投射物-萌眼咻咻",
"[投射物,15068-投射物-混乱弓手",
"[投射物,15069-投射物-远程守卫",
"[投射物,15070-投射物-远程守卫",
"[武器,15500-平底锅",
"[武器,15501-冲锋枪子弹",
"[武器,15502-牛仔左轮子弹",
"[武器,15503-狙击枪子弹",
"[武器,15504-重机枪子弹",
"[武器,15506-圆球爆弹",
"[武器,15507-冰锥",
"[武器,15508-熔岩球",
"[其他,15509-击飞激光",
"[其他,15510-冰冻激光",
"[其他,15511-爆炸激光",
"[其他,15512-岩石海啸",
"[其他,15513-蓝色手臂技能",
"[其他,15514-白色手臂技能",
"[其他,15515-精英怪蓝色控制",
"[其他,15516-精英怪白色控制",
"[其他,15517-精英怪蓝色控制",
"[其他,15518-精英怪白色控制",
"[武器,15519-黑龙熔岩球",
"[武器,15520-黑龙混乱球",
"[其他,15521-摄像机",
"[物理,15522-长方体",
"[物理,15523-胶囊体(竖)",
"[物理,15524-球体",
"[物理,15525-中心长方体",
"[物理,15526-胶囊体(横)",
"[物理,15527-胶囊体(直)",
"[物理,15528-物理清除烟花",
"[武器,15529-物理清除枪",
"[武器,15530-物理清除弹",
"[物理,15531-车身方块",
"[物理,15533-转向轴承",
"[物理,15534-引擎",
"[物理,15535-驾驶座",
"[物理,15536-右前车轮",
"[物理,15537-左后车轮",
"[物理,15538-右后车轮",
"[投射物,15539-投射物-蜘蛛",
"[碎片,20000-楠木门-碎片",
"[碎片,20001-胡桃木门-碎片",
"[碎片,20002-白杨木门-碎片",
"[碎片,20003-金铁门-碎片",
"[碎片,20004-红杉木门-碎片",
"[碎片,20005-果木门-碎片",
"[碎片,20006-落叶松木门-碎片",
"[碎片,20007-木纹灯-碎片",
"[碎片,20008-白色玻璃灯-碎片",
"[碎片,20009-橙色玻璃灯-碎片",
"[碎片,20010-洋红玻璃灯-碎片",
"[碎片,20011-淡蓝玻璃灯-碎片",
"[碎片,20012-黄色玻璃灯-碎片",
"[碎片,20013-黄绿色玻璃灯-碎片",
"[碎片,20014-粉色玻璃灯-碎片",
"[碎片,20015-灰色玻璃灯-碎片",
"[碎片,20016-淡灰色玻璃灯-碎片",
"[碎片,20017-青色玻璃灯-碎片",
"[碎片,20018-紫色玻璃灯-碎片",
"[碎片,20019-蓝色玻璃灯-碎片",
"[碎片,20020-棕色玻璃灯-碎片",
"[碎片,20021-绿色玻璃灯-碎片",
"[碎片,20022-红色玻璃灯-碎片",
"[碎片,20023-黑色玻璃灯-碎片",
"[碎片,20024-强混凝土-碎片",
"[碎片,20025-强裂土-碎片",
"[碎片,20026-白色基石-碎片",
"[碎片,20027-坚冰-碎片",
"[碎片,20028-钢板-碎片",
"[人物碎片,20029-琉璃酱-碎片",
"[人物碎片,20030-墨家小飞-碎片",
"[坐骑碎片,20031-化石龙-碎片",
"[坐骑碎片,20032-小飞鼠-碎片",
"[坐骑碎片,20033-麒麟-碎片",
"[坐骑碎片,20034-陆行鸟-碎片",
"[人物碎片,20035-迷梭梭-碎片",
"[坐骑碎片,20036-小白象-碎片",
"[人物碎片,20037-安吉洛斯-碎片",
"[坐骑碎片,20038-小海豹-碎片",
"[碎片,20039-果木椅子-碎片",
"[碎片,20040-果木桌子-碎片",
"[碎片,20041-果木沙发-碎片",
"[碎片,20042-棕色壁炉-碎片",
"[碎片,20043-果木柜子-碎片",
"[碎片,20044-白杨椅子-碎片",
"[碎片,20045-白杨桌子-碎片",
"[碎片,20046-白杨沙发-碎片",
"[碎片,20047-白色壁炉-碎片",
"[碎片,20048-白杨柜子-碎片",
"[碎片,20049-松木椅子-碎片",
"[碎片,20050-松木桌子-碎片",
"[碎片,20051-松木沙发-碎片",
"[碎片,20052-黑色壁炉-碎片",
"[碎片,20053-松木柜子-碎片",
"[碎片,20054-精致木床-碎片",
"[碎片,20055-豪华木床-碎片",
"[碎片,20056-公主床-碎片",
"[碎片,20057-岩石留言板-碎片",
"[碎片,20058-钢铁留言板-碎片",
"[碎片,20059-熔岩留言板-碎片",
"[人物碎片,20060-乔治-碎片",
"[人物碎片,20061-安妮-碎片",
"[碎片,20062-大爆竹-碎片",
"[碎片,20063-弹弓-碎片",
"[碎片,20064-弩-碎片",
"[碎片,20065-火箭筒-碎片",
"[碎片,20066-木质字牌-碎片",
"[碎片,20067-石质字牌-碎片",
"[碎片,20068-铁制字牌-碎片",
"[碎片,20069-金制字牌-碎片",
"[碎片,20070-蓝钻字牌-碎片",
"[碎片,20071-熔岩字牌-碎片",
"[碎片,20072-灯笼-碎片",
"[碎片,20073-古典路灯-碎片",
"[碎片,20074-现代路灯-碎片",
"[碎片,20075-黑色铁围栏-碎片",
"[碎片,20076-白色铁围栏-碎片",
"[碎片,20077-小花盆-碎片",
"[碎片,20078-大花盆-碎片",
"[碎片,20079-蜡烛台-碎片",
"[碎片,20080-吊灯-碎片",
"[碎片,20081-典雅壁灯-碎片",
"[碎片,20082-精致壁灯-碎片",
"[碎片,20083-台灯-碎片",
"[碎片,20084-喷花烟花-碎片",
"[碎片,20085-春节窗花-福-碎片",
"[碎片,20086-春节窗花-禄-碎片",
"[碎片,20087-春节窗花-寿-碎片",
"[碎片,20088-春节窗花-喜-碎片",
"[碎片,20089-中式宫灯-碎片",
"[碎片,20090-红色陶花盆-碎片",
"[碎片,20091-绿色陶花盆-碎片",
"[碎片,20092-大瓷花盆-碎片",
"[碎片,20093-新春宫灯-碎片",
"[碎片,20094-火箭背包-碎片",
"[碎片,20095-孔明灯-碎片",
"[碎片,20096-荷灯-碎片",
"[碎片,20097-落叶松地板-碎片",
"[碎片,20098-红杉地板-碎片",
"[碎片,20099-沙砖砖-碎片",
"[碎片,20100-竖格釉面砖-碎片",
"[碎片,20101-四格釉面砖-碎片",
"[碎片,20102-不规则釉面砖-碎片",
"[碎片,20103-白杨木栅栏-碎片",
"[碎片,20104-石砖围栏-碎片",
"[碎片,20105-白杨木围栏-碎片",
"[碎片,20106-木栅栏-碎片",
"[碎片,20107-铁围栏-碎片",
"[碎片,20108-黄绿呆呆鱼-碎片",
"[碎片,20109-粉色呆呆鱼-碎片",
"[碎片,20110-灰色呆呆鱼-碎片",
"[碎片,20111-实验室门-碎片",
"[碎片,20112-镜冰-碎片",
"[碎片,20113-冰灯-碎片",
"[碎片,20114-花纹电石块-碎片",
"[碎片,20115-电石铁块-碎片",
"[碎片,20116-电石铁板-碎片",
"[碎片,20117-紫线铁块-碎片",
"[碎片,20118-厚铁板-碎片",
"[碎片,20119-镂空铁板-碎片",
"[碎片,20120-实验室灯-碎片",
"[碎片,20121-锈铁门-碎片",
"[碎片,20122-铁丝网-碎片",
"[碎片,20123-竖纹铁板-碎片",
"[碎片,20124-锈铁板-碎片",
"[碎片,20125-条纹锈铁板-碎片",
"[碎片,20126-镂空锈铁板-碎片",
"[碎片,20127-电石锈铁块-碎片",
"[碎片,20128-荧光灯-碎片",
"[碎片,20129-花纹铁块-碎片",
"[碎片,20130-旧铁块-碎片",
"[碎片,20131-荧光弹弓-碎片",
"[碎片,20132-圆球爆弹-碎片",
"[碎片,20133-冰锥-碎片",
"[碎片,20134-熔岩球-碎片",
"[碎片,20135-脉冲弓-碎片",
"[碎片,20136-黑龙熔岩球-碎片",
"[碎片,20137-黑龙混乱球",
"[碎片,20138-反射镜-碎片",
"[碎片,20139-雪梅屏风-碎片",
"[碎片,20140-红烛灯-碎片",
"[碎片,20141-球铰链-碎片",
"[碎片,20142-铰链方块-碎片",
"[碎片,20143-机械爪-碎片",
"[碎片,20144-液压臂-碎片",
"[碎片,20145-避震器-碎片",
"[碎片,20146-升降铰绳-碎片",
"[碎片,20147-春节窗花-牛-碎片",
"[碎片,20148-20153敦煌系列碎片",
"[头像框永久,20201-头像框-单身汪",
"[头像框永久,20202-头像框-莉莉丝",
"[头像框永久,20203-头像框-鬼斧神工",
"[头像框永久,20204-头像框-绘影大师",
"[头像框永久,20205-头像框-建筑大师",
"[头像框永久,20206-头像框-漫画大师",
"[头像框永久,20207-头像框-明日之星",
"[头像框永久,20208-头像框-写作大师",
"[头像框永久,20209-头像框-宣传委员",
"[头像框永久,20210-头像框-迷你主播",
"[头像框永久,20211-头像框-工坊管家",
"[头像框永久,20212-头像框-志愿者",
"[头像框永久,20213-头像框-2017",
"[头像框永久,20214-头像框-二郎神",
"[头像框永久,20215-头像框-招财猫",
"[头像框永久,20216-头像框-环保筑梦师",
"[头像框永久,20217-头像框-迷你世界2周年",
"[头像框永久,20218-头像框-小船长",
"[头像框永久,20219-头像框-劳动节",
"[头像框永久,20220-头像框-鉴赏家",
"[头像框永久,20221-头像框-儿童节",
"[头像框永久,20222-头像框-清凉一夏",
"[头像框永久,20223-头像框-花好月圆",
"[头像框永久,20224-头像框-侠客之心",
"[头像框永久,20225-头像框-护眼行动",
"[头像框永久,20226-头像框-小恶魔",
"[头像框永久,20227-头像框-圆桌骑士",
"[头像框永久,20228-头像框-圣诞节",
"[头像框永久,20229-头像框-2018",
"[头像框永久,20230-头像框-赛事成就",
"[头像框永久,20231-头像框-斩浪",
"[头像框永久,20232-头像框-迷你世界3周年",
"[头像框永久,20233-头像框-世界守护计划专属",
"[头像框永久,20234-头像框-初级大神",
"[头像框永久,20235-头像框-中级大神",
"[头像框永久,20236-头像框-高级大神",
"[头像框永久,20237-头像框-复活节",
"[头像框永久,20238-头像框-友谊之手",
"[头像框永久,20239-头像框-端午节",
"[头像框永久,20240-头像框-读书万卷",
"[头像框永久,20241-头像框-东部联盟",
"[头像框永久,20242-头像框-西部联盟",
"[头像框永久,20243-头像框-迷你编程",
"[头像框永久,20244-头像框-920全民创造节",
"[头像框永久,20245-头像框-乔克",
"[头像框永久,20246-头像框-圣诞心意",
"[头像框永久,20247-头像框-2019年度头像框",
"[头像框永久,20248-头像框-慕斯",
"[头像框永久,20249-头像框-金鼠贺岁",
"[头像框永久,20250-头像框-龙凤呈祥",
"[头像框永久,20251-头像框-喜团团",
"[头像框永久,20252-头像框-雪豹守护者",
"[头像框永久,20253-头像框-迷你4周年",
"[头像框永久,20254-头像框-齐天小圣",
"[头像框永久,20255-头像框-繁星共创营",
"[头像框永久,20256-头像框-甜棕拥护者",
"[头像框永久,20257-头像框-咸棕拥护者",
"[头像框永久,20258-头像框-阳光守护",
"[头像框永久,20259-玩法大作战专属",
"[头像框永久,20260-抖音专属头像框",
"[头像框永久,20261-玉兔心愿",
"[头像框永久,20262-QQ版专属头像框",
"[头像框永久,20263-慧眼达人",
"[头像框永久,20264-2020",
"[头像框永久,20265-2020",
"[头像框永久,20266-冬之声",
"[头像框永久,20267-梅之影",
"[头像框永久,20268-圣诞雪松",
"[头像框永久,20269-雨林征服者",
"[头像框永久,20270-金牛贺岁",
"[头像框永久,20271-官版专属头像框",
"[头像框永久,20272-星光同在",
"[头像框永久,20273-天籁之窗",
"[头像框永久,20274-2020人气作者",
"[头像框永久,20275-2020新锐作者",
"[头像框永久,20276-2020优秀作者",
"[头像框永久,20277-金符星球",
"[头像框永久,20278-蓝电石星球",
"[头像框永久,20279-梦幻星球",
"[头像框永久,20280-海焰星球",
"[头像框永久,20281-绮丽星球",
"[头像框永久,20282-守望敦煌",
"[头像框永久,20283-迷你世界5周年",
"[头像框永久,20284-可爱猫咪",
"[头像框永久,20285-秋田&柴犬",
"[头像框永久,20286-福气猫头鹰",
"[头像框永久,20287-憨憨熊猫",
"[头像框永久,20288-智慧狐狸",
"[头像框永久,20289-花之声",
"[头像框永久,20290-复苏之声",
"[头像框永久,20291-踏青出游",
"[头像框永久,20292-妙妙",
"[头像框30天,20301-头像框-单身汪(30天)",
"[头像框30天,20302-头像框-莉莉丝(30天)",
"[头像框30天,20303-头像框-鬼斧神工(30天)",
"[头像框30天,20304-头像框-绘影大师(30天)",
"[头像框30天,20305-头像框-建筑大师(30天)",
"[头像框30天,20306-头像框-漫画大师(30天)",
"[头像框30天,20307-头像框-明日之星(30天)",
"[头像框30天,20308-头像框-写作大师(30天)",
"[头像框30天,20309-头像框-宣传委员(30天)",
"[头像框30天,20310-头像框-迷你主播(30天)",
"[头像框30天,20311-头像框-工坊管家(30天)",
"[头像框30天,20312-头像框-志愿者(30天)",
"[头像框30天,20313-头像框-2017(30天)",
"[头像框30天,20314-头像框-二郎神(30天)",
"[头像框30天,20315-头像框-招财猫(30天)",
"[头像框30天,20316-头像框-环保筑梦师(30天)",
"[头像框30天,20317-头像框-迷你世界2周年(30天)",
"[头像框30天,20318-头像框-小船长(30天)",
"[头像框30天,20319-头像框-劳动节(30天)",
"[头像框30天,20320-头像框-鉴赏家(30天)",
"[头像框30天,20321-头像框-儿童节(30天)",
"[头像框30天,20322-头像框-清凉一夏(30天)",
"[头像框30天,20323-头像框-花好月圆(30天)",
"[头像框30天,20324-头像框-侠客之心(30天)",
"[头像框30天,20325-头像框-护眼行动(30天)",
"[头像框30天,20326-头像框-小恶魔(30天)",
"[头像框30天,20327-头像框-圆桌骑士(30天)",
"[头像框30天,20328-头像框-圣诞节(30天)",
"[头像框30天,20329-头像框-2018(30天)",
"[头像框30天,20330-头像框-赛事成就(30天)",
"[头像框30天,20331-头像框-斩浪(30天)",
"[头像框30天,20332-头像框-迷你世界3周年(30天)",
"[头像框30天,20333-头像框-世界守护计划专属(30天)",
"[头像框30天,20334-头像框-初级大神(30天)",
"[头像框30天,20335-头像框-中级大神(30天)",
"[头像框30天,20336-头像框-高级大神(30天)",
"[头像框30天,20337-头像框-复活节(30天)",
"[头像框30天,20338-头像框-友谊之手(30天)",
"[头像框30天,20339-头像框-端午节(30天)",
"[头像框30天,20340-头像框-读书万卷(30天)",
"[头像框30天,20341-头像框-东部联盟(30天)",
"[头像框30天,20342-头像框-西部联盟(30天)",
"[头像框30天,20343-头像框-迷你编程(30天)",
"[头像框30天,20344-头像框-920全民创造节(30天)",
"[头像框30天,20345-头像框-乔克(30天)",
"[头像框30天,20346-头像框-圣诞心意(30天)",
"[头像框30天,20347-头像框-2019年度头像框(30天)",
"[头像框30天,20348-头像框-慕斯(30天)",
"[头像框30天,20349-头像框-金鼠贺岁(30天)",
"[头像框30天,20350-头像框-龙凤呈祥(30天)",
"[头像框30天,20351-头像框-喜团团(30天)",
"[头像框30天,20352-头像框-雪豹守护者(30天)",
"[头像框30天,20353-头像框-迷你4周年(30天)",
"[头像框30天,20354-头像框-齐天小圣(30天)",
"[头像框30天,20355-头像框-繁星共创营(30天)",
"[头像框30天,20356-头像框-甜棕拥护者(30天)",
"[头像框30天,20357-头像框-咸棕拥护者(30天)",
"[头像框30天,20358-头像框-阳光守护(30天)",
"[头像框30天,20359-玩法大作战专属(30天)",
"[头像框30天,20360-抖音专属头像框(30天)",
"[头像框30天,20361-玉兔心愿(30天)",
"[头像框30天,20362-QQ版专属头像框(30天)",
"[头像框30天,20363-慧眼达人(30天)",
"[头像框30天,20364-2030(30天)",
"[头像框30天,20365-2030(30天)",
"[头像框30天,20366-冬之声(30天)",
"[头像框30天,20367-梅之影(30天)",
"[头像框30天,20368-圣诞雪松(30天)",
"[头像框30天,20369-雨林征服者(30天)",
"[头像框30天,20370-金牛贺岁(30天)",
"[头像框30天,20371-官版专属头像框(30天)",
"[头像框30天,20372-星光同在(30天)",
"[头像框30天,20373-天籁之窗(30天)",
"[头像框30天,20274-2020人气作者",
"[头像框30天,20275-2020新锐作者",
"[头像框30天,20276-2020优秀作者",
"[头像框30天,20277-金符星球",
"[头像框30天,20278-蓝电石星球",
"[头像框30天,20279-梦幻星球",
"[头像框30天,20280-海焰星球",
"[头像框30天,20281-绮丽星球",
"[头像框30天,20282-守望敦煌",
"[头像框30天,20283-迷你世界5周年",
"[头像框30天,20284-可爱猫咪",
"[头像框30天,20285-秋田&柴犬",
"[头像框30天,20286-福气猫头鹰",
"[头像框30天,20287-憨憨熊猫",
"[头像框30天,20288-智慧狐狸",
"[头像框30天,20289-花之声",
"[头像框30天,20290-复苏之声",
"[头像框30天,20291-踏青出游",
"[永久皮肤,20401-叶小龙(永久)",
"[永久皮肤,20402-二郎神(永久)",
"[永久皮肤,20403-余小乐(永久)",
"[永久皮肤,20404-迷梭梭(永久)",
"[永久皮肤,20405-幻音(永久)",
"[永久皮肤,20406-幻-零式(永久)",
"[永久皮肤,20407-柳仙儿(永久)",
"[永久皮肤,20408-帕普奇(永久)",
"[永久皮肤,20409-米娜(永久)",
"[永久皮肤,20410-雪灵(永久)",
"[永久皮肤,20411-嘟嘟啵啵(永久)",
"[永久皮肤,20412-嘟嘟(永久)",
"[永久皮肤,20413-啵啵(永久)",
"[永久皮肤,20414-梦歌(永久)",
"[永久皮肤,20415-斩浪(永久)",
"[永久皮肤,20416-安吉洛斯(永久)",
"[永久皮肤,20417-暗星(永久)",
"[永久皮肤,20418-兰斯洛特(永久)",
"[永久皮肤,20419-喵小糖(永久)",
"[永久皮肤,20420-千兵卫(永久)",
"[永久皮肤,20421-星翼(永久)",
"[永久皮肤,20422-离(永久)",
"[永久皮肤,20423-黯(永久)",
"[永久皮肤,20424-啾啾(永久)",
"[永久皮肤,20425-华乐(永久)",
"[永久皮肤,20426-大毛(永久)",
"[永久皮肤,20427-乔克(永久)",
"[永久皮肤,20428-小艾(永久)",
"[永久皮肤,20429-擎天柱(永久)",
"[永久皮肤,20430-威震天(永久)",
"[永久皮肤,20431-慕斯(永久)",
"[永久皮肤,20432-金柚柚(永久)",
"[永久皮肤,20433-喜团团(永久)",
"[永久皮肤,20434-林千树(永久)",
"[永久皮肤,20435-大黄蜂(永久)",
"[永久皮肤,20436-花幽幽(永久)",
"[永久皮肤,20437-星灵波波(永久)",
"[永久皮肤,20438-雪球球(永久)",
"[永久皮肤,20439-爱丽丝(永久)",
"[永久皮肤,20440-甲贺忍蛙(永久)",
"[永久皮肤,20441-红蜘蛛(永久)",
"[永久皮肤,20442-热破(永久)",
"[永久皮肤,20443-惊破天(永久)",
"[永久皮肤,20444-全能玩家劳尔(永久)",
"[永久皮肤,20445-电玩少女铃音(永久)",
"[永久皮肤,20446-青弦(永久)",
"[永久皮肤,20447-紫悦女孩(永久)",
"[永久皮肤,20448-宇宙公主女孩(永久)",
"[永久皮肤,20449-柔柔女孩(永久)",
"[永久皮肤,20450-月亮公主女孩(永久)",
"[永久皮肤,20451-钢锁(永久)",
"[永久皮肤,20452-飞标(永久)",
"[永久皮肤,20453-嚎叫(永久)",
"[永久皮肤,20454-色彩旅行者达奇(永久)",
"[永久皮肤,20455-塔莉娅(永久)",
"[永久皮肤,20456-森林隐者巫塔(永久)",
"[永久皮肤,20458-碧琪女孩(永久)",
"[永久皮肤,20459-兔子先生拉比(永久)",
"[永久皮肤,20460-白夜女巫卡洛儿(永久)",
"[永久皮肤,20461-余小欢(永久)",
"[永久皮肤,20462-章小丸(永久)",
"[永久皮肤,20463-熊小吉(永久)",
"[永久皮肤,20464-星光熠熠(永久)",
"[永久皮肤,20465-云宝(永久)",
"[永久皮肤,20466-音韵公主(永久)",
"[永久皮肤,20467-初暮(永久)",
"[永久皮肤,20468-冲云霄(永久)",
"[永久皮肤,20469-利爪(永久)",
"[永久皮肤,20470-铁头(永久)",
"[永久皮肤,20471-野牛(永久)",
"[永久皮肤,20472-猛虎(永久)",
"[永久皮肤,20473-大鹏(永久)",
"[永久皮肤,20474-大无畏(永久)",
"[永久皮肤,20475-银剑(永久)",
"[永久皮肤,20476-弹弓(永久)",
"[永久皮肤,20477-俯冲(永久)",
"[永久皮肤,20478-空袭(永久)",
"[永久皮肤,20479-飞火(永久)",
"[永久皮肤,20480-圣婴(永久)",
"[永久皮肤,20481-魔炎(永久)",
"[永久皮肤,20482-灵瑶(永久)",
"[永久皮肤,20483-小红帽阿夏尔(永久)",
"[永久皮肤,20484-迷小酷(永久)",
"[永久皮肤,20485-狼少年沃尔夫(永久)",
"[永久皮肤,20486-天仙子雅(永久)",
"[永久皮肤,20487-临江仙颂(永久)",
"[永久皮肤,20488-红玫瑰少女杜瑞拉(永久)",
"[永久坐骑,20489-苍林白鹿(永久)",
"[永久坐骑,20490-涅盘绘色(永久)",
"[永久坐骑,20491-鹿王本生(永久)",
"[永久皮肤,20492-橘子(永久)",
"[永久皮肤,20493-绣花球少年查尔斯(永久)",
"[永久皮肤,20494-泡泡(永久)",
"[永久皮肤,20495-朝露繁花(永久)",
"[永久皮肤,20496-冰公主(永久)",
"[永久皮肤,20497-罗丽(永久)",
"[永久皮肤,20498-白光莹(永久)",
"[永久皮肤,20499-灰姑娘克里斯汀(永久)",
"[一天皮肤,20501-小龙(1天)",
"[一天皮肤,20502-二郎神(1天)",
"[一天皮肤,20503-余小乐(1天)",
"[一天皮肤,20504-迷梭梭(1天)",
"[一天皮肤,20505-幻音(1天)",
"[一天皮肤,20506-幻-零式(1天)",
"[一天皮肤,20507-柳仙儿(1天)",
"[一天皮肤,20508-帕普奇(1天)",
"[一天皮肤,20509-米娜(1天)",
"[一天皮肤,20510-雪灵(1天)",
"[一天皮肤,20511-梦歌(1天)",
"[一天皮肤,20512-斩浪(1天)",
"[一天皮肤,20513-安吉洛斯(1天)",
"[一天皮肤,20514-暗星(1天)",
"[一天皮肤,20515-兰斯洛特(1天)",
"[一天皮肤,20516-喵小糖(1天)",
"[一天皮肤,20517-千兵卫(1天)",
"[一天皮肤,20518-星翼(1天)",
"[一天皮肤,20519-离(1天)",
"[一天皮肤,20520-黯(1天)",
"[一天皮肤,20521-啾啾(1天)",
"[一天皮肤,20522-华乐(1天)",
"[一天皮肤,20523-大毛(1天)",
"[一天皮肤,20524-乔克(1天)",
"[一天皮肤,20525-小艾(1天)",
"[一天皮肤,20526-擎天柱(1天)",
"[一天皮肤,20527-威震天(1天)",
"[一天皮肤,20528-慕斯(1天)",
"[一天皮肤,20529-金柚柚(1天)",
"[一天皮肤,20530-喜团团(1天)",
"[一天皮肤,20531-林千树(1天)",
"[一天皮肤,20532-大黄蜂(1天)",
"[一天皮肤,20533-花幽幽(1天)",
"[一天皮肤,20534-星灵波波(1天)",
"[一天皮肤,20535-雪球球(1天)",
"[一天皮肤,20536-爱丽丝(1天)",
"[一天皮肤,20537-甲贺忍蛙(1天)",
"[一天皮肤,20538-红蜘蛛(1天)",
"[一天皮肤,20539-热破(1天)",
"[一天皮肤,20540-惊破天(1天)",
"[一天皮肤,20541-全能玩家劳尔(1天)",
"[一天皮肤,20542-电玩少女铃音(1天)",
"[一天皮肤,20543-青弦(1天)",
"[一个皮肤,20544-紫悦女孩(1天)",
"[一天皮肤,20545-宇宙公主女孩(1天)",
"[一天皮肤,20546-柔柔女孩(1天)",
"[一天皮肤,20547-月亮公主女孩(1天)",
"[一天皮肤,20548-钢锁(1天)",
"[一天皮肤,20549-飞标(1天)",
"[一天皮肤,20550-嚎叫(1天)",
"[一天皮肤,20551-色彩旅行者达奇(1天)",
"[一天皮肤,20552-塔莉娅(1天)",
"[一天皮肤,20553-森林隐者巫塔(1天)",
"[一天皮肤,20555-碧琪女孩(1天)",
"[一天皮肤,20556-兔子先生拉比(1天)",
"[一天皮肤,20557-白夜女巫卡洛儿(1天)",
"[一天皮肤,20558-余小欢(1天)",
"[一天皮肤,20559-章小丸(1天)",
"[一天皮肤,20560-熊小吉(1天)",
"[一天皮肤,20561-星光熠熠(1天)",
"[一天皮肤,20562-云宝(1天)",
"[一天皮肤,20563-音韵公主(1天)",
"[一天皮肤,20564-初暮(1天)",
"[一天皮肤,20565-冲云霄(1天)",
"[一天皮肤,20566-利爪(1天)",
"[一天皮肤,20567-铁头(1天)",
"[一天皮肤,20568-野牛(1天)",
"[一天皮肤,20569-猛虎(1天)",
"[一天皮肤,20570-大鹏(1天)",
"[一天皮肤,20571-大无畏(1天)",
"[一天皮肤,20572-银剑(1天)",
"[一天皮肤,20573-弹弓(1天)",
"[一天皮肤,20574-俯冲(1天)",
"[一天皮肤,20575-空袭(1天)",
"[一天皮肤,20576-飞火(1天)",
"[一天皮肤,20577-圣婴(1天)",
"[一天皮肤,20578-魔炎(1天)",
"[一天皮肤,20579-灵瑶(1天)",
"[一天皮肤,20580-小红帽阿夏尔(1天)",
"[一天皮肤,20581-迷小酷(1天)",
"[一天皮肤,20582-狼少年沃尔夫(1天)",
"[一天皮肤,20583-天仙子雅(1天)",
"[一天皮肤,20584-临江仙颂(1天)",
"[一天皮肤,20585-红玫瑰少女杜瑞拉(1天)",
"[一天皮肤,20586-橘子(1天)",
"[一天皮肤,20587-绣花球少年查尔斯(1天)",
"[一天皮肤,20588-泡泡(1天)",
"[一天皮肤,20589-朝露繁花(1天)",
"[一天皮肤,20590-冰公主(1天)",
"[一天皮肤,20591-罗丽(1天)",
"[一天皮肤,20592-白光莹(1天)",
"[一天皮肤,20593-灰姑娘克里斯汀(1天)",
"[自定义装扮7天,20600-邻家男孩头饰(7天)",
"[自定义装扮7天,20601-邻家男孩表情(7天)",
"[自定义装扮7天,20602-邻家男孩上衣(7天)",
"[自定义装扮7天,20603-邻家男孩裤子(7天)",
"[自定义装扮7天,20604-邻家男孩鞋子(7天)",
"[自定义装扮7天,20605-邻家女孩头饰(7天)",
"[自定义装扮7天,20606-邻家女孩表情(7天)",
"[自定义装扮7天,20607-邻家女孩连衣裙(7天)",
"[自定义装扮7天,20608-邻家女孩鞋子(7天)",
"[自定义装扮7天,20609-足球少年头饰(7天)",
"[自定义装扮7天,20610-足球少年表情(7天)",
"[自定义装扮7天,20611-足球少年上衣(7天)",
"[自定义装扮7天,20612-足球少年裤子(7天)",
"[自定义装扮7天,20613-足球少年鞋子(7天)",
"[自定义装扮7天,20614-足球宝贝头饰(7天)",
"[自定义装扮7天,20615-足球宝贝表情(7天)",
"[自定义装扮7天,20616-足球宝贝上衣(7天)",
"[自定义装扮7天,20617-足球宝贝裤子(7天)",
"[自定义装扮7天,20618-足球宝贝鞋子(7天)",
"[自定义装扮7天,20619-书包(7天)",
"[自定义装扮7天,20620-宇航员头盔(7天)",
"[自定义装扮7天,20621-宇航员表情(7天)",
"[自定义装扮7天,20622-迷你贴纸(7天)",
"[自定义装扮7天,20623-宇航员衣服(7天)",
"[自定义装扮7天,20624-宇航员背包(7天)",
"[自定义装扮7天,20625-足球贴纸(7天)",
"[自定义装扮7天,20626-大黄奶嘴(7天)",
"[自定义装扮7天,20627-西瓜冰棍(7天)",
"[自定义装扮7天,20628-度假墨镜(7天)",
"[自定义装扮7天,20629-冲浪男孩头饰(7天)",
"[自定义装扮7天,20630-冲浪男孩表情(7天)",
"[自定义装扮7天,20631-冲浪男孩上衣(7天)",
"[自定义装扮7天,20632-冲浪男孩裤子(7天)",
"[自定义装扮7天,20633-冲浪男孩鞋子(7天)",
"[自定义装扮7天,20634-冲浪板背饰(7天)",
"[自定义装扮7天,20635-海滨假日头饰(7天)",
"[自定义装扮7天,20636-海滨假日表情(7天)",
"[自定义装扮7天,20637-海滨假日上衣(7天)",
"[自定义装扮7天,20638-海滨假日裤子(7天)",
"[自定义装扮7天,20639-海滨假日鞋子(7天)",
"[自定义装扮7天,20640-海滨假日手饰(7天)",
"[自定义装扮7天,20641-浪漫绅士头饰(7天)",
"[自定义装扮7天,20642-浪漫绅士表情(7天)",
"[自定义装扮7天,20643-浪漫绅士衣服(7天)",
"[自定义装扮7天,20644-浪漫绅士裤子(7天)",
"[自定义装扮7天,20645-浪漫绅士鞋子(7天)",
"[自定义装扮7天,20646-甜心少女头饰(7天)",
"[自定义装扮7天,20647-甜心少女表情(7天)",
"[自定义装扮7天,20648-甜心少女衣服(7天)",
"[自定义装扮7天,20649-甜心少女手套(7天)",
"[自定义装扮7天,20650-甜心少女裤子(7天)",
"[自定义装扮7天,20651-甜心少女鞋子(7天)",
"[自定义装扮7天,20652-爱心唇印贴纸(7天)",
"[自定义装扮7天,20653-脚丫脚印(7天)",
"[自定义装扮7天,20654-团子脚印(7天)",
"[自定义装扮7天,20655-幻蓝脚印(7天)",
"[自定义装扮7天,20656-幻音脚印(7天)",
"[自定义装扮7天,20657-云游剑客鞋子(7天)",
"[自定义装扮7天,20658-云游剑客裤子(7天)",
"[自定义装扮7天,20659-云游剑客衣服(7天)",
"[自定义装扮7天,20660-云游剑客表情(7天)",
"[自定义装扮7天,20661-云游剑客头饰(7天)",
"[自定义装扮7天,20662-掌门千金鞋子(7天)",
"[自定义装扮7天,20663-掌门千金护手(7天)",
"[自定义装扮7天,20664-掌门千金裤子(7天)",
"[自定义装扮7天,20665-掌门千金衣服(7天)",
"[自定义装扮7天,20666-掌门千金表情(7天)",
"[自定义装扮7天,20667-掌门千金头饰(7天)",
"[自定义装扮7天,20668-满月脚印(7天)",
"[自定义装扮7天,20669-宝剑背饰(7天)",
"[自定义装扮7天,20670-披风背饰(7天)",
"[自定义装扮7天,20671-玉兔背饰(7天)",
"[自定义装扮7天,20672-五仁月饼背饰(7天)",
"[自定义装扮7天,20673-名门淑女头饰(7天)",
"[自定义装扮7天,20674-彩虹马裤子(7天)",
"[自定义装扮7天,20675-悍马头饰(7天)",
"[自定义装扮7天,20676-巡游警长鞋子(7天)",
"[自定义装扮7天,20677-巡游警长裤子(7天)",
"[自定义装扮7天,20678-巡游警长衣服(7天)",
"[自定义装扮7天,20679-巡游警长表情(7天)",
"[自定义装扮7天,20680-巡游警长头饰(7天)",
"[自定义装扮7天,20681-小恶魔背包(7天)",
"[自定义装扮7天,20682-圣诞宝贝鞋子(7天)",
"[自定义装扮7天,20683-圣诞宝贝手套(7天)",
"[自定义装扮7天,20684-圣诞宝贝裙子(7天)",
"[自定义装扮7天,20685-圣诞宝贝头饰(7天)",
"[自定义装扮7天,20686-圣诞宝贝表情(7天)",
"[自定义装扮7天,20687-圣诞宝贝披肩(7天)",
"[自定义装扮7天,20688-圣诞少年鞋子(7天)",
"[自定义装扮7天,20689-圣诞少年裤子(7天)",
"[自定义装扮7天,20690-圣诞少年衣服(7天)",
"[自定义装扮7天,20691-圣诞少年头饰(7天)",
"[自定义装扮7天,20692-圣诞少年表情(7天)",
"[自定义装扮7天,20693-冬季俏皮鞋子(7天)",
"[自定义装扮7天,20694-冬季俏皮手套(7天)",
"[自定义装扮7天,20695-冬季俏皮裙子(7天)",
"[自定义装扮7天,20696-冬季俏皮衣服(7天)",
"[自定义装扮7天,20697-冬季俏皮表情(7天)",
"[自定义装扮7天,20698-冬季俏皮头饰(7天)",
"[自定义装扮7天,20699-冬季暖风鞋子(7天)",
"[自定义装扮7天,20700-冬季暖风手套(7天)",
"[自定义装扮7天,20701-冬季暖风衣服(7天)",
"[自定义装扮7天,20702-冬季暖风表情(7天)",
"[自定义装扮7天,20703-冬季暖风头饰(7天)",
"[自定义装扮7天,20704-船长金钩(7天)",
"[自定义装扮7天,20705-大白鲨衣服(7天)",
"[自定义装扮7天,20706-大白鲨头饰(7天)",
"[自定义装扮7天,20707-橄榄球员手套(7天)",
"[自定义装扮7天,20708-橄榄球员鞋子(7天)",
"[自定义装扮7天,20709-橄榄球员裤子(7天)",
"[自定义装扮7天,20710-橄榄球员衣服(7天)",
"[自定义装扮7天,20711-橄榄球员头饰(7天)",
"[自定义装扮7天,20712-虎头鞋(7天)",
"[自定义装扮7天,20713-虎虎生风披风(7天)",
"[自定义装扮7天,20714-龙头帽头饰(7天)",
"[自定义装扮7天,20715-虎头帽头饰(7天)",
"[自定义装扮7天,20716-吉祥娃娃衣服(7天)",
"[自定义装扮7天,20717-吉祥娃娃头饰(7天)",
"[自定义装扮7天,20718-鎏金鞋子(7天)",
"[自定义装扮7天,20719-棕色灯芯绒裤(7天)",
"[自定义装扮7天,20720-鎏金马褂(7天)",
"[自定义装扮7天,20721-瓜皮帽头饰(7天)",
"[自定义装扮7天,20722-铜钱脚印(7天)",
"[自定义装扮7天,20723-王卡专属脚印(7天)",
"[自定义装扮7天,20724-王卡专属背饰(7天)",
"[自定义装扮7天,20725-王卡专属表情(7天)",
"[自定义装扮7天,20726-王卡专属衣服(7天)",
"[自定义装扮7天,20727-王卡专属头饰(7天)",
"[自定义装扮7天,20728-满福背篓(7天)",
"[自定义装扮7天,20729-摇钱树头饰(7天)",
"[自定义装扮7天,20730-橄榄球背包(7天)",
"[自定义装扮7天,20731-刀马旦头饰(7天)",
"[自定义装扮7天,20732-刀马旦表情(7天)",
"[自定义装扮7天,20733-刀马旦衣服(7天)",
"[自定义装扮7天,20734-武生头饰(7天)",
"[自定义装扮7天,20735-武生表情(7天)",
"[自定义装扮7天,20736-武生衣服(7天)",
"[自定义装扮7天,20737-春之百合头饰(7天)",
"[自定义装扮7天,20738-春之蓝菇头饰(7天)",
"[自定义装扮7天,20739-春之玫瑰头饰(7天)",
"[自定义装扮7天,20740-春之雏菊头饰(7天)",
"[自定义装扮7天,20741-胖哒帽衫(7天)",
"[自定义装扮7天,20742-天珠外套(7天)",
"[自定义装扮7天,20743-狂欢之舞头饰(7天)",
"[自定义装扮7天,20744-狂欢之舞背饰(7天)",
"[自定义装扮7天,20745-猪猪头饰(7天)",
"[自定义装扮7天,20746-小机灵表情(7天)",
"[自定义装扮7天,20747-星星眼表情(7天)",
"[自定义装扮7天,20748-粉红可爱表情(7天)",
"[自定义装扮7天,20749-青灰呆萌表情(7天)",
"[自定义装扮7天,20750-深红喜悦表情(7天)",
"[自定义装扮7天,20751-春之百合裙子(7天)",
"[自定义装扮7天,20752-春之雏菊裙子(7天)",
"[自定义装扮7天,20753-春之玫瑰裙子(7天)",
"[自定义装扮7天,20754-春之蓝菇裙子(7天)",
"[自定义装扮7天,20755-春之翼(7天)",
"[自定义装扮7天,20756-青春校园衣服(7天)",
"[自定义装扮7天,20757-青春校园裤子(7天)",
"[自定义装扮7天,20758-青春校园鞋子(7天)",
"[自定义装扮7天,20759-青春校园书包(7天)",
"[自定义装扮7天,20760-青春校园脚印(7天)",
"[自定义装扮7天,20761-安吉洛斯脚印(7天)",
"[自定义装扮7天,20762-安吉洛斯羽翼(7天)",
"[自定义装扮7天,20763-泰风优雅裙子(7天)",
"[自定义装扮7天,20764-泰风优雅披肩(7天)",
"[自定义装扮7天,20765-泰风清凉短裤(7天)",
"[自定义装扮7天,20766-泰风清凉短袖(7天)",
"[自定义装扮7天,20767-复古单片眼镜(7天)",
"[自定义装扮7天,20768-蓝色小清新头饰(7天)",
"[自定义装扮7天,20769-校园男孩头饰(7天)",
"[自定义装扮7天,20770-高冷白发头饰(7天)",
"[自定义装扮7天,20771-小熊玩偶背包(7天)",
"[自定义装扮7天,20772-小熊印花短袖(7天)",
"[自定义装扮7天,20773-小熊发卡头饰(7天)",
"[自定义装扮7天,20774-粉红兔鞋子(7天)",
"[自定义装扮7天,20775-粉红兔手套(7天)",
"[自定义装扮7天,20776-兔尾巴短裤(7天)",
"[自定义装扮7天,20777-粉红兔衣服(7天)",
"[自定义装扮7天,20778-粉红兔头饰(7天)",
"[自定义装扮7天,20779-彩蛋背包(7天)",
"[自定义装扮7天,20780-胡萝卜背包(7天)",
"[自定义装扮7天,20781-白羊座表情(7天)",
"[自定义装扮7天,20782-白羊座头饰(7天)",
"[自定义装扮7天,20783-元气满满表情(7天)",
"[自定义装扮7天,20784-傲娇脸表情(7天)",
"[自定义装扮7天,20785-眼前一亮表情(7天)",
"[自定义装扮7天,20786-卖萌可爱表情(7天)",
"[自定义装扮7天,20787-偷瞄脸表情(7天)",
"[自定义装扮7天,20788-电力四射表情(7天)",
"[自定义装扮7天,20789-帅气中分头饰(7天)",
"[自定义装扮7天,20790-海洋之风头饰(7天)",
"[自定义装扮7天,20791-小小水手头饰(7天)",
"[自定义装扮7天,20792-猫系少女头饰(7天)",
"[自定义装扮7天,20793-凌乱少年头饰(7天)",
"[自定义装扮7天,20794-粉红俏皮头饰(7天)",
"[自定义装扮7天,20795-贪睡小猫头饰(7天)",
"[自定义装扮7天,20796-贪睡小猫衣服(7天)",
"[自定义装扮7天,20797-黄白之恋裙子(7天)",
"[自定义装扮7天,20798-和风卫衣(7天)",
"[自定义装扮7天,20799-小猫背带套装(7天)",
"[自定义装扮7天,20800-一字肩上衣(7天)",
"[自定义装扮7天,20801-英伦风衣(7天)",
"[自定义装扮7天,20802-小淘气背心(7天)",
"[自定义装扮7天,20803-连袜短裙(7天)",
"[自定义装扮7天,20804-水手短裤(7天)",
"[自定义装扮7天,20805-绅士短裤(7天)",
"[自定义装扮7天,20806-紫魅短裙(7天)",
"[自定义装扮7天,20807-小熊鞋子(7天)",
"[自定义装扮7天,20808-猫咪短靴(7天)",
"[自定义装扮7天,20809-蝴蝶鞋子(7天)",
"[自定义装扮7天,20810-猫咪拖鞋(7天)",
"[自定义装扮7天,20811-绅士布鞋(7天)",
"[自定义装扮7天,20812-活力帆布鞋(7天)",
"[自定义装扮7天,20813-复古圆框眼镜(7天)",
"[自定义装扮7天,20814-复古方框眼镜(7天)",
"[自定义装扮7天,20815-彩虹手环(7天)",
"[自定义装扮7天,20816-金牛座表情(7天)",
"[自定义装扮7天,20817-金牛座头饰(7天)",
"[自定义装扮7天,20818-电玩大神表情(7天)",
"[自定义装扮7天,20819-超级电玩眼镜(7天)",
"[自定义装扮7天,20820-超级电玩背包(7天)",
"[自定义装扮7天,20821-电玩大脚印(7天)",
"[自定义装扮7天,20822-挑战者衣服(7天)",
"[自定义装扮7天,20823-挑战者头饰(7天)",
"[自定义装扮7天,20824-挑战者背包(7天)",
"[自定义装扮7天,20825-挑战者面饰(7天)",
"[自定义装扮7天,20826-挑战者手套(7天)",
"[自定义装扮7天,20827-挑战者表情(7天)",
"[自定义装扮7天,20828-游戏大咖头饰(7天)",
"[自定义装扮7天,20829-游戏大咖外套(7天)",
"[自定义装扮7天,20830-游戏大咖裤子(7天)",
"[自定义装扮7天,20831-游戏大咖鞋子(7天)",
"[自定义装扮7天,20832-游戏女神头饰(7天)",
"[自定义装扮7天,20833-游戏女神外套(7天)",
"[自定义装扮7天,20834-游戏女神短裤(7天)",
"[自定义装扮7天,20835-游戏女神鞋子(7天)",
"[自定义装扮7天,20836-大发现表情(7天)",
"[自定义装扮7天,20837-认真表情(7天)",
"[自定义装扮7天,20838-自信微笑表情(7天)",
"[自定义装扮7天,20839-贪玩喵喵表情(7天)",
"[自定义装扮7天,20840-惊讶表情(7天)",
"[自定义装扮7天,20841-俏皮坏笑表情(7天)",
"[自定义装扮7天,20842-喷气飞翼(7天)",
"[自定义装扮7天,20843-螺旋飞翼(7天)",
"[自定义装扮7天,20844-化学增强枪(7天)",
"[自定义装扮7天,20845-超能战喵背包(7天)",
"[自定义装扮7天,20846-战地通讯员绷带(7天)",
"[自定义装扮7天,20847-科幻羽翼鞋子(7天)",
"[自定义装扮7天,20848-废土运动鞋(7天)",
"[自定义装扮7天,20849-粒子动能长靴(7天)",
"[自定义装扮7天,20850-未来机甲鞋子(7天)",
"[自定义装扮7天,20851-机械战警腿甲(7天)",
"[自定义装扮7天,20852-战地通讯员头饰(7天)",
"[自定义装扮7天,20853-未来士兵头饰(7天)",
"[自定义装扮7天,20854-废土护目镜头饰(7天)",
"[自定义装扮7天,20855-超能战喵头饰(7天)",
"[自定义装扮7天,20856-机械青蛙头饰(7天)",
"[自定义装扮7天,20857-战地通讯员上衣(7天)",
"[自定义装扮7天,20858-废土披风(7天)",
"[自定义装扮7天,20859-探险者外套(7天)",
"[自定义装扮7天,20860-未来魔法披风(7天)",
"[自定义装扮7天,20861-机甲大神上衣(7天)",
"[自定义装扮7天,20862-收集者裤子(7天)",
"[自定义装扮7天,20863-能源绑带短裤(7天)",
"[自定义装扮7天,20864-科幻时尚短裤(7天)",
"[自定义装扮7天,20865-机器猫尾裤子(7天)",
"[自定义装扮7天,20866-机甲运动短裤(7天)",
"[自定义装扮7天,20867-双子座表情(7天)",
"[自定义装扮7天,20868-双子座头饰(7天)",
"[自定义装扮7天,20869-海上女王头饰(7天)",
"[自定义装扮7天,20870-海上女王长裙(7天)",
"[自定义装扮7天,20871-海上女王鞋子(7天)",
"[自定义装扮7天,20872-奇迹之子头饰(7天)",
"[自定义装扮7天,20873-奇迹之子衣服(7天)",
"[自定义装扮7天,20874-奇迹之子腕甲(7天)",
"[自定义装扮7天,20875-迷你英雄战斗服(7天)",
"[自定义装扮7天,20876-迷你英雄斗篷(7天)",
"[自定义装扮7天,20877-小王子上衣(7天)",
"[自定义装扮7天,20878-小王子马裤(7天)",
"[自定义装扮7天,20879-小王子马靴(7天)",
"[自定义装扮7天,20880-小王子头冠(7天)",
"[自定义装扮7天,20881-小公主裙子(7天)",
"[自定义装扮7天,20882-小公主长袜(7天)",
"[自定义装扮7天,20883-小公主鞋子(7天)",
"[自定义装扮7天,20884-小公主头冠(7天)",
"[自定义装扮7天,20885-小仙女翅膀(7天)",
"[自定义装扮7天,20886-小王子表情(7天)",
"[自定义装扮7天,20887-小公主表情(7天)",
"[自定义装扮7天,20888-机械拳套(7天)",
"[自定义装扮7天,20889-小公主手套(7天)",
"[自定义装扮7天,20890-佐罗面具(7天)",
"[自定义装扮7天,20891-个性涂鸦背包(7天)",
"[自定义装扮7天,20892-流浪乐手背饰(7天)",
"[自定义装扮7天,20893-潮流口罩(7天)",
"[自定义装扮7天,20894-甜心宝贝背包(7天)",
"[自定义装扮7天,20895-仙人花花背饰(7天)",
"[自定义装扮7天,20896-绣花汉服鞋子(7天)",
"[自定义装扮7天,20897-初夏暖阳凉鞋(7天)",
"[自定义装扮7天,20898-酷酷棒球帽(7天)",
"[自定义装扮7天,20899-嘻哈风头饰(7天)",
"[自定义装扮7天,20900-豆蔻年华头饰(7天)",
"[自定义装扮7天,20901-蝴蝶结包包头(7天)",
"[自定义装扮7天,20902-暖暖小黄帽(7天)",
"[自定义装扮7天,20903-小水手头饰(7天)",
"[自定义装扮7天,20904-远洋海风裙子(7天)",
"[自定义装扮7天,20905-个性少年裤子(7天)",
"[自定义装扮7天,20906-采花少女裙子(7天)",
"[自定义装扮7天,20907-小海军连衣裙(7天)",
"[自定义装扮7天,20908-船长背带裤(7天)",
"[自定义装扮7天,20909-水手衣服(7天)",
"[自定义装扮7天,20910-小海军衣服(7天)",
"[自定义装扮7天,20911-小清新衣服(7天)",
"[自定义装扮7天,20912-酷炫街舞衣服(7天)",
"[自定义装扮7天,20913-孟夏佳人裙子(7天)",
"[自定义装扮7天,20914-墨西哥宽边帽(7天)",
"[自定义装扮7天,20915-端午汉服(7天)",
"[自定义装扮7天,20916-粽子背包(7天)",
"[自定义装扮7天,20917-小迷糊表情(7天)",
"[自定义装扮7天,20918-疾风弓箭(7天)",
"[自定义装扮7天,20919-富运达摩背饰(7天)",
"[自定义装扮7天,20920-武士刀背饰(7天)",
"[自定义装扮7天,20921-猫咪手套(7天)",
"[自定义装扮7天,20922-妖狐尾背饰(7天)",
"[自定义装扮7天,20923-甜甜游泳圈(7天)",
"[自定义装扮7天,20924-二齿木屐(7天)",
"[自定义装扮7天,20925-猫耳头饰(7天)",
"[自定义装扮7天,20926-甜心马尾头饰(7天)",
"[自定义装扮7天,20927-狐耳头饰(7天)",
"[自定义装扮7天,20928-立夏花火头饰(7天)",
"[自定义装扮7天,20929-妖狐面具头饰(7天)",
"[自定义装扮7天,20930-和风百褶裙(7天)",
"[自定义装扮7天,20931-神奈川短裤(7天)",
"[自定义装扮7天,20932-妖怪羽织(7天)",
"[自定义装扮7天,20933-樱花背心(7天)",
"[自定义装扮7天,20934-稻禾巫女服(7天)",
"[自定义装扮7天,20935-祈福狩衣(7天)",
"[自定义装扮7天,20936-金鱼姬裙子(7天)",
"[自定义装扮7天,20937-弓道服(7天)",
"[自定义装扮7天,20938-日式工匠服(7天)",
"[自定义装扮7天,20939-夏日点点泳衣(7天)",
"[自定义装扮7天,20940-海滩休闲衬衫(7天)",
"[自定义装扮7天,20941-巨蟹座表情(7天)",
"[自定义装扮7天,20942-巨蟹座头饰(7天)",
"[自定义装扮7天,20943-气鼓鼓表情(7天)",
"[自定义装扮7天,20944-楚楚可怜表情(7天)",
"[自定义装扮7天,20945-桃香幸缘表情(7天)",
"[自定义装扮7天,20946-甜夏西瓜表情(7天)",
"[自定义装扮7天,20947-俏狐狸表情(7天)",
"[自定义装扮7天,20948-剑客行表情(7天)",
"[自定义装扮7天,20949-梅香罗伞(7天)",
"[自定义装扮7天,20950-桃花琵琶(7天)",
"[自定义装扮7天,20951-蔷薇眼罩(7天)",
"[自定义装扮7天,20952-金丝面纱(7天)",
"[自定义装扮7天,20953-金丝踏云靴(7天)",
"[自定义装扮7天,20954-玛丽珍鞋(7天)",
"[自定义装扮7天,20955-陌上人如玉(7天)",
"[自定义装扮7天,20956-公子世无双(7天)",
"[自定义装扮7天,20957-雕金乌纱帽(7天)",
"[自定义装扮7天,20958-江南印象头饰(7天)",
"[自定义装扮7天,20959-红尘醉头饰(7天)",
"[自定义装扮7天,20960-云纹短裤(7天)",
"[自定义装扮7天,20961-千鸳短裤(7天)",
"[自定义装扮7天,20962-芍药天香上衣(7天)",
"[自定义装扮7天,20963-竹笙锦瑟上衣(7天)",
"[自定义装扮7天,20964-民国故事上衣(7天)",
"[自定义装扮7天,20965-木棉旗袍(7天)",
"[自定义装扮7天,20966-素喜衣裳(7天)",
"[自定义装扮7天,20967-故人听竹(7天)",
"[自定义装扮7天,20968-翻云绘长歌(7天)",
"[自定义装扮7天,20969-金丝墨云锦袍(7天)",
"[自定义装扮7天,20970-樱花脚印(7天)",
"[自定义装扮7天,20971-猫咪脚印(7天)",
"[自定义装扮7天,20972-玩偶甜心表情(7天)",
"[自定义装扮7天,20973-小虎牙表情(7天)",
"[自定义装扮7天,20974-异瞳坏笑表情(7天)",
"[自定义装扮7天,20975-嘟嘟嘴表情(7天)",
"[自定义装扮7天,20976-魔法甜心表情(7天)",
"[自定义装扮7天,20977-纯白纱布眼罩(7天)",
"[自定义装扮7天,20978-海豹宝宝背包(7天)",
"[自定义装扮7天,20979-小恶魔翅膀(7天)",
"[自定义装扮7天,20980-蕾丝手袖(7天)",
"[自定义装扮7天,20981-白色罗马鞋(7天)",
"[自定义装扮7天,20982-红熊拖鞋(7天)",
"[自定义装扮7天,20983-探险马丁靴(7天)",
"[自定义装扮7天,20984-星间飞行凉鞋(7天)",
"[自定义装扮7天,20985-雪精灵编发(7天)",
"[自定义装扮7天,20986-恶魔角头饰(7天)",
"[自定义装扮7天,20987-朴素礼帽(7天)",
"[自定义装扮7天,20988-羊羊爱丽丝(7天)",
"[自定义装扮7天,20989-纸箱头(7天)",
"[自定义装扮7天,20990-斑马长筒袜(7天)",
"[自定义装扮7天,20991-独角兽少女裙子(7天)",
"[自定义装扮7天,20992-机能上衣(7天)",
"[自定义装扮7天,20993-潮流绅士(7天)",
"[自定义装扮7天,20994-蔷薇故事(7天)",
"[自定义装扮7天,20995-梦游仙境(7天)",
"[自定义装扮7天,20996-星夜衬衫(7天)",
"[自定义装扮7天,20997-海豹夹克(7天)",
"[自定义装扮7天,20998-牛仔背带裤(7天)",
"[自定义装扮7天,20999-爱心牛仔裙(7天)",
"[自定义装扮7天,21000-狮子座头饰(7天)",
"[自定义装扮7天,21001-狮子座表情(7天)",
"[自定义装扮7天,21002-调皮吐舌表情(7天)",
"[自定义装扮7天,21003-龇牙表情(7天)",
"[自定义装扮7天,21004-嘟嘴呆萌表情(7天)",
"[自定义装扮7天,21005-暖心微笑表情(7天)",
"[自定义装扮7天,21006-爱心创口贴(7天)",
"[自定义装扮7天,21007-荧光手表(7天)",
"[自定义装扮7天,21008-简约黑红鞋子(7天)",
"[自定义装扮7天,21009-摇滚皮靴(7天)",
"[自定义装扮7天,21010-复古牛津鞋(7天)",
"[自定义装扮7天,21011-海盗热裤(7天)",
"[自定义装扮7天,21012-撞色风暴(7天)",
"[自定义装扮7天,21013-萌动百褶裙(7天)",
"[自定义装扮7天,21014-机车少女背心(7天)",
"[自定义装扮7天,21015-魔力少女外套(7天)",
"[自定义装扮7天,21016-荧光闪点外套(7天)",
"[自定义装扮7天,21017-糖果甜心头饰(7天)",
"[自定义装扮7天,21018-电音小子头饰(7天)",
"[自定义装扮7天,21019-喵喵耳机头饰(7天)",
"[自定义装扮7天,21020-处女座头饰(7天)",
"[自定义装扮7天,21021-处女座表情(7天)",
"[自定义装扮7天,21022-豆豆眉表情(7天)",
"[自定义装扮7天,21023-糖果猫咪表情(7天)",
"[自定义装扮7天,21024-琥珀鼓气表情(7天)",
"[自定义装扮7天,21025-乖巧萌宠表情(7天)",
"[自定义装扮7天,21026-狗狗贴纸(7天)",
"[自定义装扮7天,21027-秋田犬爪套(7天)",
"[自定义装扮7天,21028-精致小皮鞋(7天)",
"[自定义装扮7天,21029-剑侠绑腿靴(7天)",
"[自定义装扮7天,21030-粉莲绣花鞋(7天)",
"[自定义装扮7天,21031-简约篮球鞋(7天)",
"[自定义装扮7天,21032-西装裤(7天)",
"[自定义装扮7天,21033-浅溪短裙(7天)",
"[自定义装扮7天,21034-牛仔潮服(7天)",
"[自定义装扮7天,21035-甜心洛可可(7天)",
"[自定义装扮7天,21036-明月几时有(7天)",
"[自定义装扮7天,21037-五仁共团圆(7天)",
"[自定义装扮7天,21038-繁花波奈特(7天)",
"[自定义装扮7天,21039-绅士帽子(7天)",
"[自定义装扮7天,21040-玉兔头饰(7天)",
"[自定义装扮7天,21041-皓月童子(7天)",
"[自定义装扮7天,21042-针织狐狸帽(7天)",
"[自定义装扮7天,21043-公牛队篮球服(7天)",
"[自定义装扮7天,21044-湖人队篮球服(7天)",
"[自定义装扮7天,21045-开拓者队篮球服(7天)",
"[自定义装扮7天,21046-猛龙队篮球服(7天)",
"[自定义装扮7天,21047-雄鹿队篮球服(7天)",
"[自定义装扮7天,21048-勇士队篮球服(7天)",
"[自定义装扮7天,21049-野性光辉(7天)",
"[自定义装扮7天,21050-扑克谜语(7天)",
"[自定义装扮7天,21051-龙甲冰珠玉佩(7天)",
"[自定义装扮7天,21052-小龙背包(7天)",
"[自定义装扮7天,21053-同福酒坛(7天)",
"[自定义装扮7天,21054-溪间语手链(7天)",
"[自定义装扮7天,21055-甜点兔背包(7天)",
"[自定义装扮7天,21056-甜心猫尾(7天)",
"[自定义装扮7天,21057-锦瑟翻边靴(7天)",
"[自定义装扮7天,21058-红缨甲靴(7天)",
"[自定义装扮7天,21059-随性穿搭(7天)",
"[自定义装扮7天,21060-格子物语(7天)",
"[自定义装扮7天,21061-破洞牛仔裤(7天)",
"[自定义装扮7天,21062-星愿蓬蓬裙(7天)",
"[自定义装扮7天,21063-霸王甲(7天)",
"[自定义装扮7天,21064-盛唐舞裙(7天)",
"[自定义装扮7天,21065-糖果恶魔(7天)",
"[自定义装扮7天,21066-大檐帽头饰(7天)",
"[自定义装扮7天,21067-炽日头饰(7天)",
"[自定义装扮7天,21068-战英豪(7天)",
"[自定义装扮7天,21069-飞天发髻(7天)",
"[自定义装扮7天,21070-战火燎原(7天)",
"[自定义装扮7天,21071-天秤座表情(7天)",
"[自定义装扮7天,21072-天秤座头饰(7天)",
"[自定义装扮7天,21073-星花飞舞(7天)",
"[自定义装扮7天,21074-凤纹奥黛服饰(7天)",
"[自定义装扮7天,21075-繁花奥黛头饰(7天)",
"[自定义装扮7天,21076-古灵精怪表情(7天)",
"[自定义装扮7天,21077-萌呆呆表情(7天)",
"[自定义装扮7天,21078-粉红泡泡表情(7天)",
"[自定义装扮7天,21079-幸福紫表情(7天)",
"[自定义装扮7天,21080-不规则特性(7天)",
"[自定义装扮7天,21081-狗狗短裤(7天)",
"[自定义装扮7天,21082-百变系带靴(7天)",
"[自定义装扮7天,21083-南瓜小恶魔(7天)",
"[自定义装扮7天,21084-埃及头饰(7天)",
"[自定义装扮7天,21085-魔法南瓜头饰(7天)",
"[自定义装扮7天,21086-木乃伊头饰(7天)",
"[自定义装扮7天,21087-南瓜宝宝头饰(7天)",
"[自定义装扮7天,21088-星星女巫头饰(7天)",
"[自定义装扮7天,21089-天蝎座头饰(7天)",
"[自定义装扮7天,21090-万圣小女巫(7天)",
"[自定义装扮7天,21091-万圣魔法使(7天)",
"[自定义装扮7天,21092-提灯小幽灵(7天)",
"[自定义装扮7天,21093-魔法扫帚(7天)",
"[自定义装扮7天,21094-不给糖就捣蛋(7天)",
"[自定义装扮7天,21095-蓝焰脚印(7天)",
"[自定义装扮7天,21096-小狐仙表情(7天)",
"[自定义装扮7天,21097-深海之谜表情(7天)",
"[自定义装扮7天,21098-红粉轻甜表情(7天)",
"[自定义装扮7天,21099-黄金瞳表情(7天)",
"[自定义装扮7天,21100-额间朱砂表情(7天)",
"[自定义装扮7天,21101-英伦小皮鞋(7天)",
"[自定义装扮7天,21102-深秋时节(7天)",
"[自定义装扮7天,21103-恋恋心情(7天)",
"[自定义装扮7天,21104-海豹学园制服(7天)",
"[自定义装扮7天,21105-未来之翼(7天)",
"[自定义装扮7天,21106-暖心堆堆袜(7天)",
"[自定义装扮7天,21107-轻松板鞋(7天)",
"[自定义装扮7天,21108-迷彩工装裤(7天)",
"[自定义装扮7天,21109-冬季水手服(7天)",
"[自定义装扮7天,21110-暖冬物语(7天)",
"[自定义装扮7天,21111-哈士奇卫衣(7天)",
"[自定义装扮7天,21112-极客卫衣(7天)",
"[自定义装扮7天,21113-冬之礼服(7天)",
"[自定义装扮7天,21114-恋冬之歌(7天)",
"[自定义装扮7天,21115-爱宠出游(7天)",
"[自定义装扮7天,21116-绒绒小黄鸭(7天)",
"[自定义装扮7天,21117-沉默编织(7天)",
"[自定义装扮7天,21118-丝带情结(7天)",
"[自定义装扮7天,21119-哈士奇头套(7天)",
"[自定义装扮7天,21120-射手座头饰(7天)",
"[自定义装扮7天,21121-2020年度眼镜(7天)",
"[自定义装扮7天,21122-圣诞老人胡子(7天)",
"[自定义装扮7天,21123-初雪莲棠(7天)",
"[自定义装扮7天,21124-步步高升(7天)",
"[自定义装扮7天,21125-敛芳菲(7天)",
"[自定义装扮7天,21126-萌鼠头饰(7天)",
"[自定义装扮7天,21127-绵绵鼠圆帽(7天)",
"[自定义装扮7天,21128-龙子发冠(7天)",
"[自定义装扮7天,21129-丁香结(7天)",
"[自定义装扮7天,21130-墨云染(7天)",
"[自定义装扮7天,21131-玲珑送福(7天)",
"[自定义装扮7天,21132-吉星高照(7天)",
"[自定义装扮7天,21133-花开富贵(7天)",
"[自定义装扮7天,21134-锦绣山河(7天)",
"[自定义装扮7天,21135-礼物盒脚印(7天)",
"[自定义装扮7天,21136-星光奇迹(7天)",
"[自定义装扮7天,21137-铃儿叮当(7天)",
"[自定义装扮7天,21138-姜饼人奇遇(7天)",
"[自定义装扮7天,21139-圣夜之愿(7天)",
"[自定义装扮7天,21140-缤纷回响(7天)",
"[自定义装扮7天,21141-奇妙圣诞夜(7天)",
"[自定义装扮7天,21142-平安夜的礼物(7天)",
"[自定义装扮7天,21143-米兔(7天)",
"[自定义装扮7天,21144-庄严典礼(7天)",
"[自定义装扮7天,21145-小胡子(7天)",
"[自定义装扮7天,21146-英式筒靴(7天)",
"[自定义装扮7天,21147-胡桃夹子(7天)",
"[自定义装扮7天,21148-皇室礼仪(7天)",
"[自定义装扮7天,21149-年画鼠(7天)",
"[自定义装扮7天,21150-步步迎福(7天)",
"[自定义装扮7天,21151-子鼠玩偶背包(7天)",
"[自定义装扮7天,21152-金鱼腰坠(7天)",
"[自定义装扮7天,21153-童趣(7天)",
"[自定义装扮7天,21154-暗纹绑手(7天)",
"[自定义装扮7天,21155-华光映莲(7天)",
"[自定义装扮7天,21156-桃花笑(7天)",
"[自定义装扮7天,21157-狐步舞(7天)",
"[自定义装扮7天,21158-中国结短靴(7天)",
"[自定义装扮7天,21159-芳华之舞(7天)",
"[自定义装扮7天,21160-穿个灯笼(7天)",
"[自定义装扮7天,21161-金铃如意(7天)",
"[自定义装扮7天,21162-锦鲤抄(7天)",
"[自定义装扮7天,21163-爆竹声声(7天)",
"[自定义装扮7天,21164-送福童子(7天)",
"[自定义装扮7天,21165-长生结(7天)",
"[自定义装扮7天,21166-踏云来(7天)",
"[自定义装扮7天,21167-书声琅琅(7天)",
"[自定义装扮7天,21168-万卷书(7天)",
"[自定义装扮7天,21169-云中月(7天)",
"[自定义装扮7天,21170-踏粉莲(7天)",
"[自定义装扮7天,21171-花中曲(7天)",
"[自定义装扮7天,21172-陌上繁花(7天)",
"[自定义装扮7天,21173-豆蔻语(7天)",
"[自定义装扮7天,21174-盛放(7天)",
"[自定义装扮7天,21175-锦绣缘(7天)",
"[自定义装扮7天,21176-琳琅(7天)",
"[自定义装扮7天,21177-凤舞倾城(7天)",
"[自定义装扮7天,21178-桃花灼灼(7天)",
"[自定义装扮7天,21179-荣光(7天)",
"[自定义装扮7天,21180-御云天(7天)",
"[自定义装扮7天,21181-琼宇(7天)",
"[自定义装扮7天,21182-龙吟盛世(7天)",
"[自定义装扮7天,21183-盘龙织影(7天)",
"[自定义装扮7天,21184-鸦语蔷薇(7天)",
"[自定义装扮7天,21185-沁桃红酒(7天)",
"[自定义装扮7天,21186-暗红舞步(7天)",
"[自定义装扮7天,21187-虚荣王座(7天)",
"[自定义装扮7天,21188-红皇后(7天)",
"[自定义装扮7天,21189-纷乱深渊(7天)",
"[自定义装扮7天,21190-龙骨十字(7天)",
"[自定义装扮7天,21191-魔法时间(7天)",
"[自定义装扮7天,21192-正义视线(7天)",
"[自定义装扮7天,21193-魔法阵脚印(7天)",
"[自定义装扮7天,21194-狮心王权(7天)",
"[自定义装扮7天,21195-荣誉圣骑(7天)",
"[自定义装扮7天,21196-英骑之魂(7天)",
"[自定义装扮7天,21197-钻石星辰(7天)",
"[自定义装扮7天,21198-纯白桂冠(7天)",
"[自定义装扮7天,21199-白皇后(7天)",
"[自定义装扮7天,21200-健康守护者(7天)",
"[自定义装扮7天,21201-金丝猴玩偶(7天)",
"[自定义装扮7天,21202-雪豹守护者(女)(7天)",
"[自定义装扮7天,21203-糖果运动鞋(7天)",
"[自定义装扮7天,21204-雪豹守护者(男)(7天)",
"[自定义装扮7天,21205-炫彩运动鞋(7天)",
"[自定义装扮7天,21206-雪豹玩偶(7天)",
"[自定义装扮7天,21207-孔雀开屏(7天)",
"[自定义装扮7天,21208-雀翎背带裙(7天)",
"[自定义装扮7天,21209-萌动鼠兔(7天)",
"[自定义装扮7天,21210-包裹鼠兔(7天)",
"[自定义装扮7天,21211-滚滚来袭(7天)",
"[自定义装扮7天,21212-软绒豹尾背饰(7天)",
"[自定义装扮7天,21213-极地短靴(7天)",
"[自定义装扮7天,21214-高原贵族(7天)",
"[自定义装扮7天,21215-雪域领主(7天)",
"[自定义装扮7天,21216-绒绒雪地靴(7天)",
"[自定义装扮7天,21217-高原公主(7天)",
"[自定义装扮7天,21218-雪域蔷薇(7天)",
"[自定义装扮7天,21219-踏雪寻踪(7天)",
"[自定义装扮7天,21220-扑克迷宫(7天)",
"[自定义装扮7天,21221-提拉米苏(7天)",
"[自定义装扮7天,21222-金色海洋(7天)",
"[自定义装扮7天,21223-狮子王(7天)",
"[自定义装扮7天,21224-月圆之夜(7天)",
"[自定义装扮7天,21225-萌兔黑森林(7天)",
"[自定义装扮7天,21226-诡秘舞台(7天)",
"[自定义装扮7天,21227-紫郡猫(7天)",
"[自定义装扮7天,21228-疯帽匠(7天)",
"[自定义装扮7天,21229-白雪姬(7天)",
"[自定义装扮7天,21230-甜香蔓越莓(7天)",
"[自定义装扮7天,21231-探险奇遇(7天)",
"[自定义装扮7天,21232-侦查小队(7天)",
"[自定义装扮7天,21233-先锋探索者(7天)",
"[自定义装扮7天,21234-虹彩幻想(7天)",
"[自定义装扮7天,21235-甜心机甲(7天)",
"[自定义装扮7天,21236-未来音律(7天)",
"[自定义装扮7天,21237-幻彩节拍(7天)",
"[自定义装扮7天,21238-超能水手服(7天)",
"[自定义装扮7天,21239-机械臂(7天)",
"[自定义装扮7天,21240-机动装置(7天)",
"[自定义装扮7天,21241-夜空闪耀(7天)",
"[自定义装扮7天,21242-翡翠回响(7天)",
"[自定义装扮7天,21243-双鱼座头饰(7天)",
"[自定义装扮7天,21244-水瓶座头饰(7天)",
"[自定义装扮7天,21245-摩羯座头饰(7天)",
"[自定义装扮7天,21246-丘比特之心(7天)",
"[自定义装扮7天,21247-甜蜜之水(7天)",
"[自定义装扮7天,21248-甜心贩售机(7天)",
"[自定义装扮7天,21249-爱神的闪光(7天)",
"[自定义装扮7天,21250-暗色星辰(7天)",
"[自定义装扮7天,21251-深渊凝视(7天)",
"[自定义装扮7天,21252-暗影之炎(7天)",
"[自定义装扮7天,21253-恶魔贵族(7天)",
"[自定义装扮7天,21254-远行客(7天)",
"[自定义装扮7天,21255-巫山云雨(7天)",
"[自定义装扮7天,21256-千叶忍(7天)",
"[自定义装扮7天,21257-眸光一闪(7天)",
"[自定义装扮7天,21258-般若之面(7天)",
"[自定义装扮7天,21259-那须与一(7天)",
"[自定义装扮7天,21260-茶花物语(7天)",
"[自定义装扮7天,21261-小萌神(7天)",
"[自定义装扮7天,21262-桥姬梦语(7天)",
"[自定义装扮7天,21263-温暖甜橙(7天)",
"[自定义装扮7天,21264-凌波踏羽(7天)",
"[自定义装扮7天,21265-甜粽子(7天)",
"[自定义装扮7天,21266-咸粽子(7天)",
"[自定义装扮7天,21267-调查员鞋(7天)",
"[自定义装扮7天,21268-跳鼠兜帽(7天)",
"[自定义装扮7天,21269-科技城制服(7天)",
"[自定义装扮7天,21270-跳鼠侦查包(7天)",
"[自定义装扮7天,21271-海色云天(7天)",
"[自定义装扮7天,21272-花田少女(7天)",
"[自定义装扮7天,21273-浅海漫游(7天)",
"[自定义装扮7天,21274-休闲时刻(7天)",
"[自定义装扮7天,21275-热带风光(7天)",
"[自定义装扮7天,21276-度假背心(7天)",
"[自定义装扮7天,21277-运动汽水(7天)",
"[自定义装扮7天,21278-西瓜冰淇淋(7天)",
"[自定义装扮7天,21279-柠檬软糖(7天)",
"[自定义装扮7天,21280-夏日青柠(7天)",
"[自定义装扮7天,21281-玩水时间(7天)",
"[自定义装扮7天,21282-星光舞台(7天)",
"[自定义装扮7天,21283-天空旋律(7天)",
"[自定义装扮7天,21284-鲜脆青提(7天)",
"[自定义装扮7天,21285-莓果缤纷(7天)",
"[自定义装扮7天,21286-星河演唱会(7天)",
"[自定义装扮7天,21287-星之咏叹调(7天)",
"[自定义装扮7天,21288-森林回响(7天)",
"[自定义装扮7天,21289-黎明唱诗班(7天)",
"[自定义装扮7天,21290-月光奏鸣曲(7天)",
"[自定义装扮7天,21291-花之礼赞(7天)",
"[自定义装扮7天,21292-圣堂弦音(7天)",
"[自定义装扮7天,21293-忘川引渡(7天)",
"[自定义装扮7天,21294-能量眼罩(7天)",
"[自定义装扮7天,21295-勇士的精神(7天)",
"[自定义装扮7天,21296-能量护臂(7天)",
"[自定义装扮7天,21297-能量战靴(7天)",
"[自定义装扮7天,21298-能量头饰(7天)",
"[自定义装扮7天,21299-能量腿甲(7天)",
"[自定义装扮7天,21300-能量之铠(7天)",
"[自定义装扮7天,21301-勇者极光巨刃(7天)",
"[自定义装扮7天,21302-能量之源(7天)",
"[自定义装扮7天,21303-创造滑板(7天)",
"[自定义装扮7天,21304-全民脚印(7天)",
"[自定义装扮7天,21305-鸦面巫医(7天)",
"[自定义装扮7天,21306-子弹时间(7天)",
"[自定义装扮7天,21307-复古过滤器(7天)",
"[自定义装扮7天,21308-时间使者(7天)",
"[自定义装扮7天,21309-飞行大师(7天)",
"[自定义装扮7天,21310-蒸汽时代(7天)",
"[自定义装扮7天,21311-工艺格调(7天)",
"[自定义装扮7天,21312-昔日旅途(7天)",
"[自定义装扮7天,21313-星河目镜(7天)",
"[自定义装扮7天,21314-时间停滞(7天)",
"[自定义装扮7天,21315-明日羽翼(7天)",
"[自定义装扮7天,21316-炮火纷飞(7天)",
"[自定义装扮7天,21317-中秋祈福小兔(7天)",
"[自定义装扮7天,21318-中秋祈福月饼(7天)",
"[自定义装扮7天,21319-璨若莲华(7天)",
"[自定义装扮7天,21320-繁花拥簇(7天)",
"[自定义装扮7天,21321-浮世卿歌(7天)",
"[自定义装扮7天,21322-明月山河(7天)",
"[自定义装扮7天,21323-芳华锦年(7天)",
"[自定义装扮7天,21324-清若寒潭(7天)",
"[自定义装扮7天,21325-龙吟之昭(7天)",
"[自定义装扮7天,21326-福佑大泽(7天)",
"[自定义装扮7天,21327-长夜(7天)",
"[自定义装扮7天,21328-点浮莲(7天)",
"[自定义装扮7天,21329-寂静无声(7天)",
"[自定义装扮7天,21330-血族狂欢(7天)",
"[自定义装扮7天,21331-月下贵族(7天)",
"[自定义装扮7天,21332-暗夜派对(7天)",
"[自定义装扮7天,21333-女巫集会(7天)",
"[自定义装扮7天,21334-魔法闪光(7天)",
"[自定义装扮7天,21335-万圣绮幻夜(7天)",
"[自定义装扮7天,21336-恶魔摇滚(7天)",
"[自定义装扮7天,21337-魔法黑喵喵(7天)",
"[自定义装扮7天,21338-哭哭狼人(7天)",
"[自定义装扮7天,21339-狼狼木乃伊(7天)",
"[自定义装扮7天,21340-死神镰刀(7天)",
"[自定义装扮7天,21341-萌萌小死神(7天)",
"[自定义装扮7天,21342-南瓜脚印(7天)",
"[自定义装扮7天,21343-地穴人面具(7天)",
"[自定义装扮7天,21344-踏雨行(7天)",
"[自定义装扮7天,21345-云山月雨(7天)",
"[自定义装扮7天,21346-松柏客(7天)",
"[自定义装扮7天,21347-君子如兰(7天)",
"[自定义装扮7天,21348-娇粉(7天)",
"[自定义装扮7天,21349-粉色花海(7天)",
"[自定义装扮7天,21350-蜜桃(7天)",
"[自定义装扮7天,21351-樱色如春(7天)",
"[自定义装扮7天,21352-樱花扇面(7天)",
"[自定义装扮7天,21353-侠客靴(7天)",
"[自定义装扮7天,21354-侠客头饰(7天)",
"[自定义装扮7天,21355-元气扇(7天)",
"[自定义装扮7天,21356-桃气脚印(7天)",
"[自定义装扮7天,21357-元气侠客装(7天)",
"[自定义装扮7天,21358-魔域护卫长(7天)",
"[自定义装扮7天,21359-加冕仪式(7天)",
"[自定义装扮7天,21360-海之声(7天)",
"[自定义装扮7天,21361-深渊来客(7天)",
"[自定义装扮7天,21362-鲛人泪(7天)",
"[自定义装扮7天,21363-神明之赐(7天)",
"[自定义装扮7天,21364-怜悯无声(7天)",
"[自定义装扮7天,21365-波斯文明(7天)",
"[自定义装扮7天,21366-黄金圣裁(7天)",
"[自定义装扮7天,21367-太阳神(7天)",
"[自定义装扮7天,21368-绣球花(7天)",
"[自定义装扮7天,21369-猫之国(7天)",
"[自定义装扮7天,21370-落花有声(7天)",
"[自定义装扮7天,21371-鎏光仙境(7天)",
"[自定义装扮7天,21372-喵拳出击(7天)",
"[自定义装扮7天,21373-鲛歌海语(7天)",
"[自定义装扮7天,21374-凌波留影(7天)",
"[自定义装扮7天,21375-黑暗力量(7天)",
"[自定义装扮7天,21376-2021(7天)",
"[自定义装扮7天,21377-一棵圣诞树(7天)",
"[自定义装扮7天,21378-日暮之晕(7天)",
"[自定义装扮7天,21379-巧克力菱格(7天)",
"[自定义装扮7天,21380-星河散落(7天)",
"[自定义装扮7天,21381-咩咩的梦想(7天)",
"[自定义装扮7天,21382-炽天使之翼(7天)",
"[自定义装扮7天,21383-落雪无声(7天)",
"[自定义装扮7天,21384-山岳五行(7天)",
"[自定义装扮7天,21385-树莓糖霜(7天)",
"[自定义装扮7天,21386-青鸟拾花(7天)",
"[自定义装扮7天,21387-麋鹿头(7天)",
"[自定义装扮7天,21388-铃儿响叮当(7天)",
"[自定义装扮7天,21389-圣诞手环(7天)",
"[自定义装扮7天,21390-奇迹之夜(7天)",
"[自定义装扮7天,21391-祝福使者(7天)",
"[自定义装扮7天,21392-平安夜颂歌(7天)",
"[自定义装扮7天,21393-冬青祝福(7天)",
"[自定义装扮7天,21394-星之舞台(7天)",
"[自定义装扮7天,21395-踏寒梅(7天)",
"[自定义装扮7天,21396-哞哞奶嘴(7天)",
"[自定义装扮7天,21397-牛气冲天(7天)",
"[自定义装扮7天,21398-牛年庆典气球(7天)",
"[自定义装扮7天,21399-奶牛头套(7天)",
"[自定义装扮7天,21400-奶牛睡衣(7天)",
"[自定义装扮7天,21401-甜甜奶糖(7天)",
"[自定义装扮7天,21402-香蕉猴(7天)",
"[自定义装扮7天,21403-魔法光箭(7天)",
"[自定义装扮7天,21404-脆桃(7天)",
"[自定义装扮7天,21405-红粉佳人(7天)",
"[自定义装扮7天,21406-目光炯炯(7天)",
"[自定义装扮7天,21407-赤日行(7天)",
"[自定义装扮7天,21408-中华小厨娘(7天)",
"[自定义装扮7天,21409-夫子志(7天)",
"[自定义装扮7天,21410-龙行天下(7天)",
"[自定义装扮7天,21411-小龙女(7天)",
"[自定义装扮7天,21412-沐沐青荷(7天)",
"[自定义装扮7天,21413-汉光之翼(7天)",
"[自定义装扮7天,21414-仙宫景(7天)",
"[自定义装扮7天,21415-花语天籁(7天)",
"[自定义装扮7天,21416-菜菜春卷(7天)",
"[自定义装扮7天,21418-紫藤萝(7天)",
"[自定义装扮7天,21417-睡莲(7天)",
"[自定义装扮7天,21419-凤鸣(7天)",
"[自定义装扮7天,21420-鹿屿裳(7天)",
"[自定义装扮7天,21421-牡丹景(7天)",
"[自定义装扮7天,21423-蟠龙墨影(7天)",
"[自定义装扮7天,21422-少年意气(7天)",
"[自定义装扮7天,21424-饕餮盾(7天)",
"[自定义装扮7天,21425-惊鸿(7天)",
"[自定义装扮+,21600-邻家男孩头饰",
"[自定义装扮永久,21601-邻家男孩表情",
"[自定义装扮永久,21602-邻家男孩上衣",
"[自定义装扮永久,21603-邻家男孩裤子",
"[自定义装扮永久,21604-邻家男孩鞋子",
"[自定义装扮永久,21605-邻家女孩头饰",
"[自定义装扮永久,21606-邻家女孩表情",
"[自定义装扮永久,21607-邻家女孩连衣裙",
"[自定义装扮永久,21608-邻家女孩鞋子",
"[自定义装扮永久,21609-足球少年头饰",
"[自定义装扮永久,21610-足球少年表情",
"[自定义装扮永久,21611-足球少年上衣",
"[自定义装扮永久,21612-足球少年裤子",
"[自定义装扮永久,21613-足球少年鞋子",
"[自定义装扮永久,21614-足球宝贝头饰",
"[自定义装扮永久,21615-足球宝贝表情",
"[自定义装扮永久,21616-足球宝贝上衣",
"[自定义装扮永久,21617-足球宝贝裤子",
"[自定义装扮永久,21618-足球宝贝鞋子",
"[图标,21619-装扮金钥",
"[自定义装扮永久,21620-书包",
"[自定义装扮永久,21621-宇航员头盔",
"[自定义装扮永久,21622-宇航员表情",
"[自定义装扮永久,21623-迷你贴纸",
"[自定义装扮永久,21624-宇航员衣服",
"[自定义装扮永久,21625-宇航员背包",
"[自定义装扮永久,21626-足球贴纸",
"[自定义装扮永久,21627-大黄奶嘴",
"[自定义装扮永久,21628-西瓜冰棍",
"[自定义装扮永久,21629-度假墨镜",
"[自定义装扮永久,21630-冲浪男孩头饰",
"[自定义装扮永久,21631-冲浪男孩表情",
"[自定义装扮永久,21632-冲浪男孩上衣",
"[自定义装扮永久,21633-冲浪男孩裤子",
"[自定义装扮永久,21634-冲浪男孩鞋子",
"[自定义装扮永久,21635-冲浪板背饰",
"[自定义装扮永久,21636-海滨假日头饰",
"[自定义装扮永久,21637-海滨假日表情",
"[自定义装扮永久,21638-海滨假日上衣",
"[自定义装扮永久,21639-海滨假日裤子",
"[自定义装扮永久,21640-海滨假日鞋子",
"[自定义装扮永久,21641-海滨假日手饰",
"[自定义装扮永久,21642-浪漫绅士头饰",
"[自定义装扮永久,21643-浪漫绅士表情",
"[自定义装扮永久,21644-浪漫绅士衣服",
"[自定义装扮永久,21645-浪漫绅士裤子",
"[自定义装扮永久,21646-浪漫绅士鞋子",
"[自定义装扮永久,21647-甜心少女头饰",
"[自定义装扮永久,21648-甜心少女表情",
"[自定义装扮永久,21649-甜心少女衣服",
"[自定义装扮永久,21650-甜心少女手套",
"[自定义装扮永久,21651-甜心少女裤子",
"[自定义装扮永久,21652-甜心少女鞋子",
"[自定义装扮永久,21653-爱心唇印贴纸",
"[自定义装扮永久,21654-脚丫脚印",
"[自定义装扮永久,21655-团子脚印",
"[自定义装扮永久,21656-幻蓝脚印",
"[自定义装扮永久,21657-幻音脚印",
"[自定义装扮永久,21658-云游剑客鞋子",
"[自定义装扮永久,21659-云游剑客裤子",
"[自定义装扮永久,21660-云游剑客衣服",
"[自定义装扮永久,21661-云游剑客表情",
"[自定义装扮永久,21662-云游剑客头饰",
"[自定义装扮永久,21663-掌门千金鞋子",
"[自定义装扮永久,21664-掌门千金护手",
"[自定义装扮永久,21665-掌门千金裤子",
"[自定义装扮永久,21666-掌门千金衣服",
"[自定义装扮永久,21667-掌门千金表情",
"[自定义装扮永久,21668-掌门千金头饰",
"[自定义装扮永久,21669-满月脚印",
"[自定义装扮永久,21670-宝剑背饰",
"[自定义装扮永久,21671-披风背饰",
"[自定义装扮永久,21672-玉兔背饰",
"[自定义装扮永久,21673-五仁月饼背饰",
"[自定义装扮永久,21674-名门淑女头饰",
"[自定义装扮永久,21675-彩虹马裤子",
"[自定义装扮永久,21676-悍马头饰",
"[自定义装扮永久,21677-巡游警长鞋子",
"[自定义装扮永久,21678-巡游警长裤子",
"[自定义装扮永久,21679-巡游警长衣服",
"[自定义装扮永久,21680-巡游警长表情",
"[自定义装扮永久,21681-巡游警长头饰",
"[自定义装扮永久,21682-小恶魔背包",
"[自定义装扮永久,21683-圣诞宝贝鞋子",
"[自定义装扮永久,21684-圣诞宝贝手套",
"[自定义装扮永久,21685-圣诞宝贝裙子",
"[自定义装扮永久,21686-圣诞宝贝头饰",
"[自定义装扮永久,21687-圣诞宝贝表情",
"[自定义装扮永久,21688-圣诞宝贝披肩",
"[自定义装扮永久,21689-圣诞少年鞋子",
"[自定义装扮永久,21690-圣诞少年裤子",
"[自定义装扮永久,21691-圣诞少年衣服",
"[自定义装扮永久,21692-圣诞少年头饰",
"[自定义装扮永久,21693-圣诞少年表情",
"[自定义装扮永久,21694-冬季俏皮鞋子",
"[自定义装扮永久,21695-冬季俏皮手套",
"[自定义装扮永久,21696-冬季俏皮裙子",
"[自定义装扮永久,21697-冬季俏皮衣服",
"[自定义装扮永久,21698-冬季俏皮表情",
"[自定义装扮永久,21699-冬季俏皮头饰",
"[自定义装扮永久,21700-冬季暖风鞋子",
"[自定义装扮永久,21701-冬季暖风手套",
"[自定义装扮永久,21702-冬季暖风衣服",
"[自定义装扮永久,21703-冬季暖风表情",
"[自定义装扮永久,21704-冬季暖风头饰",
"[自定义装扮永久,21705-船长金钩",
"[自定义装扮永久,21706-大白鲨衣服",
"[自定义装扮永久,21707-大白鲨头饰",
"[自定义装扮永久,21708-橄榄球员手套",
"[自定义装扮永久,21709-橄榄球员鞋子",
"[自定义装扮永久,21710-橄榄球员裤子",
"[自定义装扮永久,21711-橄榄球员衣服",
"[自定义装扮永久,21712-橄榄球员头饰",
"[自定义装扮永久,21713-虎头鞋",
"[自定义装扮永久,21714-虎虎生风披风",
"[自定义装扮永久,21715-龙头帽头饰",
"[自定义装扮永久,21716-虎头帽头饰",
"[自定义装扮永久,21717-吉祥娃娃衣服",
"[自定义装扮永久,21718-吉祥娃娃头饰",
"[自定义装扮永久,21719-鎏金鞋子",
"[自定义装扮永久,21720-棕色灯芯绒裤",
"[自定义装扮永久,21721-鎏金马褂",
"[自定义装扮永久,21722-瓜皮帽头饰",
"[自定义装扮永久,21723-铜钱脚印",
"[自定义装扮永久,21724-王卡专属脚印",
"[自定义装扮永久,21725-王卡专属背饰",
"[自定义装扮永久,21726-王卡专属表情",
"[自定义装扮永久,21727-王卡专属衣服",
"[自定义装扮永久,21728-王卡专属头饰",
"[自定义装扮永久,21729-满福背篓",
"[自定义装扮永久,21730-摇钱树头饰",
"[自定义装扮永久,21731-橄榄球背包",
"[自定义装扮永久,21732-刀马旦头饰",
"[自定义装扮永久,21733-刀马旦表情",
"[自定义装扮永久,21734-刀马旦衣服",
"[自定义装扮永久,21735-武生头饰",
"[自定义装扮永久,21736-武生表情",
"[自定义装扮永久,21737-武生衣服",
"[自定义装扮永久,21738-春之百合头饰",
"[自定义装扮永久,21739-春之蓝菇头饰",
"[自定义装扮永久,21740-春之玫瑰头饰",
"[自定义装扮永久,21741-春之雏菊头饰",
"[自定义装扮永久,21742-胖哒帽衫",
"[自定义装扮永久,21743-天珠外套",
"[自定义装扮永久,21744-狂欢之舞头饰",
"[自定义装扮永久,21745-狂欢之舞背饰",
"[自定义装扮永久,21746-猪猪头饰",
"[自定义装扮永久,21747-小机灵表情",
"[自定义装扮永久,21748-星星眼表情",
"[自定义装扮永久,21749-粉红可爱表情",
"[自定义装扮永久,21750-青灰呆萌表情",
"[自定义装扮永久,21751-深红喜悦表情",
"[自定义装扮永久,21752-春之百合裙子",
"[自定义装扮永久,21753-春之雏菊裙子",
"[自定义装扮永久,21754-春之玫瑰裙子",
"[自定义装扮永久,21755-春之蓝菇裙子",
"[自定义装扮永久,21756-春之翼",
"[自定义装扮永久,21757-青春校园衣服",
"[自定义装扮永久,21758-青春校园裤子",
"[自定义装扮永久,21759-青春校园鞋子",
"[自定义装扮永久,21760-青春校园书包",
"[自定义装扮永久,21761-青春校园脚印",
"[自定义装扮永久,21762-安吉洛斯脚印",
"[自定义装扮永久,21763-安吉洛斯羽翼",
"[自定义装扮永久,21764-泰风优雅裙子",
"[自定义装扮永久,21765-泰风优雅披肩",
"[自定义装扮永久,21766-泰风清凉短裤",
"[自定义装扮永久,21767-泰风清凉短袖",
"[自定义装扮永久,21768-复古单片眼镜",
"[自定义装扮永久,21769-蓝色小清新头饰",
"[自定义装扮永久,21770-校园男孩头饰",
"[自定义装扮永久,21771-高冷白发头饰",
"[自定义装扮永久,21772-小熊玩偶背包",
"[自定义装扮永久,21773-小熊印花短袖",
"[自定义装扮永久,21774-小熊发卡头饰",
"[自定义装扮永久,21775-粉红兔鞋子",
"[自定义装扮永久,21776-粉红兔手套",
"[自定义装扮永久,21777-兔尾巴短裤",
"[自定义装扮永久,21778-粉红兔衣服",
"[自定义装扮永久,21779-粉红兔头饰",
"[自定义装扮永久,21780-彩蛋背包",
"[自定义装扮永久,21781-胡萝卜背包",
"[自定义装扮永久,21782-白羊座表情",
"[自定义装扮永久,21783-白羊座头饰",
"[自定义装扮永久,21784-元气满满表情",
"[自定义装扮永久,21785-傲娇脸表情",
"[自定义装扮永久,21786-眼前一亮表情",
"[自定义装扮永久,21787-卖萌可爱表情",
"[自定义装扮永久,21788-偷瞄脸表情",
"[自定义装扮永久,21789-电力四射表情",
"[自定义装扮永久,21790-帅气中分头饰",
"[自定义装扮永久,21791-海洋之风头饰",
"[自定义装扮永久,21792-小小水手头饰",
"[自定义装扮永久,21793-猫系少女头饰",
"[自定义装扮永久,21794-凌乱少年头饰",
"[自定义装扮永久,21795-粉红俏皮头饰",
"[自定义装扮永久,21796-贪睡小猫头饰",
"[自定义装扮永久,21797-贪睡小猫衣服",
"[自定义装扮永久,21798-黄白之恋裙子",
"[自定义装扮永久,21799-和风卫衣",
"[自定义装扮永久,21800-小猫背带套装",
"[自定义装扮永久,21801-一字肩上衣",
"[自定义装扮永久,21802-英伦风衣",
"[自定义装扮永久,21803-小淘气背心",
"[自定义装扮永久,21804-连袜短裙",
"[自定义装扮永久,21805-水手短裤",
"[自定义装扮永久,21806-绅士短裤",
"[自定义装扮永久,21807-紫魅短裙",
"[自定义装扮永久,21808-小熊鞋子",
"[自定义装扮永久,21809-猫咪短靴",
"[自定义装扮永久,21810-蝴蝶鞋子",
"[自定义装扮永久,21811-猫咪拖鞋",
"[自定义装扮永久,21812-绅士布鞋",
"[自定义装扮永久,21813-活力帆布鞋",
"[自定义装扮永久,21814-复古圆框眼镜",
"[自定义装扮永久,21815-复古方框眼镜",
"[自定义装扮永久,21816-彩虹手环",
"[自定义装扮永久,21817-金牛座表情",
"[自定义装扮永久,21818-金牛座头饰",
"[自定义装扮永久,21819-电玩大神表情",
"[自定义装扮永久,21820-超级电玩眼镜",
"[自定义装扮永久,21821-超级电玩背包",
"[自定义装扮永久,21822-电玩大脚印",
"[自定义装扮永久,21823-挑战者衣服",
"[自定义装扮永久,21824-挑战者头饰",
"[自定义装扮永久,21825-挑战者背包",
"[自定义装扮永久,21826-挑战者面饰",
"[自定义装扮永久,21827-挑战者手套",
"[自定义装扮永久,21828-挑战者表情",
"[自定义装扮永久,21829-游戏大咖头饰",
"[自定义装扮永久,21830-游戏大咖外套",
"[自定义装扮永久,21831-游戏大咖裤子",
"[自定义装扮永久,21832-游戏大咖鞋子",
"[自定义装扮永久,21833-游戏女神头饰",
"[自定义装扮永久,21834-游戏女神外套",
"[自定义装扮永久,21835-游戏女神短裤",
"[自定义装扮永久,21836-游戏女神鞋子",
"[自定义装扮永久,21837-大发现表情",
"[自定义装扮永久,21838-认真表情",
"[自定义装扮永久,21839-自信微笑表情",
"[自定义装扮永久,21840-贪玩喵喵表情",
"[自定义装扮永久,21841-惊讶表情",
"[自定义装扮永久,21842-俏皮坏笑表情",
"[自定义装扮永久,21843-喷气飞翼",
"[自定义装扮永久,21844-螺旋飞翼",
"[自定义装扮永久,21845-化学增强枪",
"[自定义装扮永久,21846-超能战喵背包",
"[自定义装扮永久,21847-战地通讯员绷带",
"[自定义装扮永久,21848-科幻羽翼鞋子",
"[自定义装扮永久,21849-废土运动鞋",
"[自定义装扮永久,21850-粒子动能长靴",
"[自定义装扮永久,21851-未来机甲鞋子",
"[自定义装扮永久,21852-机械战警腿甲",
"[自定义装扮永久,21853-战地通讯员头饰",
"[自定义装扮永久,21854-未来士兵头饰",
"[自定义装扮永久,21855-废土护目镜头饰",
"[自定义装扮永久,21856-超能战喵头饰",
"[自定义装扮永久,21857-机械青蛙头饰",
"[自定义装扮永久,21858-战地通讯员上衣",
"[自定义装扮永久,21859-废土披风",
"[自定义装扮永久,21860-探险者外套",
"[自定义装扮永久,21861-未来魔法披风",
"[自定义装扮永久,21862-机甲大神上衣",
"[自定义装扮永久,21863-收集者裤子",
"[自定义装扮永久,21864-能源绑带短裤",
"[自定义装扮永久,21865-科幻时尚短裤",
"[自定义装扮永久,21866-机器猫尾裤子",
"[自定义装扮永久,21867-机甲运动短裤",
"[自定义装扮永久,21868-双子座表情",
"[自定义装扮永久,21869-双子座头饰",
"[自定义装扮永久,21870-海上女王头饰",
"[自定义装扮永久,21871-海上女王长裙",
"[自定义装扮永久,21872-海上女王鞋子",
"[自定义装扮永久,21873-奇迹之子头饰",
"[自定义装扮永久,21874-奇迹之子衣服",
"[自定义装扮永久,21875-奇迹之子腕甲",
"[自定义装扮永久,21876-迷你英雄战斗服",
"[自定义装扮永久,21877-迷你英雄斗篷",
"[自定义装扮永久,21878-小王子上衣",
"[自定义装扮永久,21879-小王子马裤",
"[自定义装扮永久,21880-小王子马靴",
"[自定义装扮永久,21881-小王子头冠",
"[自定义装扮永久,21882-小公主裙子",
"[自定义装扮永久,21883-小公主长袜",
"[自定义装扮永久,21884-小公主鞋子",
"[自定义装扮永久,21885-小公主头冠",
"[自定义装扮永久,21886-小仙女翅膀",
"[自定义装扮永久,21887-小王子表情",
"[自定义装扮永久,21888-小公主表情",
"[自定义装扮永久,21889-机械拳套",
"[自定义装扮永久,21890-小公主手套",
"[自定义装扮永久,21891-佐罗面具",
"[自定义装扮永久,21892-个性涂鸦背包",
"[自定义装扮永久,21893-流浪乐手背饰",
"[自定义装扮永久,21894-潮流口罩",
"[自定义装扮永久,21895-甜心宝贝背包",
"[自定义装扮永久,21896-仙人花花背饰",
"[自定义装扮永久,21897-绣花汉服鞋子",
"[自定义装扮永久,21898-初夏暖阳凉鞋",
"[自定义装扮永久,21899-酷酷棒球帽",
"[自定义装扮永久,21900-嘻哈风头饰",
"[自定义装扮永久,21901-豆蔻年华头饰",
"[自定义装扮永久,21902-蝴蝶结包包头",
"[自定义装扮永久,21903-暖暖小黄帽",
"[自定义装扮永久,21904-小水手头饰",
"[自定义装扮永久,21905-远洋海风裙子",
"[自定义装扮永久,21906-个性少年裤子",
"[自定义装扮永久,21907-采花少女裙子",
"[自定义装扮永久,21908-小海军连衣裙",
"[自定义装扮永久,21909-船长背带裤",
"[自定义装扮永久,21910-水手衣服",
"[自定义装扮永久,21911-小海军衣服",
"[自定义装扮永久,21912-小清新衣服",
"[自定义装扮永久,21913-酷炫街舞衣服",
"[自定义装扮永久,21914-孟夏佳人裙子",
"[自定义装扮永久,21915-墨西哥宽边帽",
"[自定义装扮永久,21916-端午汉服",
"[自定义装扮永久,21917-粽子背包",
"[自定义装扮永久,21918-小迷糊表情",
"[自定义装扮永久,21919-疾风弓箭",
"[自定义装扮永久,21920-富运达摩背饰",
"[自定义装扮永久,21921-武士刀背饰",
"[自定义装扮永久,21922-猫咪手套",
"[自定义装扮永久,21923-妖狐尾背饰",
"[自定义装扮永久,21924-甜甜游泳圈",
"[自定义装扮永久,21925-二齿木屐",
"[自定义装扮永久,21926-猫耳头饰",
"[自定义装扮永久,21927-甜心马尾头饰",
"[自定义装扮永久,21928-狐耳头饰",
"[自定义装扮永久,21929-立夏花火头饰",
"[自定义装扮永久,21930-妖狐面具头饰",
"[自定义装扮永久,21931-和风百褶裙",
"[自定义装扮永久,21932-神奈川短裤",
"[自定义装扮永久,21933-妖怪羽织",
"[自定义装扮永久,21934-樱花背心",
"[自定义装扮永久,21935-稻禾巫女服",
"[自定义装扮永久,21936-祈福狩衣",
"[自定义装扮永久,21937-金鱼姬裙子",
"[自定义装扮永久,21938-弓道服",
"[自定义装扮永久,21939-日式工匠服",
"[自定义装扮永久,21940-夏日点点泳衣",
"[自定义装扮永久,21941-海滩休闲衬衫",
"[自定义装扮永久,21942-巨蟹座表情",
"[自定义装扮永久,21943-巨蟹座头饰",
"[自定义装扮永久,21944-气鼓鼓表情",
"[自定义装扮永久,21945-楚楚可怜表情",
"[自定义装扮永久,21946-桃香幸缘表情",
"[自定义装扮永久,21947-甜夏西瓜表情",
"[自定义装扮永久,21948-俏狐狸表情",
"[自定义装扮永久,21949-剑客行表情",
"[自定义装扮永久,21950-梅香罗伞",
"[自定义装扮永久,21951-桃花琵琶",
"[自定义装扮永久,21952-蔷薇眼罩",
"[自定义装扮永久,21953-金丝面纱",
"[自定义装扮永久,21954-金丝踏云靴",
"[自定义装扮永久,21955-玛丽珍鞋",
"[自定义装扮永久,21956-陌上人如玉",
"[自定义装扮永久,21957-公子世无双",
"[自定义装扮永久,21958-雕金乌纱帽",
"[自定义装扮永久,21959-江南印象头饰",
"[自定义装扮永久,21960-红尘醉头饰",
"[自定义装扮永久,21961-云纹短裤",
"[自定义装扮永久,21962-千鸳短裤",
"[自定义装扮永久,21963-芍药天香上衣",
"[自定义装扮永久,21964-竹笙锦瑟上衣",
"[自定义装扮永久,21965-民国故事上衣",
"[自定义装扮永久,21966-木棉旗袍",
"[自定义装扮永久,21967-素喜衣裳",
"[自定义装扮永久,21968-故人听竹",
"[自定义装扮永久,21969-翻云绘长歌",
"[自定义装扮永久,21970-金丝墨云锦袍",
"[自定义装扮永久,21971-樱花脚印",
"[自定义装扮永久,21972-猫咪脚印",
"[自定义装扮永久,21973-玩偶甜心表情",
"[自定义装扮永久,21974-小虎牙表情",
"[自定义装扮永久,21975-异瞳坏笑表情",
"[自定义装扮永久,21976-嘟嘟嘴表情",
"[自定义装扮永久,21977-魔法甜心表情",
"[自定义装扮永久,21978-纯白纱布眼罩",
"[自定义装扮永久,21979-海豹宝宝背包",
"[自定义装扮永久,21980-小恶魔翅膀",
"[自定义装扮永久,21981-蕾丝手袖",
"[自定义装扮永久,21982-白色罗马鞋",
"[自定义装扮永久,21983-红熊拖鞋",
"[自定义装扮永久,21984-探险马丁靴",
"[自定义装扮永久,21985-星间飞行凉鞋",
"[自定义装扮永久,21986-雪精灵编发",
"[自定义装扮永久,21987-恶魔角头饰",
"[自定义装扮永久,21988-朴素礼帽",
"[自定义装扮永久,21989-羊羊爱丽丝",
"[自定义装扮永久,21990-纸箱头",
"[自定义装扮永久,21991-斑马长筒袜",
"[自定义装扮永久,21992-独角兽少女裙子",
"[自定义装扮永久,21993-机能上衣",
"[自定义装扮永久,21994-潮流绅士",
"[自定义装扮永久,21995-蔷薇故事",
"[自定义装扮永久,21996-梦游仙境",
"[自定义装扮永久,21997-星夜衬衫",
"[自定义装扮永久,21998-海豹夹克",
"[自定义装扮永久,21999-牛仔背带裤",
"[自定义装扮永久,22000-爱心牛仔裙",
"[自定义装扮永久,22001-狮子座头饰",
"[自定义装扮永久,22002-狮子座表情",
"[自定义装扮永久,22003-调皮吐舌表情",
"[自定义装扮永久,22004-龇牙表情",
"[自定义装扮永久,22005-嘟嘴呆萌表情",
"[自定义装扮永久,22006-暖心微笑表情",
"[自定义装扮永久,22007-爱心创口贴",
"[自定义装扮永久,22008-荧光手表",
"[自定义装扮永久,22009-简约黑红鞋子",
"[自定义装扮永久,22010-摇滚皮靴",
"[自定义装扮永久,22011-复古牛津鞋",
"[自定义装扮永久,22012-海盗热裤",
"[自定义装扮永久,22013-撞色风暴",
"[自定义装扮永久,22014-萌动百褶裙",
"[自定义装扮永久,22015-机车少女背心",
"[自定义装扮永久,22016-魔力少女外套",
"[自定义装扮永久,22017-荧光闪点外套",
"[自定义装扮永久,22018-糖果甜心头饰",
"[自定义装扮永久,22019-电音小子头饰",
"[自定义装扮永久,22020-喵喵耳机头饰",
"[自定义装扮永久,22021-处女座头饰",
"[自定义装扮永久,22022-处女座表情",
"[自定义装扮永久,22023-豆豆眉表情",
"[自定义装扮永久,22024-糖果猫咪表情",
"[自定义装扮永久,22025-琥珀鼓气表情",
"[自定义装扮永久,22026-乖巧萌宠表情",
"[自定义装扮永久,22027-狗狗贴纸",
"[自定义装扮永久,22028-秋田犬爪套",
"[自定义装扮永久,22029-精致小皮鞋",
"[自定义装扮永久,22030-剑侠绑腿靴",
"[自定义装扮永久,22031-粉莲绣花鞋",
"[自定义装扮永久,22032-简约篮球鞋",
"[自定义装扮永久,22033-西装裤",
"[自定义装扮永久,22034-浅溪短裙",
"[自定义装扮永久,22035-牛仔潮服",
"[自定义装扮永久,22036-甜心洛可可",
"[自定义装扮永久,22037-明月几时有",
"[自定义装扮永久,22038-五仁共团圆",
"[自定义装扮永久,22039-繁花波奈特",
"[自定义装扮永久,22040-绅士帽子",
"[自定义装扮永久,22041-玉兔头饰",
"[自定义装扮永久,22042-皓月童子",
"[自定义装扮永久,22043-针织狐狸帽",
"[自定义装扮永久,22044-公牛队篮球服",
"[自定义装扮永久,22045-湖人队篮球服",
"[自定义装扮永久,22046-开拓者队篮球服",
"[自定义装扮永久,22047-猛龙队篮球服",
"[自定义装扮永久,22048-雄鹿队篮球服",
"[自定义装扮永久,22049-勇士队篮球服",
"[自定义装扮永久,22050-野性光辉",
"[自定义装扮永久,22051-扑克谜语",
"[自定义装扮永久,22052-龙甲冰珠玉佩",
"[自定义装扮永久,22053-小龙背包",
"[自定义装扮永久,22054-同福酒坛",
"[自定义装扮永久,22055-溪间语手链",
"[自定义装扮永久,22056-甜点兔背包",
"[自定义装扮永久,22057-甜心猫尾",
"[自定义装扮永久,22058-锦瑟翻边靴",
"[自定义装扮永久,22059-红缨甲靴",
"[自定义装扮永久,22060-随性穿搭",
"[自定义装扮永久,22061-格子物语",
"[自定义装扮永久,22062-破洞牛仔裤",
"[自定义装扮永久,22063-星愿蓬蓬裙",
"[自定义装扮永久,22064-霸王甲",
"[自定义装扮永久,22065-盛唐舞裙",
"[自定义装扮永久,22066-糖果恶魔",
"[自定义装扮永久,22067-大檐帽头饰",
"[自定义装扮永久,22068-炽日头饰",
"[自定义装扮永久,22069-战英豪",
"[自定义装扮永久,22070-飞天发髻",
"[自定义装扮永久,22071-战火燎原",
"[自定义装扮永久,22072-天秤座表情",
"[自定义装扮永久,22073-天秤座头饰",
"[自定义装扮永久,22074-星花飞舞",
"[自定义装扮永久,22075-凤纹奥黛服饰",
"[自定义装扮永久,22076-繁花奥黛头饰",
"[自定义装扮永久,22077-古灵精怪表情",
"[自定义装扮永久,22078-萌呆呆表情",
"[自定义装扮永久,22079-粉红泡泡表情",
"[自定义装扮永久,22080-幸福紫表情",
"[自定义装扮永久,22081-不规则特性",
"[自定义装扮永久,22082-狗狗短裤",
"[自定义装扮永久,22083-百变系带靴",
"[自定义装扮永久,22084-南瓜小恶魔",
"[自定义装扮永久,22085-埃及头饰",
"[自定义装扮永久,22086-魔法南瓜头饰",
"[自定义装扮永久,22087-木乃伊头饰",
"[自定义装扮永久,22088-南瓜宝宝头饰",
"[自定义装扮永久,22089-星星女巫头饰",
"[自定义装扮永久,22090-天蝎座头饰",
"[自定义装扮永久,22091-万圣小女巫",
"[自定义装扮永久,22092-万圣魔法使",
"[自定义装扮永久,22093-提灯小幽灵",
"[自定义装扮永久,22094-魔法扫帚",
"[自定义装扮永久,22095-不给糖就捣蛋",
"[自定义装扮永久,22096-蓝焰脚印",
"[自定义装扮永久,22097-小狐仙表情",
"[自定义装扮永久,22098-深海之谜表情",
"[自定义装扮永久,22099-红粉轻甜表情",
"[自定义装扮永久,22100-黄金瞳表情",
"[自定义装扮永久,22101-额间朱砂表情",
"[自定义装扮永久,22102-英伦小皮鞋",
"[自定义装扮永久,22103-深秋时节",
"[自定义装扮永久,22104-恋恋心情",
"[自定义装扮永久,22105-海豹学园制服",
"[自定义装扮永久,22106-未来之翼",
"[自定义装扮永久,22107-暖心堆堆袜",
"[自定义装扮永久,22108-轻松板鞋",
"[自定义装扮永久,22109-迷彩工装裤",
"[自定义装扮永久,22110-冬季水手服",
"[自定义装扮永久,22111-暖冬物语",
"[自定义装扮永久,22112-哈士奇卫衣",
"[自定义装扮永久,22113-极客卫衣",
"[自定义装扮永久,22114-冬之礼服",
"[自定义装扮永久,22115-恋冬之歌",
"[自定义装扮永久,22116-爱宠出游",
"[自定义装扮永久,22117-绒绒小黄鸭",
"[自定义装扮永久,22118-沉默编织",
"[自定义装扮永久,22119-丝带情结",
"[自定义装扮永久,22120-哈士奇头套",
"[自定义装扮永久,22121-射手座头饰",
"[自定义装扮永久,22122-2020年度眼镜",
"[自定义装扮永久,22123-圣诞老人胡子",
"[自定义装扮永久,22124-初雪莲棠",
"[自定义装扮永久,22125-步步高升",
"[自定义装扮永久,22126-敛芳菲",
"[自定义装扮永久,22127-萌鼠头饰",
"[自定义装扮永久,22128-绵绵鼠圆帽",
"[自定义装扮永久,22129-龙子发冠",
"[自定义装扮永久,22130-丁香结",
"[自定义装扮永久,22131-墨云染",
"[自定义装扮永久,22132-玲珑送福",
"[自定义装扮永久,22133-吉星高照",
"[自定义装扮永久,22134-花开富贵",
"[自定义装扮永久,22135-锦绣山河",
"[自定义装扮永久,22136-礼物盒脚印",
"[自定义装扮永久,22137-星光奇迹",
"[自定义装扮永久,22138-铃儿叮当",
"[自定义装扮永久,22139-姜饼人奇遇",
"[自定义装扮永久,22140-圣夜之愿",
"[自定义装扮永久,22141-缤纷回响",
"[自定义装扮永久,22142-奇妙圣诞夜",
"[自定义装扮永久,22143-平安夜的礼物",
"[自定义装扮永久,22144-米兔",
"[自定义装扮永久,22145-庄严典礼",
"[自定义装扮永久,22146-小胡子",
"[自定义装扮永久,22147-英式筒靴",
"[自定义装扮永久,22148-胡桃夹子",
"[自定义装扮永久,22149-皇室礼仪",
"[自定义装扮永久,22150-年画鼠",
"[自定义装扮永久,22151-步步迎福",
"[自定义装扮永久,22152-子鼠玩偶背包",
"[自定义装扮永久,22153-金鱼腰坠",
"[自定义装扮永久,22154-童趣",
"[自定义装扮永久,22155-暗纹绑手",
"[自定义装扮永久,22156-华光映莲",
"[自定义装扮永久,22157-桃花笑",
"[自定义装扮永久,22158-狐步舞",
"[自定义装扮永久,22159-中国结短靴",
"[自定义装扮永久,22160-芳华之舞",
"[自定义装扮永久,22161-穿个灯笼",
"[自定义装扮永久,22162-金铃如意",
"[自定义装扮永久,22163-锦鲤抄",
"[自定义装扮永久,22164-爆竹声声",
"[自定义装扮永久,22165-送福童子",
"[自定义装扮永久,22166-长生结",
"[自定义装扮永久,22167-踏云来",
"[自定义装扮永久,22168-书声琅琅",
"[自定义装扮永久,22169-万卷书",
"[自定义装扮永久,22170-云中月",
"[自定义装扮永久,22171-踏粉莲",
"[自定义装扮永久,22172-花中曲",
"[自定义装扮永久,22173-陌上繁花",
"[自定义装扮永久,22174-豆蔻语",
"[自定义装扮永久,22175-盛放",
"[自定义装扮永久,22176-锦绣缘",
"[自定义装扮永久,22177-琳琅",
"[自定义装扮永久,22178-凤舞倾城",
"[自定义装扮永久,22179-桃花灼灼",
"[自定义装扮永久,22180-荣光",
"[自定义装扮永久,22181-御云天",
"[自定义装扮永久,22182-琼宇",
"[自定义装扮永久,22183-龙吟盛世",
"[自定义装扮永久,22184-盘龙织影",
"[自定义装扮永久,22185-鸦语蔷薇",
"[自定义装扮永久,22186-沁桃红酒",
"[自定义装扮永久,22187-暗红舞步",
"[自定义装扮永久,22188-虚荣王座",
"[自定义装扮永久,22189-红皇后",
"[自定义装扮永久,22190-纷乱深渊",
"[自定义装扮永久,22191-龙骨十字",
"[自定义装扮永久,22192-魔法时间",
"[自定义装扮永久,22193-正义视线",
"[自定义装扮永久,22194-魔法阵脚印",
"[自定义装扮永久,22195-狮心王权",
"[自定义装扮永久,22196-荣誉圣骑",
"[自定义装扮永久,22197-英骑之魂",
"[自定义装扮永久,22198-钻石星辰",
"[自定义装扮永久,22199-纯白桂冠",
"[自定义装扮永久,22200-白皇后",
"[自定义装扮永久,22201-健康守护者",
"[自定义装扮永久,22202-金丝猴玩偶",
"[自定义装扮永久,22203-雪豹守护者(女)",
"[自定义装扮永久,22204-糖果运动鞋",
"[自定义装扮永久,22205-雪豹守护者(男)",
"[自定义装扮永久,22206-炫彩运动鞋",
"[自定义装扮永久,22207-雪豹玩偶",
"[自定义装扮永久,22208-孔雀开屏",
"[自定义装扮永久,22209-雀翎背带裙",
"[自定义装扮永久,22210-萌动鼠兔",
"[自定义装扮永久,22211-包裹鼠兔",
"[自定义装扮永久,22212-滚滚来袭",
"[自定义装扮永久,22213-软绒豹尾背饰",
"[自定义装扮永久,22214-极地短靴",
"[自定义装扮永久,22215-高原贵族",
"[自定义装扮永久,22216-雪域领主",
"[自定义装扮永久,22217-绒绒雪地靴",
"[自定义装扮永久,22218-高原公主",
"[自定义装扮永久,22219-雪域蔷薇",
"[自定义装扮永久,22220-踏雪寻踪",
"[自定义装扮永久,22221-扑克迷宫",
"[自定义装扮永久,22222-提拉米苏",
"[自定义装扮永久,22223-金色海洋",
"[自定义装扮永久,22224-狮子王",
"[自定义装扮永久,22225-月圆之夜",
"[自定义装扮永久,22226-萌兔黑森林",
"[自定义装扮永久,22227-诡秘舞台",
"[自定义装扮永久,22228-紫郡猫",
"[自定义装扮永久,22229-疯帽匠",
"[自定义装扮永久,22230-白雪姬",
"[自定义装扮永久,22231-甜香蔓越莓",
"[自定义装扮永久,22232-探险奇遇",
"[自定义装扮永久,22233-侦查小队",
"[自定义装扮永久,22234-先锋探索者",
"[自定义装扮永久,22235-彩虹幻想",
"[自定义装扮永久,22236-甜心机甲",
"[自定义装扮永久,22237-未来音律",
"[自定义装扮永久,22238-幻彩节拍",
"[自定义装扮永久,22239-超能水手服",
"[自定义装扮永久,22240-机械臂",
"[自定义装扮永久,22241-机动装置",
"[自定义装扮永久,22242-夜空闪耀",
"[自定义装扮永久,22243-翡翠回响",
"[自定义装扮永久,22244-双鱼座头饰",
"[自定义装扮永久,22245-水瓶座头饰",
"[自定义装扮永久,22246-摩羯座头饰",
"[自定义装扮永久,22232-探险奇遇",
"[自定义装扮永久,22233-侦查小队",
"[自定义装扮永久,22234-先锋探索者",
"[自定义装扮永久,22235-虹彩幻想",
"[自定义装扮永久,22236-甜心机甲",
"[自定义装扮永久,22237-未来音律",
"[自定义装扮永久,22238-幻彩节拍",
"[自定义装扮永久,22239-超能水手服",
"[自定义装扮永久,22240-机械臂",
"[自定义装扮永久,22241-机动装置",
"[自定义装扮永久,22242-夜空闪耀",
"[自定义装扮永久,22243-翡翠回响",
"[自定义装扮永久,22244-双鱼座头饰",
"[自定义装扮永久,22245-水瓶座头饰",
"[自定义装扮永久,22246-摩羯座头饰",
"[自定义装扮永久,22247-丘比特之心",
"[自定义装扮永久,22248-甜蜜之水",
"[自定义装扮永久,22249-甜心贩售机",
"[自定义装扮永久,22250-爱神的闪光",
"[自定义装扮永久,22251-暗色星辰",
"[自定义装扮永久,22252-深渊凝视",
"[自定义装扮永久,22253-暗影之炎",
"[自定义装扮永久,22254-恶魔贵族",
"[自定义装扮永久,22255-远行客",
"[自定义装扮永久,22256-巫山云雨",
"[自定义装扮永久,22257-千叶忍",
"[自定义装扮永久,22258-眸光一闪",
"[自定义装扮永久,22259-般若之面",
"[自定义装扮永久,22260-那须与一",
"[自定义装扮永久,22261-茶花物语",
"[自定义装扮永久,22262-小萌神",
"[自定义装扮永久,22263-桥姬梦语",
"[自定义装扮永久,22264-温暖甜橙",
"[自定义装扮永久,22265-凌波踏羽",
"[自定义装扮永久,22266-甜粽子",
"[自定义装扮永久,22267-咸粽子",
"[自定义装扮永久,22268-调查员鞋",
"[自定义装扮永久,22269-跳鼠兜帽",
"[自定义装扮永久,22270-科技城制服",
"[自定义装扮永久,22271-跳鼠侦查包",
"[自定义装扮永久,22272-海色云天",
"[自定义装扮永久,22273-花田少女",
"[自定义装扮永久,22274-浅海漫游",
"[自定义装扮永久,22275-休闲时刻",
"[自定义装扮永久,22276-热带风光",
"[自定义装扮永久,22277-度假背心",
"[自定义装扮永久,22278-运动汽水",
"[自定义装扮永久,22279-西瓜冰淇淋",
"[自定义装扮永久,22280-柠檬软糖",
"[自定义装扮永久,22281-夏日青柠",
"[自定义装扮永久,22282-玩水时间",
"[自定义装扮永久,22283-星光舞台",
"[自定义装扮永久,22284-天空旋律",
"[自定义装扮永久,22285-鲜脆青提",
"[自定义装扮永久,22286-莓果缤纷",
"[自定义装扮永久,22287-星河演唱会",
"[自定义装扮永久,22288-星之咏叹调",
"[自定义装扮永久,22289-森林回响",
"[自定义装扮永久,22290-黎明唱诗班",
"[自定义装扮永久,22291-月光奏鸣曲",
"[自定义装扮永久,22292-花之礼赞",
"[自定义装扮永久,22293-圣堂弦音",
"[自定义装扮永久,22294-忘川引渡",
"[自定义装扮永久,22295-能量眼罩",
"[自定义装扮永久,22296-勇士的精神",
"[自定义装扮永久,22297-能量护臂",
"[自定义装扮永久,22298-能量战靴",
"[自定义装扮永久,22299-能量头饰",
"[自定义装扮永久,22300-能量腿甲",
"[自定义装扮永久,22301-能量之铠",
"[自定义装扮永久,22302-勇者极光巨刃",
"[自定义装扮永久,22303-能量之源",
"[自定义装扮永久,22304-创造滑板",
"[自定义装扮永久,22305-全民脚印",
"[自定义装扮永久,22306-鸦面巫医",
"[自定义装扮永久,22307-子弹时间",
"[自定义装扮永久,22308-复古过滤器",
"[自定义装扮永久,22309-时间使者",
"[自定义装扮永久,22310-飞行大师",
"[自定义装扮永久,22311-蒸汽时代",
"[自定义装扮永久,22312-工艺格调",
"[自定义装扮永久,22313-昔日旅途",
"[自定义装扮永久,22314-星河目镜",
"[自定义装扮永久,22315-时间停滞",
"[自定义装扮永久,22316-明日羽翼",
"[自定义装扮永久,22317-炮火纷飞",
"[自定义装扮永久,22318-中秋祈福小兔",
"[自定义装扮永久,22319-中秋祈福月饼",
"[自定义装扮永久,22320-璨若莲华",
"[自定义装扮永久,22321-繁花拥簇",
"[自定义装扮永久,22322-浮世卿歌",
"[自定义装扮永久,22323-明月山河",
"[自定义装扮永久,22324-芳华锦年",
"[自定义装扮永久,22325-清若寒潭",
"[自定义装扮永久,22326-龙吟之昭",
"[自定义装扮永久,22327-福佑大泽",
"[自定义装扮永久,22328-长夜",
"[自定义装扮永久,22329-点浮莲",
"[自定义装扮永久,22330-寂静无声",
"[自定义装扮永久,22331-血族狂欢",
"[自定义装扮永久,22332-月下贵族",
"[自定义装扮永久,22333-暗夜派对",
"[自定义装扮永久,22334-女巫集会",
"[自定义装扮永久,22335-魔法闪光",
"[自定义装扮永久,22336-万圣绮幻夜",
"[自定义装扮永久,22337-恶魔摇滚",
"[自定义装扮永久,22338-魔法黑喵喵",
"[自定义装扮永久,22339-哭哭狼人",
"[自定义装扮永久,22340-狼狼木乃伊",
"[自定义装扮永久,22341-死神镰刀",
"[自定义装扮永久,22342-萌萌小死神",
"[自定义装扮永久,22343-南瓜脚印",
"[自定义装扮永久,22344-地穴人面具",
"[自定义装扮永久,22345-踏雨行",
"[自定义装扮永久,22346-云山月雨",
"[自定义装扮永久,22347-松柏客",
"[自定义装扮永久,22348-君子如兰",
"[自定义装扮永久,22349-娇粉",
"[自定义装扮永久,22350-粉色花海",
"[自定义装扮永久,22351-蜜桃",
"[自定义装扮永久,22352-樱色如春",
"[自定义装扮永久,22353-樱花扇面",
"[自定义装扮永久,22354-侠客靴",
"[自定义装扮永久,22355-侠客头饰",
"[自定义装扮永久,22356-元气扇",
"[自定义装扮永久,22357-桃气脚印",
"[自定义装扮永久,22358-元气侠客装",
"[自定义装扮永久,22359-魔域护卫长",
"[自定义装扮永久,22360-加冕仪式",
"[自定义装扮永久,22361-海之声",
"[自定义装扮永久,22362-深渊来客",
"[自定义装扮永久,22363-鲛人泪",
"[自定义装扮永久,22364-神明之赐",
"[自定义装扮永久,22365-怜悯无声",
"[自定义装扮永久,22366-波斯文明",
"[自定义装扮永久,22367-黄金圣裁",
"[自定义装扮永久,22368-太阳神",
"[自定义装扮永久,22369-绣球花",
"[自定义装扮永久,22370-猫之国",
"[自定义装扮永久,22371-落花有声",
"[自定义装扮永久,22372-鎏光仙境",
"[自定义装扮永久,22373-喵拳出击",
"[自定义装扮永久,22374-鲛歌海语",
"[自定义装扮永久,22375-凌波留影",
"[自定义装扮永久,22376-黑暗力量",
"[自定义装扮永久,22377-2021",
"[自定义装扮永久,22378-一棵圣诞树",
"[自定义装扮永久,22379-日暮之晕",
"[自定义装扮永久,22380-巧克力菱格",
"[自定义装扮永久,22381-星河散落",
"[自定义装扮永久,22382-咩咩的梦想",
"[自定义装扮永久,22383-炽天使之翼",
"[自定义装扮永久,22384-落雪无声",
"[自定义装扮永久,22385-山岳五行",
"[自定义装扮永久,22386-树莓糖霜",
"[自定义装扮永久,22387-青鸟拾花",
"[自定义装扮永久,22388-麋鹿头",
"[自定义装扮永久,22389-铃儿响叮当",
"[自定义装扮永久,22390-圣诞手环",
"[自定义装扮永久,22391-奇迹之夜",
"[自定义装扮永久,22392-祝福使者",
"[自定义装扮永久,22393-平安夜颂歌",
"[自定义装扮永久,22394-冬青祝福",
"[自定义装扮永久,22395-星之舞台",
"[自定义装扮永久,22396-踏寒梅",
"[自定义装扮永久,22397-哞哞奶嘴",
"[自定义装扮永久,22398-牛气冲天",
"[自定义装扮永久,22399-牛年庆典气球",
"[自定义装扮永久,22400-奶牛头套",
"[自定义装扮永久,22401-奶牛睡衣",
"[自定义装扮永久,22402-甜甜奶糖",
"[自定义装扮永久,22403-香蕉猴",
"[自定义装扮永久,22404-魔法光箭",
"[自定义装扮永久,22405-脆桃",
"[自定义装扮永久,22406-红粉佳人",
"[自定义装扮永久,22407-目光炯炯",
"[自定义装扮永久,22408-赤日行",
"[自定义装扮永久,22409-中华小厨娘",
"[自定义装扮永久,22410-夫子志",
"[自定义装扮永久,22411-龙行天下",
"[自定义装扮永久,22412-小龙女",
"[自定义装扮永久,22413-沐沐青荷",
"[自定义装扮永久,22414-汉光之翼",
"[自定义装扮永久,22415-仙宫景",
"[自定义装扮永久,22416-花语天籁",
"[自定义装扮永久,22417-菜菜春卷",
"[自定义装扮永久,22418-睡莲",
"[自定义装扮永久,22419-紫藤萝",
"[自定义装扮永久,22420-凤鸣",
"[自定义装扮永久,22421-鹿屿裳",
"[自定义装扮永久,22422-牡丹景",
"[自定义装扮永久,22423-少年意气",
"[自定义装扮永久,22424-蟠龙墨影",
"[自定义装扮永久,22425-饕餮盾",
"[自定义装扮永久,22426-惊鸿",
"[自定义装扮特殊,22600-书包(1天)",
"[自定义装扮特殊,22601-米兔(1天)",
"[自定义装扮特殊,22602-挑战者背包(3天)",
"[自定义装扮特殊,23600-王卡专属脚印(30天)",
"[自定义装扮特殊,23601-王卡专属背饰(30天)",
"[自定义装扮特殊,23602-王卡专属表情(30天)",
"[自定义装扮特殊,23603-王卡专属衣服(30天)",
"[自定义装扮特殊,23604-王卡专属头饰(30天)",
"[自定义装扮特殊,23605-米兔(30天)",
"[特殊皮肤,24600-安吉洛斯(30天)",
"[图标,24601-定制装扮特权卡",
"[测试,24602-bp经验道具",
"[测试,24603-bp任务刷新(全局)",
"[测试,24604-bp任务刷新(指定ID)",
"[测试,24605-bp快速完成(指定ID)",
"[测试,24606-bp满级道具",
"[测试,24700-头饰-美术测试",
"[测试,24701-表情-美术测试",
"[测试,24702-面饰-美术测试",
"[测试,24703-上衣-美术测试",
"[测试,24704-手饰-美术测试",
"[测试,24705-裤子-美术测试",
"[测试,24706-鞋子-美术测试",
"[测试,24707-背饰-美术测试",
"[测试,24708-脚印-美术测试",
"[坐骑碎片,24800-小猫咪-碎片",
"[坐骑碎片,24801-小天马-碎片",
"[人物碎片,24802-林千树碎片",
"[人物碎片,24803-雪球球碎片",
"[坐骑碎片,24804-小仓鼠碎片",
"[人物碎片,24805-蛙太郎碎片",
"[人物碎片,24806-装扮碎片",
"[人物碎片,24807-电音少女铃音碎片",
"[人物碎片,24808-全能玩家劳尔碎片",
"[坐骑碎片,24809-魔龙碎片",
"[人物碎片,24810-色彩旅行者达奇",
"[坐骑碎片,24811-月亮碎片",
"[人物碎片,24812-塔莉娅碎片",
"[坐骑碎片,24815-圣夜雪橇碎片",
"[坐骑碎片,24816-嘟嘟车碎片",
"[坐骑碎片,24817-福牛碎片",
"[坐骑碎片,24818-巨鲸碎片",
"[坐骑碎片,24819-莲花碎片",
"[坐骑碎片,24820-九色鹿碎片",
"[皮肤碎片,24821-橘子碎片",
"[皮肤碎片,24822-泡泡碎片",
"[皮肤碎片,24823-皇家马车碎片", 
"[皮肤碎片,24824-精灵马车碎片",
"[坐骑碎片,25003-竹蜻蜓", 
"[图标,26001-灵公主",
"[图标,26002-小龙人麟修",
"[图标,26003-妙妙",
"[图标,27004-白天鹅 奥杰塔",
"[图标,27005-时希",
"[图标,27006-洁莉",
"[图标,27007-快客小蜗",
"[图标,27009-黑天鹅 奥杰塔",
"[图标,27010-青蛙王子 克劳德",
"[图标,27012-白雪公主 索菲亚",
"［礼盒］49001-庆典礼包",
"［礼盒］49002-萌熊礼包",
"［礼盒］49003-幸运礼包",
"［礼盒］49004-星光礼包",
"［礼盒］49005-碎片自选礼包",
"[其他,49006-其它测试道具6",
"[其他,49007-其它测试道具7",
"[其他,49008-其它测试道具8",
"[其他,49009-其它测试道具9",
"[其他,49010-其它测试道具10",
"[其他,49101-家具盲盒1",
"[其他,49102-家具盲盒2",
"[其他,49103-宠物盲盒1",
"[其他,49104-宠物盲盒2",
"[家园道具,50001-中式山庄",
"[家园道具,50002-碧水山庄",
"[家园道具,50003-简约别墅",
"[家园道具,50004-现代别墅",
"[家园道具,50005-小狗主题乐园",
"[家园道具,50006-蓝色城堡",
"[家园道具,50007-研究所",
"[家园道具,50008-科研基地",
"[家园道具,50009-蓝图9",
"[家园道具,50010-蓝图10",
"[家园道具,50011-蓝图11",
"[家园道具,50012-蓝图12",
"[家园道具,50013-蓝图13",
"[家园道具,50014-蓝图14",
"[家园道具,50015-蓝图15",
"[家园道具,50016-蓝图16",
"[家园道具,50017-蓝图17",
"[家园道具,50018-蓝图18",
"[家园道具,50019-蓝图19",
"[家园道具,50020-蓝图20",
"[家园道具,55001-互动道具1",
"[家园道具,55002-互动道具2",
"[家园道具,55003-互动道具3",
"[家园道具,55004-互动道具4",
"[家园道具,55005-互动道具5",
"[家园道具,55006-互动道具6",
"[家园道具,55007-互动道具7",
"[家园道具,55008-互动道具8",
"[家园道具,55009-互动道具9",
"[家园道具,55010-互动道具10",
"[家园植物,62001-向阳花种子",
"[家园植物,62002-红色龙舌兰种子",
"[家园植物,62003-龙血花种子",
"[家园植物,62004-野蔷薇种子",
"[家园植物,62005-小白菊种子",
"[家园植物,62006-茶树种子",
"[家园植物,62007-香蕉树苗",
"[家园植物,62008-西瓜种子",
"[家园植物,62009-芒果树苗",
"[家园植物,62010-梨子树苗",
"[家园植物,62011-柑橘种子",
"[家园植物,62012-桃子树苗",
"[家园植物,62013-水稻种子",
"[家园植物,62014-麦子种子",
"[家园植物,62015-土豆种子",
"[家园植物,62016-南瓜种子",
"[家园植物,62017-甘蔗种子",
"[家园植物,62018-空的蜂巢",
"[家园植物,62019-辣椒树种子",
"[家园植物,62020-棉花树种子",
"[家园植物,62021-果树树苗",
"[家园植物,62022-落叶松树苗",
"[家园植物,62023-白杨树树苗",
"[家园植物,62024-红杉树树苗",
"[家园植物,62025-楠树树苗",
"[家园植物,62026-胡桃树树苗",
"[家园植物,62027-小蘑菇",
"[家园植物,62028-小红菇",
"[家园植物,62029-咖啡豆种子",
"[家园植物,62030-球球豆树苗",
"[家园植物,62031-氧气果树苗",
"[家园植物,62032-胡萝卜种子",
"[家园植物,62033-橙色龙舌兰种子",
"[家园植物,62034-灰色龙舌兰种子",
"[家园植物,62035-粉色龙舌兰种子",
"[家园道具,62101-鸡",
"[家园道具,62102-飞鸡",
"[家园道具,62103-牛",
"[家园道具,62104-羊",
"[家园道具,62105-猪",
"[家园道具,62106-驯化萌眼咚咚",
"[家园道具,62107-生物蛋道具7",
"[家园道具,62108-生物蛋道具8",
"[家园道具,62109-生物蛋道具9",
"[家园道具,62110-生物蛋道具10",
"[家园道具,62111-生物蛋道具11",
"[家园道具,62112-生物蛋道具12",
"[家园道具,62113-生物蛋道具13",
"[家园道具,62114-生物蛋道具14",
"[家园道具,62115-生物蛋道具15",
"[家园道具,62116-生物蛋道具16",
"[家园道具,62117-生物蛋道具17",
"[家园道具,62118-生物蛋道具18",
"[家园道具,62119-生物蛋道具19",
"[家园道具,62120-生物蛋道具20",
"[家园植物,62401-咖啡豆",
"[家园植物,62402-球球豆",
"[家园植物,62403-氧气果",
"[家园植物,62404-茶叶",
"[家园植物,62405-香蕉",
"[家园植物,62406-芒果",
"[家园植物,62407-梨子",
"[家园植物,62408-柑橘",
"[家园植物,62409-桃子",
"[家园植物,62410-棉花",
"[家园植物,62411-辣椒",
"[家园植物,62412-胡萝卜",
"[家园植物,62413-向阳花",
"[家园植物,62414-红色龙舌兰",
"[家园植物,62415-橙色龙舌兰",
"[家园植物,62416-灰色龙舌兰",
"[家园植物,62417-粉色龙舌兰",
"[家园植物,62418-龙血花",
"[家园植物,62419-野蔷薇",
"[家园植物,62420-小白菊",
"[家园植物,62421-食用小蘑菇",
"[家园植物,62422-食用小红菇",
"[家园植物,62423-西瓜",
"[家园植物,62424-果树原木",
"[家园植物,62425-松树原木",
"[家园植物,62426-杨树原木",
"[家园植物,62427-红衫树原木",
"[家园植物,62428-楠树原木",
"[家园植物,62429-胡桃树原木",
"[家园植物,62430-水稻",
"[家园植物,62431-麦子",
"[家园植物,62432-土豆",
"[家园植物,62433-南瓜",
"[家园植物,62434-甘蔗",
"[家园植物,62435-满的蜂巢",
"[家园植物,62436-变质向阳花",
"[家园道具,62801-简易肥料",
"[家园道具,62802-肥料2",
"[家园道具,62803-肥料3",
"[家园道具,62804-肥料4",
"[家园道具,62805-肥料5",
"[家园道具,62806-肥料6",
"[家园道具,62807-肥料7",
"[家园道具,62808-肥料8",
"[家园道具,62809-肥料9",
"[家园道具,62810-肥料10",
"[家园道具,62901-生鸡腿",
"[家园道具,62902-生牛排",
"[家园道具,62903-生羊腿",
"[家园道具,62904-生猪肉",
"[家园道具,62905-冰晶",
"[家园道具,62906-小鸡蛋",
"[家园道具,62907-飞羽",
"[家园道具,62908-生牛奶",
"[家园道具,62909-羊毛",
"[家园道具,62910-养殖产物10",
"[家园食物,64001-葵花籽",
"[家园食物,64002-稻米",
"[家园食物,64003-面粉",
"[家园食物,64004-蔗糖",
"[家园食物,64005-蜂蜜",
"[家园食物,64006-米饭",
"[家园食物,64008-粽子",
"[家园食物,64007-小麦面包",
"[家园食物,64009-凉拌萝卜",
"[家园食物,64010-烤鸡腿",
"[家园食物,64011-烤牛排",
"[家园食物,64012-烤羊腿",
"[家园食物,64013-烤猪肉",
"[家园食物,64014-蔬菜汤",
"[家园食物,64015-蛋炒饭",
"[家园食物,64016-烟熏火腿",
"[家园食物,64017-面条汤",
"[家园食物,64018-奶油蛋糕",
"[家园食物,64019-蜂蜜蛋糕",
"[家园食物,64020-牛奶糖",
"[家园食物,64021-饼干",
"[家园食物,64022-薯条",
"[家园食物,64023-南瓜饼",
"[家园食物,64024-水果拼盘",
"[家园食物,64025-鸡肉汉堡",
"[家园食物,64026-牛肉汉堡",
"[家园食物,64027-羊肉汉堡",
"[家园食物,64028-猪肉汉堡",
"[家园食物,64029-年糕",
"[家园食物,64030-汤圆",
"[家园食物,64032-冰淇淋",
"[家园食物,64031-奶酪",
"[家园食物,64033-水果冰淇淋",
"[家园食物,64034-炒瓜子",
"[家园食物,64035-盒装牛奶",
"[家园食物,64036-水果奶昔",
"[家园食物,64037-西瓜汁",
"[家园食物,64038-芒果汁",
"[家园食物,64039-梨子果汁",
"[家园食物,64040-柑橘果汁",
"[家园食物,64041-桃子果汁",
"[家园食物,64042-蜂蜜茶",
"[家园食物,64043-球球豆浆",
"[家园食物,64044-气泡果汁",
"[家园食物,64045-恶魔果汁",
"[家园食物,64046-酸奶",
"[家园食物,64047-胡萝卜汁",
"[家园食物,64048-咖啡",
"[家园食物,64049-清凉菊花茶",
"[家园食物,64050-龙舌兰特饮",
"[家园食物,64051-猩红饮料",
"[家园食物,64052-玫瑰花茶",
"[家园道具,66001-资源道具1",
"[家园道具,66002-资源道具2",
"[家园道具,66003-资源道具3",
"[家园道具,66004-资源道具4",
"[家园道具,66005-资源道具5",
"[家园道具,66006-资源道具6",
"[家园道具,66007-资源道具7",
"[家园道具,66008-资源道具8",
"[家园道具,66009-资源道具9",
"[家园道具,66010-资源道具10",
"[家园道具,68001-活力糖",
"[家园道具,68002-神行糖",
"[家园道具,68003-坚韧糖",
"[家园道具,68004-精灵糖",
"[家园道具,68005-宠物培养道具5",
"[家园道具,68006-宠物培养道具6",
"[家园道具,68007-宠物培养道具7",
"[家园道具,68008-宠物培养道具8",
"[家园道具,68009-宠物培养道具9",
"[家园道具,68010-宠物培养道具10",
"[家园道具,68101-清凉泡泡糖",
"[家园道具,68102-芬芳泡泡糖",
"[家园道具,68103-坚硬泡泡糖",
"[家园道具,68104-火辣泡泡糖",
"[家园道具,68105-蛙蛙卷轴",
"[家园道具,68106-粉红棉花糖",
"[家园道具,68107-手枪玩具",
"[家园道具,68108-熔岩之心碎片",
"[家园道具,68109-高贵皇冠",
"[家园道具,68110-幽灵糖果",
"[家园道具,68111-神秘魔法书",
"[家园道具,68112-跳跳皮球",
"[家园道具,68201-简易滑翔翼",
"[家园道具,68202-简易潜泳镜",
"[家园道具,68301-清凉泡泡球",
"[家园道具,68302-芬芳泡泡球",
"[家园道具,68303-坚硬泡泡球",
"[家园道具,68304-火辣泡泡球",
"[家园道具,68305-跳跳飞标",
"[家园道具,68306-蓝色月桂枝",
"[家园道具,68307-牛仔围巾",
"[家园道具,68308-滚烫蛋壳",
"[家园道具,68309-金色羽毛",
"[家园道具,68310-微光星星",
"[家园道具,68311-高贵蝴蝶结",
"[家园道具,68312-胖胖游泳圈",
"[宠物蛋,68501-宠物蛋-小泡沫",
"[宠物蛋,68502-宠物蛋-小泡沫",
"[宠物蛋,68503-宠物蛋-泡泡团子",
"[宠物蛋,68504-宠物蛋-泡泡团子",
"[宠物蛋,68505-宠物蛋-圆泡团",
"[宠物蛋,68506-宠物蛋-小孢子",
"[宠物蛋,68507-宠物蛋-小孢子",
"[宠物蛋,68508-宠物蛋-嫩叶团子",
"[宠物蛋,68509-宠物蛋-嫩叶团子",
"[宠物蛋,68510-宠物蛋-豪华团",
"[宠物蛋,68511-宠物蛋-小石子",
"[宠物蛋,68512-宠物蛋-小石子",
"[宠物蛋,68513-宠物蛋-岩石团",
"[宠物蛋,68514-宠物蛋-岩石团",
"[宠物蛋,68515-宠物蛋-巨岩团",
"[宠物蛋,68516-宠物蛋-小火星",
"[宠物蛋,68517-宠物蛋-小火星",
"[宠物蛋,68518-宠物蛋-暖暖团",
"[宠物蛋,68519-宠物蛋-暖暖团",
"[宠物蛋,68520-宠物蛋-爆火团",
"[宠物蛋,68521-宠物蛋-小蝌丁",
"[宠物蛋,68522-宠物蛋-小蝌丁",
"[宠物蛋,68523-宠物蛋-跳跳蛙",
"[宠物蛋,68524-宠物蛋-跳跳蛙",
"[宠物蛋,68525-宠物蛋-忍忍蛙",
"[宠物蛋,68526-宠物蛋-小兔叽",
"[宠物蛋,68527-宠物蛋-小兔叽",
"[宠物蛋,68528-宠物蛋-兔叽",
"[宠物蛋,68529-宠物蛋-兔叽",
"[宠物蛋,68530-宠物蛋-玉兔叽",
"[宠物蛋,68531-宠物蛋-迷你汪",
"[宠物蛋,68532-宠物蛋-迷你汪",
"[宠物蛋,68533-宠物蛋-汪汪",
"[宠物蛋,68534-宠物蛋-汪汪",
"[宠物蛋,68535-宠物蛋-汪汪警长",
"[宠物蛋,68536-宠物蛋-小龙蛋",
"[宠物蛋,68537-宠物蛋-小龙蛋",
"[宠物蛋,68538-宠物蛋-黑龙蛋",
"[宠物蛋,68539-宠物蛋-黑龙蛋",
"[宠物蛋,68540-宠物蛋-黑龙崽",
"[宠物蛋,68541-宠物蛋-小雏鹦",
"[宠物蛋,68542-宠物蛋-小雏鹦",
"[宠物蛋,68543-宠物蛋-球鹦鹉",
"[宠物蛋,68544-宠物蛋-球鹦鹉",
"[宠物蛋,68545-宠物蛋-金羽鹦鹉",
"[宠物蛋,68546-宠物蛋-小灵球",
"[宠物蛋,68547-宠物蛋-小灵球",
"[宠物蛋,68548-宠物蛋-幽幽球",
"[宠物蛋,68549-宠物蛋-幽幽球",
"[宠物蛋,68550-宠物蛋-幽灵王球",
"[宠物蛋,68551-宠物蛋-小黑猫",
"[宠物蛋,68552-宠物蛋-小黑猫",
"[宠物蛋,68553-宠物蛋-黑炭猫",
"[宠物蛋,68554-宠物蛋-黑炭猫",
"[宠物蛋,68555-宠物蛋-黑黝黝",
"[宠物蛋,68556-宠物蛋-小球豹",
"[宠物蛋,68557-宠物蛋-小球豹",
"[宠物蛋,68558-宠物蛋-球球豹",
"[宠物蛋,68559-宠物蛋-球球豹",
"[宠物蛋,68560-宠物蛋-球豹王子",
"[宠物蛋,68561-宠物蛋-小泡沫",
"[宠物蛋,68562-宠物蛋-小泡沫",
"[宠物蛋,68563-宠物蛋-小泡沫",
"[宠物蛋,68564-宠物蛋-小泡沫",
"[宠物蛋,68565-宠物蛋-小孢子",
"[宠物蛋,68566-宠物蛋-小孢子",
"[宠物蛋,68567-宠物蛋-小孢子",
"[宠物蛋,68568-宠物蛋-小孢子",
"[宠物蛋,68569-宠物蛋-小石子",
"[宠物蛋,68570-宠物蛋-小石子",
"[宠物蛋,68571-宠物蛋-小石子",
"[宠物蛋,68572-宠物蛋-小石子",
"[宠物蛋,68573-宠物蛋-小火星",
"[宠物蛋,68574-宠物蛋-小火星",
"[宠物蛋,68575-宠物蛋-小火星",
"[宠物蛋,68576-宠物蛋-小火星",
"[宠物蛋,68577-宠物蛋-小蝌丁",
"[宠物蛋,68578-宠物蛋-小蝌丁",
"[宠物蛋,68579-宠物蛋-小蝌丁",
"[宠物蛋,68580-宠物蛋-小蝌丁",
"[宠物蛋,68581-宠物蛋-小兔叽",
"[宠物蛋,68582-宠物蛋-小兔叽",
"[宠物蛋,68583-宠物蛋-小兔叽",
"[宠物蛋,68584-宠物蛋-小兔叽",
"[宠物蛋,68585-宠物蛋-迷你汪",
"[宠物蛋,68586-宠物蛋-迷你汪",
"[宠物蛋,68587-宠物蛋-迷你汪",
"[宠物蛋,68588-宠物蛋-迷你汪",
"[宠物蛋,68589-宠物蛋-小龙蛋",
"[宠物蛋,68590-宠物蛋-小龙蛋",
"[宠物蛋,68591-宠物蛋-小龙蛋",
"[宠物蛋,68592-宠物蛋-小龙蛋",
"[宠物蛋,68593-宠物蛋-小雏鹦",
"[宠物蛋,68594-宠物蛋-小雏鹦",
"[宠物蛋,68595-宠物蛋-小雏鹦",
"[宠物蛋,68596-宠物蛋-小雏鹦",
"[宠物蛋,68597-宠物蛋-小灵球",
"[宠物蛋,68598-宠物蛋-小灵球",
"[宠物蛋,68599-宠物蛋-小灵球",
"[宠物蛋,68600-宠物蛋-小灵球",
"[宠物蛋,68601-宠物蛋-小黑猫",
"[宠物蛋,68602-宠物蛋-小黑猫",
"[宠物蛋,68603-宠物蛋-小黑猫",
"[宠物蛋,68604-宠物蛋-小黑猫",
"[宠物蛋,68605-宠物蛋-小球豹",
"[宠物蛋,68606-宠物蛋-小球豹",
"[宠物蛋,68607-宠物蛋-小球豹",
"[宠物蛋,68608-宠物蛋-小球豹",
"[宠物蛋,68609-宠物蛋-小猕猴",
"[宠物蛋,68610-宠物蛋-小猕猴",
"[宠物蛋,68611-宠物蛋-小猕猴",
"[宠物蛋,68612-宠物蛋-小猕猴",
"[宠物蛋,68613-宠物蛋-小孔雀",
"[宠物蛋,68614-宠物蛋-小孔雀",
"[宠物蛋,68615-宠物蛋-小孔雀",
"[宠物蛋,68616-宠物蛋-小孔雀",
"[家园道具,70001-配方道具1",
"[家园道具,70002-配方道具2",
"[家园道具,70003-配方道具3",
"[家园道具,70004-配方道具4",
"[家园道具,70005-配方道具5",
"[家园道具,70006-配方道具6",
"[家园道具,70007-配方道具7",
"[家园道具,70008-配方道具8",
"[家园道具,70009-配方道具9",
"[家园道具,70010-配方道具10",
"[家园道具,70011-配方道具11",
"[家园道具,70012-配方道具12",
"[家园道具,70013-配方道具13",
"[家园道具,70014-配方道具14",
"[家园道具,70015-配方道具15",
"[家园道具,70016-配方道具16",
"[家园道具,70017-配方道具17",
"[家园道具,70018-配方道具18",
"[家园道具,70019-配方道具19",
"[家园道具,70020-配方道具20",
"[家园材料,75001-棉布",
"[家园材料,75002-绒布",
"[家园材料,75003-陶瓷土坯",
"[家园材料,75004-玻璃片",
"[家园材料,75005-粗制石砖",
"[家园材料,75006-精磨石砖",
"[家园材料,75007-纸张",
"[家园材料,75008-果木板",
"[家园材料,75009-松木板",
"[家园材料,75010-杨木板",
"[家园材料,75011-胡桃木板",
"[家园材料,75012-小木棍",
"[家园材料,75013-黏土",
"[家园材料,75014-砂土",
"[家园材料,75015-粗制石料",
"[家园材料,75016-颜料盒",
"[家园食物,75017-食盐",
"[家园道具,75018-锄头",
"［生物］100068-虚空幻影-迅",
"［生物］100069-虚空幻影-猛",
"[图标,110090-竹蜻蜓",
"[永久皮肤,140119-灵公主",
"[永久皮肤,140120-小龙人麟修",
"[永久皮肤,140121-妙妙(永久)",
"［生物］130012-四翼天使",
"==========================",
"  以下为生物id代码",
"    [生物,3010-游商",
"    [生物,3011-沙漠商人",
"    [生物,3012-冰原商人",
"    [生物,3013-圣诞商人",
"    [生物,3014-元旦商人",
"    [生物,3015-春节商人",
"    [生物,3016-周年商人",
"    [生物,3017-六一商人",
"    [生物,3018-宇宙商人",
"    [生物,3101-野人",
"    [生物,3102-野萌宝",
"    [生物,3103-萌眼咻咻",
"    [生物,3105-野人猎手",
"    [生物,3107-大眼蛛",
"    [生物,3109-爆爆蛋",
"    [生物,3110-萌眼叮叮",
"    [生物,3111-萌眼咚咚",
"    [生物,3112-萌眼当当",
"    [生物,3113-萌眼叮叮(重叠)",
"    [生物,3114-萌眼咚咚(重叠)",
"    [生物,3115-萌眼当当(重叠)",
"    [生物,3116-萌眼叮咚(重叠)",
"    [生物,3117-萌眼叮当(重叠)",
"    [生物,3118-萌眼咚当(重叠)",
"    [生物,3121-稻草人",
"    [生物,3122-恶霸屠夫(驯服)",
"    [生物,3123-出气外星人",
"    [生物,3124-驯服的萌眼叮叮",
"    [生物,3125-驯服的萌眼咚咚",
"    [生物,3126-驯服的萌眼当当",
"    [生物,3130-熔岩巨人",
"    [生物,3131-硫磺弓手",
"    [生物,3132-混乱弓手",
"    [生物,3200-野人伙伴",
"    [生物,3201-猎手伙伴",
"    [生物,3202-萌宝伙伴",
"    [生物,3203-野人纪念包裹",
"    [生物,3400-鸡",
"    [生物,3401-牛",
"    [生物,3402-猪",
"    [生物,3403-羊",
"    [生物,3405-冰熊(驯服)",
"    [生物,3406-迅猛龙(驯服)",
"    [生物,3407-狼",
"    [生物,3408-狗",
"    [生物,3409-企鹅",
"    [生物,3410-鸵鸟(驯服)",
"    [生物,3411-野生鸵鸟",
"    [生物,3412-野生冰熊",
"    [生物,3413-野生迅猛龙",
"    [生物,3414-野生团子",
"    [生物,3415-团子(驯服)",
"    [生物,3416-野生熊猫",
"    [生物,3417-熊猫(驯服)",
"    [生物,3418-蜜蜂",
"    [生物,3419-萤火虫",
"    [生物,3420-足球",
"    [生物,3421-野生飞鸡",
"    [生物,3422-飞鸡(驯服)",
"    [生物,3423-战斗鸡",
"    [生物,3424-尖叫鸡",
"    [生物,3425-篮球",
"    [生物,3430-普通化石龙",
"    [生物,3431-化石龙",
"    [生物,3432-超级化石龙",
"    [生物,3433-小飞鼠",
"    [生物,3434-敏捷飞鼠",
"    [生物,3435-机灵飞鼠",
"    [生物,3436-普通麒麟",
"    [生物,3437-麒麟",
"    [生物,3438-祥瑞麒麟",
"    [生物,3439-小陆行鸟",
"    [生物,3440-迅捷陆行鸟",
"    [生物,3441-跃动陆行鸟",
"    [生物,3442-小白象",
"    [生物,3443-欢乐白象",
"    [生物,3444-盛典白象",
"    [生物,3445-海豹水手",
"    [生物,3446-海豹船长",
"    [生物,3447-超能海豹",
"    [生物,3448-变形金刚占用",
"    [生物,3449-擎天柱",
"    [生物,3450-变形金刚占用",
"    [生物,3451-威震天",
"    [生物,3452-变形金刚占用",
"    [生物,3453-大黄蜂",
"    [生物,3454-猫宝宝",
"    [生物,3455-福袋猫猫",
"    [生物,3456-舞狮猫猫",
"    [生物,3457-天马宝宝",
"    [生物,3458-神圣天马",
"    [生物,3459-星河天马",
"    [生物,3460-青竹坐台",
"    [生物,3461-富贵金轿",
"    [生物,3462-桃香扇缘",
"    [生物,3463-变形金刚占用",
"    [生物,3464-红蜘蛛",
"    [生物,3465-变形金刚占用",
"    [生物,3466-热破",
"    [生物,3467-变形金刚占用",
"    [生物,3468-惊破天",
"    [生物,3469-大地领主",
"    [生物,3470-炎狱魔龙",
"    [生物,3471-深渊咆哮",
"    [生物,3472-变形金刚占用",
"    [生物,3473-钢锁",
"    [生物,3474-变形金刚占用",
"    [生物,3475-飞标",
"    [生物,3476-变形金刚占用",
"    [生物,3477-嚎叫",
"    [生物,3478-月明星稀",
"    [生物,3479-玉兔桃花",
"    [生物,3480-皎月仙宫",
"    [生物,3481-兔子先生拉比",
"    [生物,3482-兔子先生拉比",
"    [生物,3483-暖冬祝福",
"    [生物,3484-圣夜惊喜",
"    [生物,3485-冰雪传说",
"    [生物,3486-缤纷幻想",
"    [生物,3487-缤纷幻想",
"    [生物,3488-福运哞哞",
"    [生物,3489-福运哞哞",
"    [生物,3490-攀崖观日",
"    [生物,3491-北辰荧火",
"    [生物,3492-浮游山海",
"    [生物,3493-牛魔王",
"    [生物,3494-牛魔王",
"    [生物,3495-步步生莲",
"    [生物,3496-飞花踏雪",
"    [生物,3497-镜花水月",
"    [生物,3501-地心人",
"    [生物,3502-远古黑龙",
"    [生物,3503-熔岩黑龙",
"    [生物,3504-混乱黑龙",
"    [生物,3505-年兽野生",
"    [生物,3506-年兽驯服",
"    [生物,3507-福球",
"    [生物,3508-小恶魔",
"    [生物,3509-小恶魔驯服",
"    [生物,3510-远古巨像",
"    [生物,3511-远古叮叮",
"    [生物,3512-远古咚咚",
"    [生物,3513-远古当当",
"    [生物,3514-远古巨人",
"    [生物,3600-灯笼鱼",
"    [生物,3601-乌贼",
"    [生物,3602-深海鱼",
"    [生物,3603-巨型咕噜水母",
"    [生物,3604-白色呆呆鱼",
"    [生物,3605-橙色呆呆鱼",
"    [生物,3606-洋红呆呆鱼",
"    [生物,3607-淡蓝呆呆鱼",
"    [生物,3608-黄色呆呆鱼",
"    [生物,3609-黄绿呆呆鱼",
"    [生物,3610-粉色呆呆鱼",
"    [生物,3611-灰色呆呆鱼",
"    [生物,3612-淡灰呆呆鱼",
"    [生物,3613-青色呆呆鱼",
"    [生物,3614-紫色呆呆鱼",
"    [生物,3615-蓝色呆呆鱼",
"    [生物,3616-棕色呆呆鱼",
"    [生物,3617-绿色呆呆鱼",
"    [生物,3618-红色呆呆鱼",
"    [生物,3619-黑色呆呆鱼",
"    [生物,3800-轨道车",
"    [生物,3802-运输轨道车",
"    [生物,3803-火箭",
"    [生物,3804-tnt轨道车",
"    [生物,3806-龙舟",
"    [生物,3807-木船",
"    [生物,3808-河灯",
"    [生物,3809-小狼",
"    [生物,3810-小狗",
"    [生物,3811-小猪",
"    [生物,3812-小牛",
"    [生物,3813-小鸡",
"    [生物,3814-小羊",
"    [生物,3815-小马",
"    [生物,3816-小猫",
"    [生物,3817-小鸵鸟",
"    [生物,3818-小迅猛龙",
"    [生物,3819-小企鹅",
"    [生物,3820-小冰熊",
"    [生物,3850-灯笼鱼苗",
"    [生物,3851-小乌贼",
"    [生物,3852-深海鱼苗",
"    [生物,3853-巨型咕噜水母幼崽",
"    [生物,3854-白色呆呆鱼苗",
"    [生物,3855-橙色呆呆鱼苗",
"    [生物,3856-洋红呆呆鱼苗",
"    [生物,3857-淡蓝呆呆鱼苗",
"    [生物,3858-黄色呆呆鱼苗",
"    [生物,3859-黄绿呆呆鱼苗",
"    [生物,3860-粉色呆呆鱼苗",
"    [生物,3861-灰色呆呆鱼苗",
"    [生物,3862-淡灰呆呆鱼苗",
"    [生物,3863-青色呆呆鱼苗",
"    [生物,3864-紫色呆呆鱼苗",
"    [生物,3865-蓝色呆呆鱼苗",
"    [生物,3866-棕色呆呆鱼苗",
"    [生物,3867-绿色呆呆鱼苗",
"    [生物,3868-红色呆呆鱼苗",
"    [生物,3869-黑色呆呆鱼苗",
"    [生物,3870-野生猴子",
"    [生物,3871-猴子",
"    [生物,3872-豹子",
"    [生物,3873-毒素野人祭司",
"    [生物,3874-治疗野人祭司",
"    [生物,3875-雷电野人祭司",
"    [生物,3876-火焰野人祭司",
"    [生物,3877-野人祭司",
"    [生物,3878-羽蛇神",
"    [生物,3879-祈愿树1",
"    [生物,3880-祈愿树2",
"    [生物,4001-塔防模板弓箭手",
"    [生物,4200-哮天犬",
"    [生物,4201-小黄鸡",
"    [生物,4500-九色鹿",
"    [生物,4501-苍林白鹿",
"    [生物,4502-涅盘绘色",
"    [生物,4503-鹿王本生",
"    [生物,10001-小泡沫",
"    [生物,10002-泡泡团子",
"    [生物,10003-圆泡团",
"    [生物,10004-小孢子",
"    [生物,10005-嫩叶团子",
"    [生物,10006-豪华团",
"    [生物,10007-小石子",
"    [生物,10008-岩石团",
"    [生物,10009-巨岩团",
"    [生物,10010-小火星",
"    [生物,10011-暖暖团",
"    [生物,10012-爆火团",
"    [生物,10013-小蝌丁",
"    [生物,10014-跳跳蛙",
"    [生物,10015-忍忍蛙",
"    [生物,10016-小兔叽",
"    [生物,10017-兔叽",
"    [生物,10018-玉兔叽",
"    [生物,10019-迷你汪",
"    [生物,10020-汪汪",
"    [生物,10021-汪汪警长",
"    [生物,10022-小龙蛋",
"    [生物,10023-黑龙蛋",
"    [生物,10024-黑龙崽",
"    [生物,10025-小雏鹦",
"    [生物,10026-球鹦鹉",
"    [生物,10027-金羽鹦鹉",
"    [生物,10028-小灵球",
"    [生物,10029-幽幽球",
"    [生物,10030-幽灵王球",
"    [生物,10031-小黑猫",
"    [生物,10032-黑炭猫",
"    [生物,10033-黑黝黝",
"    [生物,10034-小球豹",
"    [生物,10035-球球豹",
"    [生物,10036-球豹王子",
"    [生物,10037-小猕猴",
"    [生物,10038-奏乐猴",
"    [生物,10039-梵音猴",
"    [生物,10040-小孔雀",
"    [生物,10041-雏孔雀",
"    [生物,10042-丰羽孔雀",
"    [生物,39201-斯科特·李",
"    [生物,39202-哥伦布·李",
"    [生物,39203-库克·李",
"    [生物,39204-马可·李",
"    [生物,39205-达尔文·李",
"    [生物,39206-大山",
"    [生物,39207-祈愿树1",
"    [生物,39208-祈愿树2",
"    [生物,39209-家园商人",
"    [生物,39210-家园果实",
"    [生物,39211-家园果实",
"    [生物,39212-家园果实",
"    [生物,39213-家园果实",
"    [生物,39214-家园果实",
"    [生物,39215-宠物商人",
"    [生物,39216-宠物探险队长",
"    [生物,39217-家园图鉴",
"    [生物,39218-养殖场商人",
"    [生物,39219-家园工匠",
"    [生物,39220-家园厨师",
"============================",
" 以下为坐骑技能代码，笑笑提供",
"坐骑技能-1-下蛋",
"坐骑技能-2-冲刺",
"坐骑技能-3-踏水",
"坐骑技能-4-超跳",
"坐骑技能-5-滑翔",
"坐骑技能-6-炎走",
"坐骑技能-7-疾冲",
"坐骑技能-8-未知",
"坐骑技能-9-双骑",
"坐骑技能-10-蹦跃",
"坐骑技能-11-顽强",
"坐骑技能-12-浮水",
"坐骑技能-13-潜水",
"坐骑技能-14-激流",
"坐骑技能-15-汽车人突击",
"坐骑技能-16-霸天虎导弹",
"坐骑技能-17-黄蜂突刺",
"坐骑技能-18-飞扑",
"坐骑技能-19-威慑",
"坐骑技能-20-漂浮",
"坐骑技能-21-飞行",
"坐骑技能-22-双骑",
"坐骑技能-23-能量盾",
"坐骑技能-24-单骑",
"坐骑技能-25-空中警报:",
"坐骑技能-26-红色闪电",
"坐骑技能-27-聚变激光",
"坐骑技能-28-炎狱火",
"坐骑技能-29-幽冥火",
"坐骑技能-30-振翅",
"坐骑技能-31-展翼",
"坐骑技能-32-暴龙咆哮",
"坐骑技能-33-敏捷之翼",
"坐骑技能-34-骨刺横扫",
"坐骑技能-35-星光",
"坐骑技能-36-月生",
"坐骑技能-37-时间告急",
"坐骑技能-38-双骑",
"坐骑技能-39-踏雪行",
"坐骑技能-40-嘟嘟车冲鸭",
"坐骑技能-41-五谷丰登",
"坐骑技能-42-四人同行",
"坐骑技能-43-星河传说",
"坐骑技能-44-鲸之浮岛",
"坐骑技能-45-蛮牛之力威慑",
"坐骑技能-46-蛮牛之力强击",
"坐骑技能-47-飞花",
"坐骑技能-48-惊鸿",
"坐骑技能-49-叶舞",
"坐骑技能-50-日轮",
"坐骑技能-51-神光",
"=====================",
"以下为生物模型代码（常用于mt修改器）",
"[生物模型,13800-过山车厢",
"[生物模型,13802-过山车头",
"[生物模型,13808-荷灯",
"[生物模型,100001-僵尸",
"[生物模型,100003-硫磺弓手",
"[生物模型,100007-巨型水母",
"[生物模型,100008-远古黑龙",
"[生物模型,100009-乌贼",
"[生物模型,100010-深海鱼",
"[生物模型,100011-熔岩巨人",
"[生物模型,100014-蜘蛛",
"[生物模型,100016-青蛙",
"[生物模型,100026-野人",
"[生物模型,100027-野萌宝",
"[生物模型,100028-野人猎手",
"[生物模型,100029-灯笼鱼",
"[生物模型,100030-年兽",
"[生物模型,100031-福球",
"[生物模型,100032-小恶魔",
"[生物模型,100033-屠夫",
"[生物模型,100034-稻草人",
"[生物模型,100035-团子",
"[生物模型,100036-地心之眼",
"[生物模型,100037-大眼蛛",
"[生物模型,100038-足球",
"[生物模型,100039-黑人",
"[生物模型,100040-萌眼叮叮",
"[生物模型,100041-萌眼咚咚",
"[生物模型,100042-萌眼当当",
"[生物模型,100043-萌眼叮叮(重叠)",
"[生物模型,100044-萌眼咚咚(重叠)",
"[生物模型,100045-萌眼当当(重叠)",
"[生物模型,100046-萌眼叮咚(重叠)",
"[生物模型,100047-萌眼叮当(重叠)",
"[生物模型,100048-萌眼咚当(重叠)",
"[生物模型,100049-萌眼咻咻",
"[生物模型,100050-远古巨像(第一形态)",
"[生物模型,100051-超级叮叮",
"[生物模型,100052-超级终咚",
"[生物模型,100053-超级当当",
"[生物模型,100054-远古巨像(第二形态)",
"[生物模型,100055-篮球",
"[生物模型,100056-野人伙伴",
"[生物模型,100057-猎手伙伴",
"[生物模型,100058-萌宝伙伴",
"[生物模型,100059-野人纪念包裹",
"[生物模型,100060-羽蛇神",
"[生物模型,100061-猴子",
"[生物模型,100062-豹子",
"[生物模型,100063-野人祭祀",
"[生物模型,100064-祈愿树2",
"[生物模型,100065-祈愿树1",
"[生物模型,110001-小猪",
"[生物模型,110002-猪",
"[生物模型,110003-鸡",
"[生物模型,110004-小鸡",
"[生物模型,110009-小狼",
"[生物模型,110010-狼",
"[生物模型,110015-驼鸟",
"[生物模型,110017-熊猫",
"[生物模型,110018-冰熊",
"[生物模型,110020-白呆呆鱼",
"[生物模型,110022-企鹅",
"[生物模型,110024-野生速龙",
"[生物模型,110029-羊",
"[生物模型,110030-小羊",
"[生物模型,110031-牛",
"[生物模型,110032-小牛",
"[生物模型,110033-爆炸蛋",
"[生物模型,110035-地心人",
"[生物模型,110037-小速龙",
"[生物模型,110038-小驼鸟",
"[生物模型,110039-小冰熊",
"[生物模型,110040-化石龙（坐骑）",
"[生物模型,110041-小飞鼠（坐骑）",
"[生物模型,110042-麒麟（坐骑）",
"[生物模型,110043-深海鱼",
"[生物模型,110044-未知",
"[生物模型,110053-陆行鸟（坐骑）",
"[生物模型,110054-哮天犬",
"[生物模型,110055-小白鸡",
"[生物模型,110056-小蜜蜂",
"[生物模型,110057-萤火虫",
"[生物模型,110058-火箭",
"[生物模型,110059-飞鸡",
"[生物模型,110060-尖叫鸡",
"[生物模型,110061-战斗鸡",
"[生物模型,110062-白象（坐骑）",
"[生物模型,110063-海豹（坐骑）",
"[生物模型,110064-擎天柱（汽车）",
"[生物模型,110065-威震天（坦克）",
"[生物模型,110066-大黄蜂（汽车）",
"[生物模型,110067-猫猫（坐骑）",
"[生物模型,110068-天马（坐骑）",
"[生物模型,110069-轿子（坐骑）",
"[生物模型,110070-红蜘蛛（飞机）",
"[生物模型,110071-热破（赛车）",
"[生物模型,110072-惊破天（加农炮）",
"[生物模型,110073-魔龙（坐骑）",
"[生物模型,110074-月亮（坐骑）",
"[生物模型,110075-钢锁",
"[生物模型,110076-飞标",
"[生物模型,110077-嚎叫",
"[生物模型,110078-兔子", 
"[生物模型,110079圣夜惊喜",
"[生物模型,110080-缤纷幻想",
"[生物模型,110081-福运哞哞",
"[生物模型,110082-北辰荧火",
"[生物模型,110083-牛魔王",
"[生物模型,110084-飞花踏雪",
"[生物模型,110085-涅盘绘色",
"[生物模型,120001-矿车",
"[生物模型,120002-木弓",
"[生物模型,120003-石箭",
"[生物模型,120007-闪星方块",
"[生物模型,120008-龙舟",
"[生物模型,130001-沙漠商人",
"[生物模型,130002-商人",
"[生物模型,130003-冰原雪女",
"[生物模型,130004-六一商人",
"[生物模型,130005-宇宙商人",
"[生物模型,140001-兔美美",
"[生物模型,140002-胖哒",
"[生物模型,140003-齐天小圣",
"[生物模型,140004-迷斯拉",
"[生物模型,140005-琉璃酱",
"[生物模型,140006-乔治",
"[生物模型,140007-安妮",
"[生物模型,140008-墨家小飞",
"[生物模型,140009-德古拉六世",
"[生物模型,140010-叮叮当",
"[生物模型,140011-荒野猎人",
"[生物模型,140012-羽姬",
"[生物模型,140013-慕容笑天",
"[生物模型,140014-西部警长",
"[生物模型,140015-蓝球队长",
"[生物模型,140016-拉拉队长",
"[生物模型,140017-西部玫瑰",
"[生物模型,140018-黑帽子船长",
"[生物模型,140019-甜心玛丽",
"[生物模型,140020-程锦衣",
"[生物模型,140021-花小楼",
"[生物模型,140022-莉莉丝",
"[生物模型,140023-月无双",
"[生物模型,140024-叶小龙",
"[生物模型,140025-二郎神",
"[生物模型,140026-余小乐",
"[生物模型,140027-迷梭梭",
"[生物模型,140028-幻音",
"[生物模型,140029-幻之零式",
"[生物模型,140030-柳仙儿",
"[生物模型,140031-普帕奇",
"[生物模型,140032-米娜",
"[生物模型,140033-雪灵",
"[生物模型,140034-嘟嘟啵啵",
"[生物模型,140035-梦歌",
"[生物模型,140036-斩浪",
"[生物模型,140037-安吉洛斯",
"[生物模型,140038-暗星",
"[生物模型,140039-兰斯洛特",
"[生物模型,140040-喵小糖",
"[生物模型,140041-千兵卫",
"[生物模型,140042-星翼",
"[生物模型,140043-离",
"[生物模型,140044-黯",
"[生物模型,140045-啾啾",
"[生物模型,140046-华乐",
"[生物模型,140047-大毛",
"[生物模型,140048-乔克",
"[生物模型,140049-小艾",
"[生物模型,140050-擎天柱",
"[生物模型,140051-威震天",
"[生物模型,140052-慕斯",
"[生物模型,140053-金柚柚",
"[生物模型,140054-喜团团",
"[生物模型,140055-林千树",
"[生物模型,140056-大黄蜂",
"[生物模型,140057-花幽幽",
"[生物模型,140058-星灵波波",
"[生物模型,140059-雪球球",
"[生物模型,140060-爱丽丝",
"[生物模型,140061-蛙太郎",
"[生物模型,140062-红蜘蛛",
"[生物模型,140063-热破",
"[生物模型,140064-惊破天",
"[生物模型,140065-劳尔",
"[生物模型,140066-铃音",
"[生物模型,140067-青弦",
"[生物模型,140068-紫悦",
"[生物模型,140069-宇宙公主",
"[生物模型,140070-柔柔",
"[生物模型,140071-月亮公主",
"[生物模型,140072-钢锁",
"[生物模型,140073-飞标",
"[生物模型,140074-嚎叫",
"[生物模型,140075-色彩旅行者达奇",
"[生物模型,140076-塔莉娅",
"[生物模型,140077-森林隐者巫塔",
"[生物模型,140078-兔子先生拉比",
"[生物模型,140079-碧琪",
"[生物模型,140080-白夜女巫卡洛儿",
"[生物模型,140083-余小欢",
"[生物模型,140084-章小丸",
"[生物模型,140085-熊小吉",
"[生物模型,140086-星光熠熠",
"[生物模型,140087-云宝",
"[生物模型,140088-音韵公主",
"[生物模型,140089-初暮",
"[生物模型,140090-冲云霄",
"[生物模型,140091-利爪",
"[生物模型,140092-铁头",
"[生物模型,140093-野牛",
"[生物模型,140094-猛虎",
"[生物模型,140095-大鹏",
"[生物模型,140096-大无畏",
"[生物模型,140097-银剑",
"[生物模型,140098-弹弓",
"[生物模型,140099-俯冲",
"[生物模型,140100-空袭",
"[生物模型,140101-飞火",
"[生物模型,140102-魔炎",
"[生物模型,140103-圣婴",
"[生物模型,140104-灵瑶",
"[生物模型,140105-小红帽阿夏尔",
"[生物模型,140106-迷小酷",
"[生物模型,140107-狼少年沃尔夫",
"[生物模型,140108-天仙子 雅",
"[生物模型,140109-临江仙 颂",
"[生物模型,140110-红玫瑰少女 仙杜瑞拉",
"[皮肤,140123-黑天鹅 奥杰塔",
"[皮肤,140124-白天鹅 奥杰塔",
"[皮肤,140125-时希",
"[皮肤,140126-青蛙王子 克劳德",
"[皮肤,140127-洁莉",
"[皮肤,140128-快客小蜗",
"[皮肤,140133-白雪公主 索菲亚",
"[生物模型,150001-家园果实1级",
"[生物模型,150002-家园果实2级",
"[生物模型,150003-家园果实3级",
"[生物模型,150004-家园果实4级",
"[生物模型,150005-家园果实5级",
"[生物模型,150010-小龙蛋",
"[生物模型,150011-黑龙蛋",
"[生物模型,150012-黑龙崽",
"[生物模型,150013-小雏鹦",
"[生物模型,150014-球鹦鹉",
"[生物模型,150015-金羽鹦鹉",
"[生物模型,150016-小火星",
"[生物模型,150017-暖暖团",
"[生物模型,150018-爆火团",
"[生物模型,150019-小蝌丁",
"[生物模型,150020-跳跳蛙",
"[生物模型,150021-忍忍蛙",
"[生物模型,150022-小孢子",
"[生物模型,150023-嫩叶团子",
"[生物模型,150024-豪华团",
"[生物模型,150025-小泡沫",
"[生物模型,150026-泡泡团子",
"[生物模型,150027-圆泡团",
"[生物模型,150028-小黑猫",
"[生物模型,150029-黑炭猫",
"[生物模型,150030-黑黝黝",
"[生物模型,150031-迷你汪",
"[生物模型,150032-汪汪",
"[生物模型,150033-汪汪警长",
"[生物模型,150034-小球豹",
"[生物模型,150035-球球豹",
"[生物模型,150036-球豹王子",
"[生物模型,150037-小兔叽",
"[生物模型,150038-兔叽",
"[生物模型,150039-玉兔叽",
"[生物模型,150040-小石子",
"[生物模型,150041-岩石团",
"[生物模型,150042-巨岩团",
"[生物模型,150043-小灵球",
"[生物模型,150044-幽幽球",
"[生物模型,150045-幽灵王球",
"[生物模型,150046-小孔雀",
"[生物模型,150047-雏孔雀",
"[生物模型,150048-丰羽孔雀",
"[生物模型,150049-小猕猴",
"[生物模型,150050-奏乐猴",
"[生物模型,150051-梵音猴",
"[生物模型,150001-家园果实1级",
"[生物模型,150002-家园果实2级",
"[生物模型,150003-家园果实3级",
"[生物模型,150004-家园果实4级",
"[生物模型,150005-家园果实5级",
"[生物模型,200000-酋长",
"[生物模型,200001-卡卡",
"[生物模型,200002-史提芬",
"[生物模型,200003-队长汤母",
"[生物模型,200004-助教彼得",
"[生物模型,200005-熊孩子",
"[生物模型,200006-酋长夫人",
"[生物模型,200007-妮妮",
"[生物模型,200008-特工",
"[生物模型,200009-小淘气辛迪",
  

"============================",
"以下为特殊图标",
"[特殊图标,fruit_activity-活动果实",
"[特殊图标,fruit_activity1-活动果实1",
"[特殊图标,fruit_activity2活动果实2-",
"[特殊图标,fruit_activity3-鸭子果实",
"[特殊图标,fruit_activity4-礼带果实",
"[特殊图标,fruit_big-大果实",
"[特殊图标,fruit_small-小果实",
"[特殊图标,fruit_gold-金果实",
"[特殊图标,HorsePuzzle-坐骑碎片",
"============================",
"以下代码为表情id",
"@[表情,亲亲代码#A106@",
"@[表情,斜眼笑代码#A101@",
"@[表情,尴尬代码#A104@",
"@[表情,斗鸡眼代码#A102@   ",
"@[表情,生气代码#A103@",
"@[表情,大哭代码#A105@",
"@[表情,蓝钻2:#A2@",
"@[表情,蓝钻3:#A3@",
"@[表情,蓝钻4:#A4@",
"@[表情,蓝钻5:#A5@",
"@[表情,蓝钻6:#A6@",
"@[表情,蓝钻7:#A7@",
"@[表情,蓝钻8:#A8@",
"@[表情,豪华蓝钻1:#A9@",
"@[表情,豪华蓝钻2:#A10@",
"@[表情,豪华蓝钻3:#A11@",
"@[表情,豪华蓝钻4:#A12@",
"@[表情,豪华蓝钻5:#A13@",
"@[表情,豪华蓝钻6:#A14@",
"@[表情,豪华蓝钻7:#A15@",
"@[表情,豪华蓝钻8:#A16@",
"@[表情,年费蓝钻:#A17@",
"@[表情,黄钻1:#A18@",
"@[表情,黄钻2:#A19@",
"@[表情,黄钻3:#A20@",
"@[表情,黄钻4:#A21@",
"@[表情,黄钻5:#A22@",
"@[表情,黄钻6:#A23@",
"@[表情,黄钻7:#A24@",
"@[表情,黄钻8:#A25@",
"@[表情,豪华黄钻1:#A26@",
"@[表情,豪华黄钻2:#A27@",
"@[表情,豪华黄钻3:#A28@",
"@[表情,豪华黄钻4:#A29@",
"@[表情,豪华黄钻5:#A30@",
"@[表情,豪华黄钻6:#A31@",
"@[表情,豪华黄钻7:#A32@",
"@[表情,豪华黄钻8:#A33@",
"@[表情,年费黄钻:#A34@",
"@[表情,皇冠:#A111@",
"@[表情,皇冠年:#A112@",
"@[表情,亲亲:#A106@",
"@[表情,滑稽:#A101@",
"@[表情,无奈:#A104@",
"@[表情,呆呆:#A102@",
"@[表情,生气:#A103@",
"@[表情,哭泣:#A105@",
"============================",
"[彩色字,@#R红色@",
"[彩色字,@#Y黄色@",
"[彩色字,@#B蓝色@",
"[彩色字,@#G绿色@",
"[彩色字,@#K黑色@",
"[彩色字,@闪烁字体#b(b一定要小写）@",
"[彩色字,@1:粉红色#cff0aff@",
"[彩色字,@2.红色#cFF0000 @",
"[彩色字,@3.绿色#c00FF00 @",
"[彩色字,@4.蓝色#c0000FF @",
"[彩色字,@5.牡丹红#cFF00FF @",
"[彩色字,@6.青色#c00FFFF @",
"[彩色字,@7.黄色#cFFFF00 @",
"[彩色字,@8.黑色#c000000 @",
"[彩色字,@9.海蓝#c70DB93 @",
"[彩色字,@10.巧克力色#c5C3317@ ",
"[彩色字,@11.蓝紫色#c9F5F9F @",
"[彩色字,@12.黄铜色#cB5A642 @",
"[彩色字,@13.亮金色#cD9D919 @",
"[彩色字,@14.棕色#cA67D3D @",
"[彩色字,@15.青铜色#c8C7853 @",
"[彩色字,@16.青铜色2号#cA67D3D @",
"[彩色字,@17.士官服蓝色#c5F9F9F @",
"[彩色字,@18.冷铜色#cD98719 @",
"[彩色字,@19.铜色#cB87333 @",
"[彩色字,@20.珊瑚红#cFF7F00 @",
"[彩色字,@21.紫蓝色#c42426F @",
"[彩色字,@22.深棕#c5C4033 @",
"[彩色字,@23.深绿#c2F4F2F @",
"[彩色字,@24.深铜绿色#c4A766E @",
"[彩色字,@25.深橄榄绿#c4F4F2F @",
"[彩色字,@26.深兰花色#c9932CD @",
"[彩色字,@27.深紫色#c871F78 @",
"[彩色字,@28.深石板蓝#c6B238E @",
"[彩色字,@29.深铅灰色#c2F4F4F @",
"[彩色字,@30.深棕褐色#c97694F @",
"[彩色字,@31.深绿松石色#c7093DB @",
"[彩色字,@32.暗木色#c855E42 @",
"[彩色字,@33.淡灰色#c545454 @",
"[彩色字,@34.土灰玫瑰红色 # @",
"[彩色字,@35.长石色#cD19275 @",
"[彩色字,@36.火砖色#c8E2323 @",
"[彩色字,@37.森林绿#c238E23 @",
"[彩色字,@38.金色#cCD7F32 @",
"[彩色字,@39.鲜黄色#cDBDB70 @",
"[彩色字,@40.淡灰色#cC0C0C0 @",
"[彩色字,@41.铜绿色#c527F76 @",
"[彩色字,@42.青黄色#c93DB70 @",
"[彩色字,@43.猎人绿#c215E21 @",
"[彩色字,@44.印度红#c4E2F2F @",
"[彩色字,@45.土黄色#c9F9F5F @",
"[彩色字,@46.浅蓝色#cC0D9D9 @",
"[彩色字,@47.浅灰色#cA8A8A8 @",
"[彩色字,@48.浅钢蓝色#c8F8FBD @",
"[彩色字,@49.浅木色#cE9C2A6 @",
"[彩色字,@50.石灰绿色#c32CD32 @",
"[彩色字,@51.桔黄色#cE47833 @",
"[彩色字,@52.褐红色#c8E236B @",
"[彩色字,@53. 中海蓝色#c32CD99@ ",
"[彩色字,@54.中蓝色#c3232CD @",
"[彩色字,@55.中森林绿#c6B8E23 @",
"[彩色字,@56.中鲜黄色#cEAEAAE @",
"[彩色字,@57.中兰花色#c9370DB @",
"[彩色字,@58.中海绿色#c426F42 @",
"[彩色字,@59.中石板蓝色#c7F00FF @",
"[彩色字,@60.中春绿色#c7FFF00 @",
"[彩色字,@61.中绿松石色#c70DBDB @",
"============================",
"以下mt修改文字简要教程（Ttp对",       "其进行了较多原创补充，方便大家理解）",
"miniplay是迷你的数据库，进入自己的",  
"m0主世界",
"m1地心世界",
"m3外星世界",
"roles背包数据",
"modpkgtmp插件包",
"custommodel微缩包",
"ss触发器包",
"wglobal.fb玩法设置",
"wdesc.fb作者数据",
"thumb.png_和thumb.webp_是封面",
"mods是插件库",
"其他的大多没什么用。",
"接下来主要对mods文件夹进行讲解。",
"在地图中创建一些插件，找到对应存档",  "进入mods文件夹的默认文件夹里面",    "再点击behavior文件夹，会看到以下内容:",
"actor： 生物",
"block： 方块",
"item： 道具",
"crafting:合成配方",
"shop:商店",
"furnace:熔炼配方",
"horse:坐骑属性（需要自己创建）",
"插件库翻译",
'🌴🌲返回辅助🌲🌴'},
nil,'百荷:请勿乱点，制作不易…')
if menu1 == 1 then ttt1() end
if menu1 == 2 then ttt2() end
if menu1 == 3 then ttt3() end
if menu1 == 4 then ttt4() end
if menu1 == 5 then ttt5() end
if menu1 == 6 then ttt6() end
if menu1== 5548 then Main() end
GLWW=-1
end

function Main9()
menu1 = gg.choice({
'💔工藤新一💔',
'💔江子也💔️',
'💔无名💔',
'💔神龙💔',
'💔浮梦💔',
'💔北少💔',
'💔北仙💔',
'💔蓝风💔',
'❣️返回辅助❣️'},
nil,'感谢你们的陪伴')
if menu1 == 1 then Main() end
if menu1 == 2 then Main() end
if menu1 == 3 then Main() end
if menu1 == 4 then Main() end
if menu1 == 5 then Main() end
if menu1 == 6 then Main() end
if menu1 == 7 then Main() end
if menu1 == 8 then Main() end
if menu1 == 23 then Main() end
GLWW=-1
end

function Main8()
menu1 = gg.choice({
    "𒅒🌴野人掉落999🌴𒅒",
    "𒅒🌴熔岩…掉落999🌴𒅒",
    "𒅒🌴猪掉落999🌴𒅒",
    "𒅒🌴牛掉落999🌴𒅒",
    "𒅒🌴️鸡掉落999🌴𒅒",
    "𒅒🌴狼掉落999🌴𒅒",
    "𒅒🌴超大木棒🌴𒅒",
    "𒅒🌴超大石矛️🌴𒅒", 
    "𒅒🌴超大短剑🌴𒅒",
    "𒅒🌴大能量剑🌴𒅒",
    "𒅒🌴超大突刺长枪🌴𒅒",
    "𒅒🌴️超大冲锋枪🌴𒅒",    
    "𒅒🌴超大牛仔左轮️🌴𒅒", 
    "𒅒🌴超大重机枪️🌴𒅒",
    "𒅒🌴超大龙骨弓🌴𒅒",
    "𒅒🌴️超大短弓🌴𒅒",    
    "𒅒🌴超大石箭️🌴𒅒",
       "𒅒🌴超大吹箭筒🌴𒅒",
   "𒅒🌴能量剑无冷却🌴𒅒", 
   "𒅒🌴突刺长枪无冷却🌴𒅒", 
   "𒅒🌴钻头️无冷却🌴𒅒", 
   "𒅒🌴链锯动无冷却🌴𒅒", 
   "𒅒🌴金斧头无冷却🌴𒅒", 
   "𒅒🌴钻头盔999防御🌴𒅒", 
   "𒅒🌴钻盔甲999防御🌴𒅒", 
   "𒅒🌴钻护腿999防御🌴𒅒", 
   "𒅒🌴钻鞋子999防御🌴𒅒", 
   "𒅒🌴钻头速度提升🌴𒅒", 
   "𒅒🌴链锯速度提升🌴𒅒", 
   "𒅒🌴能量剑秒杀🌴𒅒", 
   "𒅒🌴突刺长枪秒杀🌴𒅒", 
   "𒅒🌴短剑秒杀🌴𒅒", 
   "𒅒🌴长矛秒杀🌴𒅒", 
   "𒅒🌴木棒秒杀🌴𒅒", 
   "𒅒🌴木质短弓秒杀🌴𒅒", 
   "𒅒🌴冲锋枪秒杀🌴𒅒", 
   "𒅒🌴牛仔左轮秒杀🌴𒅒", 
   "𒅒🌴野人10血🌴𒅒", 
   "𒅒🌴熔岩巨人10血🌴𒅒", 
   "𒅒🌴解锁荧光弹弓🌴𒅒", 
   "𒅒🌴解锁圆球炸弹🌴𒅒", 
   "𒅒🌴解锁冰锥🌴𒅒", 
   "𒅒🌴解锁熔岩球🌴𒅒", 
   "𒅒🌴解锁脉冲弓🌴𒅒", 
   "𒅒🌴解锁黑龙熔岩球🌴𒅒", 
   "𒅒🌴解锁混乱熔岩球🌴𒅒", 
   "𒅒🌴解锁反光镜🌴𒅒", 
   "𒅒🌴解锁火箭背包🌴𒅒", 
   "𒅒🌴解锁公主床🌴𒅒", 
   "𒅒🌴解锁坚冰🌴𒅒", 
   "𒅒🌴解锁钢板🌴𒅒", 
   "𒅒🌵解锁金铁门🌴𒅒", 
   "𒅒🌴解锁白杨木门🌴𒅒", 
    "𒅒🌴返 回 主 页🌴𒅒",},2018,os.date("𒅒需要指定的才能用，有些房间用不了𒅒"))
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

function Main14()
MuZi= gg.prompt({ "选择路径","luar加密①","防反编译加密","z加密","YIC加密","DZSH加密","ZGGZ加密","Enc加密","nanzi加密","shuzi加密","B(空白)加密","BkB格式转码","Decryption加密","Lua字符转换器","Lua去注释"},{[1]='/storage/emulated/0/'},{[1]='file',[2]='checkbox',[3]='checkbox',[4]='checkbox',[5]='checkbox',[6]='checkbox',[7]='checkbox',[8]='checkbox',[9]='checkbox',[10]='checkbox',[11]='checkbox',[12]='checkbox',[13]='checkbox',[14]='checkbox',[15]='checkbox'})
if MuZi == nil then
    os.exit()
    end
 aaaaa = loadfile(MuZi[1])
  if aaaaa == nil then
    gg.alert('加载脚本失败: '..MuZi[1])
    os.exit()
end
 
if MuZi[2] == true then
aaaaa = loadfile(MuZi[1]) 
fint=io.open(MuZi[1].."MuZi","w") 
fint:write(string.dump(aaaaa))
fint:close()
print('加密成功，加密文件在路径:'..MuZi[1]..'.MuZi') 
end
if MuZi[3] == true then
a=io.open(MuZi[1],"r") 
assert(a) aa=a:read("*a") 
MuZidma = 'g={}\nfor i, v in ipairs(g) do \nif ipairs(g) ~= nil then\nreturn i..v\nend\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)\ngg.clearResults()\nfunction AA(bytes,result1,result2)\nlocal bytesa=load(bytes)\nend\nfunction BB()\nfor aaaaa=1,1024 do\nbytes = "平安夜最帅"..io.open(gg.getFile(),"r"):read("*a")\nAA(bytes,result1,result2)\nend\nend\nBB()\n'..aa.."" 
aaa=io.open(MuZi[1].."a","w") 
assert(aaa) 
aaa:write(MuZidma) 
aaa:close() 
fint=io.open(MuZi[1].."MuZi","w") aaaaa = loadfile(MuZi[1]) 
assert(fint) 
aaaaa = loadfile(MuZi[1].."a") 
fint:write(string.dump(aaaaa,true)) 
fint:close() 
os.remove(string.gsub(MuZi[1].."a","@","")) 
print('加密成功，加密文件在路径:'..MuZi[1]..'.MuZi') 
end

if MuZi[4] == true then

function getByte(data, flag)
    local array = {}
    local lens = string.len(data)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(data, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(data, i)
        end
    end
    return array,lens
end

function getChars(bytes)
    local array = {}
    for key, val in pairs(bytes) do
        array[key] = string.char(val)
    end
    return array
end

function string.split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end


local file = io.open(MuZi[1], 'r')
assert(file)
local key = gg.prompt({[1]='请输入加密密码'}, {[1]=''}, {[1]='text'})

function encryptData(data, keys)
    local result = ''
    local dataArr = getByte(data, false)
    local keyArr,keyLen = getByte(keys, true)
    for index,value in pairs(dataArr) do
        result = result..'‭'..tostring((0xFF and value) + (0xFF and keyArr[(index-1) % keyLen]))
    end
jmdm = result
decryption = "--youyoujiami加密算法\nTTY=gg.getFile()\nfile = io.open(TTY, 'r')assert(file)\nfunction youyou(data2)\na=string.find(data2, 'p'..'r'..'i'..'n'..'t')\nif a == nil then\nfunction getByte(data, flag)\nlocal array = {}\nlocal lens = string.len(data)\nif (flag == false) then\nfor i=1,lens do\narray[i] = string.byte(data, i)\nend\nreturn array \nelse\nfor i=1,lens do\narray[i-1] = string.byte(data, i)\nend\nend\nreturn array,lens \nend\nfunction getChars(bytes)\nlocal array = {}\nfor key, val in pairs(bytes) do\narray[key] = string.char(val) end\nreturn array\nend\nfunction string.split( str,reps )\nlocal resultStrList = {} string.gsub(str,'[^'..reps..']+',function ( w )  table.insert(resultStrList,w)\nend)\nreturn resultStrList\nend\nfunction decryptData(data, keys)\nlocal result = ''\nlocal dataArr = string.split(data, '‭')\nlocal keyArr,keyLen = getByte(keys, true)\nfor index,value in pairs(dataArr) do\nbytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])\nresult = result..string.char(bytes)\nend\nlocal youyou = load(result)\npcall(youyou)\nend\nlocal data = 'JMDM'\nlocal key = gg.prompt({[1]='请输入脚本密码'}, {[1]=''}, {[1]='text'})\ngg.toast('正在加载脚本……')decryptData(data, key[1])\nelse\nos.remove(TTY)\nos.remove(TTY..'.bak')\nfile = io.open(TTY, 'w')\nfile:write('')\nfile:close()\ngg.alert('幼幼加密这层很简单破吧')\nos.exit()\nend\nend\ndata2 = file:read('*a')\nfile:close()\nyouyou(data2)\n\n"

wzdm = string.gsub(decryption, 'JMDM', jmdm)
file = io.open(MuZi[1]..'Z', 'w')
file:write(wzdm)
file:close()
print('加密成功\n'..MuZi[1]..'Z')
end
local data = file:read('*a')file:close()
encryptData(data, key[1])
end
if MuZi[5] == true then
local yic = gg.prompt({'平安夜提示:请设置密码'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + yic[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
print('感谢使用。')
function Yicjm(key,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end
local v_value=gg.prompt({'请输入脚本密码。'},{[1]=0},{[1]='number'})
gg.toast('正在进入脚本……')
pcall(Yicjm(v_value[1],'yictzm77455'))
local data = Yicjm(v_value[1],'yictzm77455')
local yic = load(data)
pcall(yic)
]==]

d = string.gsub(d,'yictzm77455',c)
file = io.open(MuZi[1]..'yic','w')
file:write(d)file:close()
    end
   if MuZi[6] == true then
local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1], "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption( DZSH)
decryption = "function Decryption( DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1].."x", "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()
local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("DZSH提示加密成功！\n"..MuZi[1].."x"..sj)

   end
   
   
   
   if MuZi[7] == true then
   function cfing(path)--配置
  if path~=nil then
    file=io.open("/storage/emulated/0/cfing.ling","w")
    file:write(path)file:close()
    return nil
  else
    file=io.open("/storage/emulated/0/tencent/QQfile_recv/","r")
    if file ~= nil then
      assert(file)
      return file:read("*a")
    else
      return "/storage/emulated/0/tencent/QQfile_recv/"
    end
  end
end

local path=cfing()
ZGGZ = gg.prompt({"请输入加密后脚本的密码_"},{[1]=0},{[1]="namber"})
Git=io.open(MuZi[1],"r")
assert(Git)
if MuZi == nil then print("文件打开失败!") end
cfing(MuZi[1])
path=MuZi[1]
function luas(str)
  local jk=string.gsub(Xzzj1(str,".","-"),"52","")
  ggg=Xzzj1(str,"shark=\"","\"")
  local jj =sharkm(ggg,jk)
  sharkexk=sharkmk(ggg,jj,jk) 
  file = io.open(path..".Tiais", "w")file:write(sharkexk)file:close()
  gg.toast('请查看你的路径:'..path..'.Tiais')
end

function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + ZGGZ[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local ZSDY = file:read('*a');
file:close();
c = Ecrypt(ZSDY)

d = [==[
function MuZijm(ZGG,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - ZGG + 999999*256)%256) end))
end
local MuZi = gg.prompt({'没有密码还想玩？'},{[1]=''},{[1]='number'})
local ZSDY = MuZijm(MuZi[1],'8MuZi8')
local MuZi = load(ZSDY)
load(MuZi)
]==]

e = string.gsub(d,'8MuZi8',c)
f = string.gsub(e,'\n',';')
--g = string.gsub(f,"","膂蒁ᷤS蘇vX耇g蒁ᷤz첆ߤ膂Y肅ᷤ슆")
--↑MuZi加密完成↑--



--[[↓写入加密后的脚本↓--
h = [==[
xxx=string.gsub("6MuZi9",'膂蒁ᷤS蘇vX耇g蒁ᷤz첆ߤ膂Y肅ᷤ슆','')
bug = ")256"
gub = ")%256"
yyy = string.gsub(xxx,bug,gub)
load(load(yyy))
]==]
i = string.gsub(h,'6MuZi9',g)--]]



local out_path = MuZi[1].."MuZi"
file = io.open(out_path,'w')file:write(f)file:close()

print('加密成功！\n\n加密后的脚本路径为：\n'..out_path)
    end
    
    if MuZi[8] == true then
    
    
local enc = gg.prompt({'请设置密码'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + enc[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
--Enc &201902409 平安夜
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         print('♥平安夜加密')  function Encjm(key,code)     return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))  end  local v_value=gg.prompt({'请输入密码'},{[1]=0},{[1]='number'})  gg.toast('正在加载脚本……')  pcall(Encjm(v_value[1],'encBD8848'))  local data = Encjm(v_value[1],'encBD8848')  local enc = load(data)  pcall(enc)  
]==]

d = string.gsub(d,'encBD8848',c)
file = io.open(MuZi[1]..'E','w')file:write(d)file:close()
end
  if MuZi[9] == true then
  
function main()
v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
xs=io.open(MuZi[1])
assert(xs)
data = xs:read("*a")
xs:close()
JM(data,v_value[1])
print("成功，请根据文件找到加密的文件")
end

--加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key*520 end return table.concat(miwen,",") end

--解密
function BDm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter)	if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
local A=Sharkjm(data,key)
local S=" local BD ='"..A.."';function split(str, delimiter)	if str==nil or str=='' or "
local H="delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function BDm(code,key)local mi={};local cd=code;local test='';bote=split(cd,',');for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end local v_value=gg.prompt({'请输入密码'},{[1]=0},{[1]='number'}) gg.toast('正在加载脚本……') BDex=BDm(BD,v_value[1]) local yic = load(BDex) pcall(yic)"
local D=S..H
--xutil.writeToFile("/sdcard/lua/yijiami.ssluan",D)
io.output(MuZi[1].."nanzi")
io.write(D)
io.close()
end
main()
end

if MuZi[10] == true then

  --加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key*520 end return table.concat(miwen,",") end

--解密
function BXJMm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter)	if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
local A=Sharkjm(data,key)
local S=" local BXJM ='"..A.."';function split(str, delimiter)	if str==nil or str=='' or "
local H="delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function BXJMm(code,key)local mi={};local cd=code;local test='';bote=split(cd,',');for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end local v_value=gg.prompt({'平安夜加密QQ1458554303请输入密码'},{[1]=0},{[1]='number'}) gg.toast('正在加载脚本……') BXJMex=BXJMm(BXJM,v_value[1]) local yic = load(BXJMex) pcall(yic)"
local D=S..H
--xutil.writeToFile("/sdcard/lua/yijiami.ssluan",D)

io.output(MuZi[1]..'S')
io.write(D)
io.close()
end
function main()
xs=io.open(MuZi[1])
assert(xs)
data = xs:read("*a")
xs:close()
v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
JM(data,v_value[1])
print("加密成功 平安夜201902409")
end
main()
end

if MuZi[11] == true then


function getByte(data, flag)
    local array = {}
    local lens = string.len(data)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(data, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(data, i)
        end
    end
    return array,lens
end

function getChars(bytes)
    local array = {}
    for key, val in pairs(bytes) do
        array[key] = string.char(val)
    end
    return array
end

function string.split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end

local file = io.open(MuZi[1], 'r')
assert(file)
local key = gg.prompt({[1]='请输入加密密码'}, {[1]=''}, {[1]='text'})

function encryptData(data, keys)
    local result = ''
    local dataArr = getByte(data, false)
    local keyArr,keyLen = getByte(keys, true)
    for index,value in pairs(dataArr) do
        result = result..'B'..tostring((0xFF and value) + (0xFF and keyArr[(index-1) % keyLen]))
    end
jmdm = result
decryption = "--狗儿，又来了？烂大街的你还偷？\n\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nLJ=gg.getFile()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile = io.open(LJ, 'r')assert(file)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction DZSH(data2)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\na=string.find(data2, 'p'..'r'..'i'..'n'..'t')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nif a == nil then\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction getByte(data, flag)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal array = {}\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal lens = string.len(data)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nif (flag == false) then\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor i=1,lens do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[i] = string.byte(data, i)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array \n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nelse\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor i=1,lens do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[i-1] = string.byte(data, i)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array,lens \n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction getChars(bytes)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal array = {}\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor key, val in pairs(bytes) do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[key] = string.char(val) end\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction string.split( str,reps )\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal resultStrList = {} string.gsub(str,'[^'..reps..']+',function ( w )  table.insert(resultStrList,w)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn resultStrList\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction decryptData(data, keys)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal result = ''\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal dataArr = string.split(data, 'B')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal keyArr,keyLen = getByte(keys, true)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor index,value in pairs(dataArr) do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nbytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nresult = result..string.char(bytes)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal dzsh = load(result)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\npcall(dzsh)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal data = 'JMDM'\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal key = gg.prompt({[1]='请输入解密密码'}, {[1]=''}, {[1]='text'})\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ndecryptData(data, key[1])\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nelse\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.remove(LJ)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.remove(LJ..'.bak')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile = io.open(LJ, 'w')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:write('')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:close()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ngg.alert('你是坏人')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.exit()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ndata2 = file:read('*a')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:close()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nDZSH(data2)\n\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n--你是坏人"

wzdm = string.gsub(decryption, 'JMDM', jmdm)
file = io.open(MuZi[1]..'B', 'w')
file:write(wzdm)
file:close()
gg.alert('B加密成功\n'..MuZi[1]..'B')
end
local data = file:read('*a')file:close()
encryptData(data, key[1])
end
if MuZi[12] == true then
function main()
  os.remove("/storage/emulated/0/tencent/QQfile_recv/123.lua")
  os.remove("/storage/emulated/0/tencent/QQfile_recv/456.lua")
  os.remove("/storage/emulated/0/tencent/QQfile_recv/789.lua")
  v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
  xs=io.open(MuZi[1])
  assert(xs)
  datb = xs:read("*a")
  xs:close()
  ssv = '--平安夜加密 @ 1.0 BKB转码格式\n'..datb
  data=ssv
  if #v_value[1] > 8 then gg.alert("密码不能超过8位") os.exit() end
  JM(data,v_value[1])
  print("成功，请根据文件找到加密的文件")
end

--加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key-16 end return table.concat(miwen,"斡,獺,駡,檊,麋,魶,斡獺,駡檊,麋魶,粲201902409縻,擱厮,遤㝶,魭醫") end

--解密
function Bxm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter) if str==nil or str=='' or delimiter==nil then return nil end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
  local A=Sharkjm(data,key)
  i = 1
  while true do
    ll = ("\n local Bxdm"..i.." = '"..string.sub(A,i,i+2019024).."'")
    print("local Bxdm"..i.." = "..string.sub(A,i,i+2019024).."") 
    if i >= string.len(A) then 
      X = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","r") 
      assert(X) 
      Xc=X:read("*a")
      M = io.open("/storage/emulated/0/tencent/QQfile_recv/123.lua","r") 
      assert(M) 
      Xa=M:read("*a")
      Xz = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","w") 
      Xz:write(Xa..'\nlocal MMP = ""'..Xc.."\n function split(str, delimiter)if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function Bxm(code,key)local mi={};local cd=code;local test='';bote=split(cd,'斡,獺,駡,檊,麋,魶,斡獺,駡檊,麋魶,粲201902409縻,擱厮,遤㝶,魭醫');for i=1,#bote do mi[i]=bote[i]-key+16 end for n=1,#mi do test=test..string.char(mi[n]) end return test end gg.toast('静静地等待10秒') local v_value=gg.prompt({'  ▓▓请输入装逼代码▓▓'},{[1]=0},{[1]='number'}) gg.toast('加载 脚本 成功 正在 开启') Bxex=Bxm(MMP,v_value[1]) local PPT = load(Bxex) pcall(PPT)[["..Xc.."]]")
      Xz:close()
      O = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","r")
      assert(O)
      Bo = O:read("*a")
      J = io.open("/storage/emulated/0/tencent/QQfile_recv/789.lua","w")
      J:write("Bx={}\nfor i, v in ipairs(Bx) do \nif ipairs(Bx) ~= nil then\nreturn i..v\nend\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD)\ngg.clearResults()\nfunction Key(NUMBER,Babe,Hugo)\nlocal bytesa=load(NUMBER)\nend\nfunction Text()\nfor aaaaa=1,999 do\n  NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a')\nKey(NUMBER,Babe,Hugo)\nend\nend\nText()\n"..Bo)
      J:close()
      F=io.open("/storage/emulated/0/tencent/QQfile_recv/789.lua","r")
      FD = loadfile("/storage/emulated/0/tencent/QQfile_recv/789.lua")
      io.output(MuZi[1].."Bx")
      io.write(string.dump(FD,true))
      io.close()
      gg.alert("加密完成") 
      os.remove("/storage/emulated/0/tencent/QQfile_recv/123.lua")
      os.remove("/storage/emulated/0/tencent/QQfile_recv/456.lua")
      os.remove("/storage/emulated/0/tencent/QQfile_recv/789.lua")
      os.exit()end
    if i < string.len(A) then 
      lj =( "..".."Bxdm"..i.."") 
      B = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","a+") B:write(lj) B:close() 
      V = io.open("/storage/emulated/0/tencent/QQfile_recv/123.lua","a+") V:write(ll) V:close() 
    end
    i = i + 2019025
  end
end

main()
--记得设置路径
end
if MuZi[13] == true then
print(string.char())
local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1], "r")
assert(file)
local layue = file:read("*a")
file:close()

jmdm = Encryption( layue)
byBD = "function byBD( layue,Text)\n\n  return (Text:gsub('..', function (layue)\n\n    return string.char((tonumber(layue,16))%256)\n\n  end))\n\nend\n\nlocal layue = byBD('BD','JMDM')\n\nlocal BD = load(layue)\n\npcall(BD)\n"
wzdm = string.gsub(byBD, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("BD提示加密成功！\n"..MuZi[1].."x"..sj)
end
  if MuZi[14] == true then
file=io.open(MuZi[1],"r")
content=file:read("*a")
for i=32,99
 do 
content=content:gsub("\\0"..i,string.char(i))
end
  for i=100,255
   do 
content=content:gsub("\\"..i,string.char(i))
   end 
fint=io.open(MuZi[1].."BD","w") 
fint:write(content)
fint:close()
  end
  if MuZi[15] == true then
  
  function clearComment(a)
    local b=string.gsub(a,"%-%-%[%[.-%]%]","")
    return b
end

file = io.open(MuZi[1],"r")
a=file:read("*a")
file:close()
b=clearComment(a)
file = io.open(MuZi[1].."BD","w")
file:write(b)
file:close()
  end
    end
    
    function Main16()
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

function XCP1()
SN = gg.multiChoice({
"🌟💗无限物品💗🌟",
"🌟💗创造背包💗🌟",
"🌟💗修改宠物💗🌟",
"🌟💗修改坐骑💗🌟",
"🌟💗无敌秒杀(死亡开)💗🌟",
"🌟💗修改彩枪子弹💗🌟",
"🌟💗改分数💗🌟",
"🌟💗全部人物烧死💗🌟",
"🌟💗武器附魔💗🌟",
"🌟💗工具附魔💗🌟",
"🌟💗夕阳西下(锁时间)💗🌟",
"🌟💗开40人💗🌟",
"🌟💗剑无限cd💗🌟",
"🌟💗钩爪喷子💗🌟",
"🌟💗第一个无限耐久💗🌟",
"🌟💗秒挖💗🌟",
"🌟💗寻找代码💗🌟",
"🌟💗添加东西💗🌟",
"🌟💗自定义改地图名💗🌟",
"🌟💗刷勋章💗🌟",
"🌟💗自定义附魔💗🌟",
"🌟💗自定义附魔💗🌟",
"🌟💗钻头无限cd💗🌟",
"🌟💗钻锯无限cd💗🌟",
"🌟💗手灭基岩💗🌟",
"🌟💗强制修改密码(可盗号)💗🌟",
"🌟💗房主改皮肤💗🌟",
"🌟💜时间锁定💜🌟",
"🌟💜无限召唤坐骑💜🌟",
"🌟💜突破血量上限(💜🌟",
"🌟💜禁用钩爪💜🌟",
"🌟💜一摔就死💜🌟",
"🌟💜自定义改炸弹💜🌟",
"🌟💜吸人💜🌟",
"🌟💜牛掉炸弹(小北)💜🌟",
"🌟💜生物掉一百万星星💜🌟",
"🌟💜自定义修改烟花💜🌟",
"🌟💜秒生蛋💜🌟",
"🌟💜添加坐骑💜🌟",
"🧡返 回 主 页🧡",
 }, nil, "🌺为什么说抱歉....明明是我不对🌺")
if SN == nil then else
if SN[1]==true then	 XCA1() end
if SN[2]==true then	 XCA2() end
if SN[3]==true then	 XCA4() end
if SN[4]==true then	 XCA5() end
if SN[5]==true then	 XCA7() end
if SN[6]==true then  XCA8() end
if SN[7]==true then	 XCA9() end
if SN[8]==true then  XCA10() end
if SN[9]==true then	 XCA11() end
if SN[10]==true then	 XCA12() end
if SN[11]==true then	 XCA13() end
if SN[12]==true then	 XCA14() end
if SN[13]==true then	 XCA15() end
if SN[14]==true then	 XCA16() end
if SN[15]==true then	 XCA17() end
if SN[16]==true then	 XCA18() end
if SN[17]==true then	 XCA19() end
if SN[18]==true then	 XCA20() end
if SN[19]==true then	 XCA21() end
if SN[20]==true then	 XCA22() end
if SN[21]==true then     XCA23() end
if SN[22]==true then     XCA24() end
if SN[23]==true then     XCA25() end
if SN[24]==true then     XCA26() end
if SN[25]==true then     XCA27()  end
if SN[26]==true then     XCA28() end
if SN[27]==true then     XCA29() end
if SN[28]==true then     XCA30() end
if SN[29]==true then     XCA31() end
if SN[30]==true then     XCA32() end
if SN[31]==true then     XCA33() end
if SN[32]==true then     XCA34()  end
if SN[33]==true then     XCA35() end
if SN[34]==true then     XCA36() end
if SN[35]==true then     XCA37() end
if SN[36]==true then     XCA38() end
if SN[37]==true then     XCA39() end
if SN[38]==true then     XCA40() end
if SN[39]==true then     XCA41() end
if SN[40]==true then	 Main() end
end
FX=0 end


function XCA1()
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
Main()
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

function XCA2()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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

function XCA3()
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


function XCA4()
o2= gg.choice({
    "𒅒🧡化石龙🧡𒅒",
    "𒅒🧡机灵飞鼠🧡𒅒",
    "𒅒💜瑞祥麒麟💜𒅒",
    "𒅒💜陆行鸟💜𒅒",
    "𒅒♨️大白象 ♨️𒅒",    
    "𒅒 ♨️️超能海豹 ♨️𒅒",
    "𒅒 💯舞狮猫猫 💯𒅒",
    "𒅒 💯星河天马 💯𒅒",
    "𒅒 ❗桃香扇缘 ❗𒅒",
    "𒅒 ❗深渊咆哮 ❗𒅒",
    "𒅒 🔸皎月仙宫 🔸𒅒",
    "𒅒 🔸冰雪传说 🔸𒅒",   
    "𒅒 🔷缤纷幻想 🔷𒅒",
    "𒅒 🔷福运哞哞 🔷𒅒",
    "𒅒 ❌浮游山海 ❌𒅒",
    "𒅒 ❌镜花水月 ❌𒅒",
    "𒅒 ⭕️鹿王本身 ⭕𒅒", 
     "𒅒 ⭕️精灵南瓜车 ⭕𒅒", 
      "𒅒🔵️竹 蜻 蜓 🔵𒅒",   
      "𒅒 🔵️曦光绘梦 🔵𒅒",  
      "𒅒 🔶️裂空机甲 🔶𒅒",
      "𒅒 🔶️星河机甲 🔶𒅒",
      "𒅒 ⚜️️无敌旋风 ⚜️𒅒",
     "𒅒 ⚜️️环海洛洛 ⚜️𒅒",
     "𒅒 🌐️环海洛洛-进阶 🌐𒅒",
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
function XCA5()
gg.toast("开启成功后点击继续探险")
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


function XCA6()
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


function XCA7()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️小晨⚠️"))
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


function XCA11()
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


function XCA12()
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

function XCA13()
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


function XCA14()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.07601483e38F;24F;3.36311631e-41F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 12}})
	 end
	 gg.toast("曾经你和我一起看夕阳....")
	 gg.clearResults()
end

function XCA15()
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
function XCA16()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end

function XCA17()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12006;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 5}})
	 end
	 gg.toast("喷射钩爪开启成功")
	 gg.clearResults()
end

function XCA18()
qmnb = {
{["memory"] = 4},
{["name"] = "无限耐久"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function XCA19()
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

function XCA20()
vs=gg.prompt({
"在创造模式把你要添加的东西放1个在第8格,一会儿会自动搜索完成后自己点转到,滑到黄色框框下面30格,有1个-11开头的数值,(注意！代码不是固定的每次进入游戏代码会刷新,如果你重新打开了游戏上一次的代码就用不了要重新找)"}, {[1]=0}, {[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "寻找代码"},
{["value"] = 4062199228405908463, ["type"] = 32},
}
xqmnb(qmnb)
os.exit()
end


function XCA21()
as=gg.prompt({
"输入物品代码不知道就按寻找代码找"}, {[1]=0}, {[1]="number"})[1]
end
function a24()
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
gg.clearResults()
end




function XCA22()
o3= gg.choice({
    "🧊萌清定制名字🧊",
    "🧊小北定制名字️🧊",
    "🧊凉情定制地图名️🧊",
    "🧊自定义地图名🧊",
    "🧊🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了⚠️"))
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



function XCA23()
vip= gg.prompt({"输入你拥有的一个皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤勋章"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},

}
xqmnb(qmnb)
end


function XCA24()
menu1 = gg.multiChoice({
'武器附魔第一格',--1
'工具附魔第一格',--2
'弓箭附魔第一格',--3
'装备附魔第一格',--4
'自定附魔第一格',--5
'查看全附魔代码',--6
'第一格无限耐久',--7
'返回上一个主页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then ww1() end
if menu1[2] == true then ww2() end
if menu1[3] == true then ww3() end
if menu1[4] == true then ww4() end
if menu1[5] == true then ww5() end
if menu1[6] == true then ww6() end
if menu1[7] == true then ww7() end
if menu1[8] == true then C() end
end
GLWW=-1
end

function ww1()
qmnb = {
{["memory"] = 4},
{["name"] = "武器附魔"},
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

function ww2()
qmnb = {
{["memory"] = 4},
{["name"] = "工具附魔"},
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

function ww3()
qmnb = {
{["memory"] = 4},
{["name"] = "弓箭附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 1005, ["offset"] = 16, ["type"] = 4},
{["value"] = 905, ["offset"] = 20, ["type"] = 4},
{["value"] = 1305, ["offset"] = 24, ["type"] = 4},
{["value"] = 1405, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww4()
qmnb = {
{["memory"] = 4},
{["name"] = "装备附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2205, ["offset"] = 12, ["type"] = 4},
{["value"] = 1805, ["offset"] = 16, ["type"] = 4},
{["value"] = 1705, ["offset"] = 20, ["type"] = 4},
{["value"] = 1605, ["offset"] = 24, ["type"] = 4},
{["value"] = 2305, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww5()
fm1 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = fm1, ["offset"] = 12, ["type"] = 4},
{["value"] = fm2, ["offset"] = 16, ["type"] = 4},
{["value"] = fm3, ["offset"] = 20, ["type"] = 4},
{["value"] = fm4, ["offset"] = 24, ["type"] = 4},
{["value"] = fm5, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end


function ww6()
gg.alert[[
501击飞1
502击飞2
503击飞3
504击飞4
505击飞5

601锐利1
602锐利2
603锐利3
604锐利4
605锐利5

701人类猎手1
702人类猎手2
703人类猎手3
704人类猎手4
705人类猎手5

801动物猎手1
802动物猎手2
803动物猎手3
804动物猎手4
805动物猎手5

901魔物猎手1
902魔物猎手2
903魔物猎手3
904魔物猎手4
905魔物猎手5

1001点燃1
1002点燃2
1003点燃3
1004点燃4
1005点燃5

1101击退1
1102击退2
1103击退3
1104击退4
1105击退5

1201狩猎幸运1
1202狩猎幸运2
1203狩猎幸运3

1301强力射击1
1302强力射击2
1303强力射击3
1304强力射击4
1305强力射击5

1401无限射击1
1402无限射击2
1403无限射击3
1404无限射击4
1405无限射击5

1501耐久1
1502耐久2
1503耐久3
1504耐久4
1505耐久5

1601近战抗性1
1602近战抗性2
1603近战抗性3
1604近战抗性4
1605近战抗性5

1701远程抗性1
1702远程抗性2
1703远程抗性3
1704远程抗性4
1705远程抗性5

1801爆炸抗性1
1802爆炸抗性2
1803爆炸抗性3
1804爆炸抗性4
1805爆炸抗性5

1901燃烧抗性1
1902燃烧抗性2
1903燃烧抗性3
1904燃烧抗性4
1905燃烧抗性5

2001毒素抗性1
2002毒素抗性2
2003毒素抗性3
2004毒素抗性4
2002毒素抗性5

2101混乱抗性1
2102混乱抗性2
2103混乱抗性3
2104混乱抗性4
2105混乱抗性5

2201反击1
2202反击2
2203反击3
2204反击4
2205反击5

2301击退抗性1
2302击退抗性2
2303击退抗性3
2304击退抗性4
2305击退抗性5

2401精准采集1

3201速度1
2502速度2
2503速度3
2504速度4
2505速度5

2601幸运挖掘1
2602幸运挖掘2
2603幸运挖掘3

2701爆炸射击1

2801龙之缓落1

2901野人猎手1
2902野人猎手2
2903野人猎手3
2904野人猎手4
2905野人猎手5

3001速降(护腿)1
3002速降(护腿)2
3003速降(护腿)3
3004速降(护腿)4
3005速降(护腿)5

3101爬墙(鞋子)1
3102爬墙(鞋子)2
3103爬墙(鞋子)3
3104爬墙(鞋子)4
3105爬墙(鞋子)5

]]
end



function XCA25()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11015D;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function XCA26()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11005D;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function XCA27()
gg.toast("请选择手撸基石开关。")
F = gg.alert("请选择手撸基岩[开 关]","🍔开🍔","🍔关🍔")
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
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
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
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 

function XCA28()
F=gg.alert("请选择｛开 关｝", "开", "关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码"},
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
{["name"] = "强制修改密码关闭"},
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

function XCA29()
gg.clearList()
F = gg.alert("🍡改皮肤开启后召唤商人打一下🍡","🧊联机️改皮肤🧊","🧊宠物改商人🧊️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择默认取消")
  else 
  end
if  F== 1 then
b99 = gg.prompt({"🍡代码在名字的右侧🍡德古拉六世2304叮叮当2560羽姬3072小龙6144二郎神6400幻零式7424柳仙儿7680帕普奇7936嘟嘟啵啵8704斩浪9728喵小糖10752星翼11264离11520黯11776大毛12544乔克12800小艾13056擎天柱13312威震天13568慕斯13824金柚柚14080喜团团14336大黄蜂14848花幽幽15104爱丽丝15872红蜘蛛16384热破16640惊破天16896劳尔17152青弦17664紫悦女孩17920宇宙公主女孩18176柔柔女孩18432月亮公主女孩18688钢锁18944飞标19200嚎叫19456塔莉娅19968碧琪女孩20736白夜女巫卡洛儿20992余小欢21248章小鱼21504熊小吉21760星光熠熠女孩22016云宝女孩22272音韵公主女孩22528初暮22784冲云宵23040利爪23296铁头23552大鹏23808猛虎24064野牛24320大无畏24576银剑24832俯冲25088飞火25344弹弓25600空袭25856圣婴26112魔炎26368灵瑶26624小红帽阿夏尔26880迷小酷27136狼少年沃尔夫27392仙杜瑞拉28160橘子28416查理斯28672泡泡28928朝露繁花29184冰公主29440罗丽29696"},
{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}
}
qmxg = {
{["value"] = b99, ["offset"] = -292, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
  elseif F == 2 then
 o=3017 o1()
end
end
function o1()
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10003, ["type"] = 4},
{["lv"] = 10001, ["offset"] = 72, ["type"] = 4},
{["lv"] = 10, ["offset"] = 20, ["type"] = 4},
{["lv"] = 15, ["offset"] = 16, ["type"] = 4},
{["lv"] = 10, ["offset"] = 12, ["type"] = 4},
{["lv"] = 10, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 88, ["type"] = 4},
}
qmxg = {{["value"] = o, ["offset"] = 80, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end




function XCA30()
b = gg.prompt({"请输入时间"}
,{[1]=0},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 16384},
{["name"] = "时间"},
{["value"] = 24000.0, ["type"] = 16},
{["lv"] = 6.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = b, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
function bbb71()
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

function XCA31()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限召唤坐骑"},
{["value"] = 1616732188, ["type"] = 4},
{["lv"] = 1750689816, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},}
xqmnb(qmnb)
gg.toast("💛💛请点开编辑器继续💛💛")
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
function XCA32()
b = gg.prompt({"💚下面是有用的代码，勿动💚"}
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




function XCA33()
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



function XCA34()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1178703616, 0},{1187036656, 20},}
local tb2 = {{0, -92  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("感谢🐶叶帆")
	 gg.clearResults()
end


function XCA35()
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


function XCA36()
gg.toast("请选择开关")
F = gg.alert("💋请选择｛开 关｝💋","💅🏼开👎🏻","🙏🏾️关👣")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🎁你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.toast("正在开启，请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
elseif F == 2 then gg.toast("正在开启，请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)
gg.clearResults() end end



function XCA37()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15055}})
	 end
	 gg.toast("姜小北原创")
	 gg.clearResults()
end





function XCA38()
SN = gg.multiChoice({
	 "【野人掉落999星星】",
	 "【熔岩巨人掉落999星星】",
	 "【猪掉落999星星】",
	 "【牛掉落999星星】",
	 "【鸡掉落999星星】",
	 "【狼掉落999星星】",
	 "【返回主界面】",
}, nil, "【针对没有星星的各位玩家定制】\n【PS：需要玩家打死功能的指定生物】\n【即可掉落指定星星，原创白九】")
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
	 Main()
end


function XCA39()
as = gg.prompt({"输入修改的代码"}
,{[1]="12550"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]="12750"},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=12750,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
	 end




function XCA40()
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


function XCA41()
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

function XCBY()
qmnb = {
{["memory"] = 4},
{["name"] = "刷强大如我［凉情原创］"},
{["value"] =1080360960, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 500, ["offset"] = -20,["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end

function SMXC()
editData(
{
{["memory"] = 4},
{["name"] = "水上行走"},
{["value"] = -10059797, ["type"] = 32},
{["value"] = 495536409654, ["type"] = 32},
{["value"] = -100, ["type"] = 32},
{["lv"] = -1,["offset"] =4, ["type"] = 16},
},
{
{["value"] = 0,["offset"] =32, ["type"] = 16,["freeze"] = true},
{["value"] = -99,["offset"] =4, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
end

function NMXC()
b = gg.prompt({"请输入别人的迷你号"}
,{[1]=""},{[1]="number"})[1]
editData(
{
{["memory"] = 4},
{["name"] = "控制别人打字"},
{["value"] = "".. zh .."", ["type"] = 4},
{["lv"] = 65535,["offset"] =24, ["type"] = 4},
},
{
{["value"] = b,["offset"] =0, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
end

function XCZM()
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
{["name"] = "添加棉棉披风-小晨制作"},
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

function Main15()
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
print("愿夜里能有人为你点灯你爱的人能住进你的人生") 
print("作者小晨，QQ：3147382477")
print("退出小晨辅助成功\n耗时1秒\n欢迎下次使用")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end

