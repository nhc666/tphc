dl6 = io.open("/storage/emulated/0/.迷你号", "rb") if dl6 == nil then 
GT= gg.prompt({"🌸输入你的迷你号🌸"},{[1]=""},{[1]="number"}) gt=GT[1]
io.open("/storage/emulated/0/.迷你号", "w"):write(gt):close() end
a = io.open("/storage/emulated/0/.迷你号","r"):read("*a")
if a=="" then a="暂未输入迷你号" end

--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦----------

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end



--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦
bqt={"🎡","🌇","🔪","☯️","🎡","🔥","💦","✡","❄️","👻","✈️","🗡️","☠︎","💯","💫","🕉️",}
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    sjbq.."𒅒⚔️房 主 科 技⚔️𒅒"..sjbq,
   sjbq.."𒅒⚔️联 机 科 技⚔️𒅒"..sjbq,
    sjbq.."𒅒⚔️炸 图 科 技⚔️𒅒"..sjbq,
   sjbq.."𒅒⚔️️特 效 科 技⚔️𒅒"..sjbq,
   sjbq.."𒅒⚔️打 狙 科 技⚔️𒅒"..sjbq,
    sjbq.."𒅒⚔️听 歌 科 技⚔️𒅒"..sjbq,
   sjbq.."𒅒⚔️️退 出 科 技⚔️𒅒"..sjbq,
},2018,os.date("👌🥒本辅助一切问题与跑路北无关✋🐛\n🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY==7 then Exited() end
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end
if SY==6 then Main6() end 
FX1=0 end

function Main1()  
SN = gg.multiChoice({
"☠︎无限物品{第1格放2个物品}☠︎",
"☠︎无敌秒杀[死亡状态开启]☠︎",
"☠︎武器附魔[放在第1格]☠︎",
"☠︎工具附魔[放在第1格]☠︎",
"☠︎第一格坐骑位改坐骑☠︎",
"☠︎玩法背包改创造背包☠︎",
"☠︎手机开电脑大房间☠︎",
"☠︎开发者页面按钮☠︎",
"☠︎彩蛋枪超快射速☠︎",   
"☠︎锁坐标摔死[开]☠︎",
"☠︎无限脚印[开启]☠︎",           	   
"☠︎[玩家生物烧死]☠︎",  
"☠︎秒挖一切方块☠︎",
"☠︎落地秒杀[开启]☠︎",                      	     	              	     	
"☠︎坐骑生物加速☠︎",   
"☠︎动态发图片链接☠",           	     	              	     	
    "☠︎更改地图名字☠",        	     	
    "☠︎更改玩家大小☠︎",              	     	
     "☠︎华丽变身勋章☠︎",       	   
     "☠︎秒  复  活☠︎",  	 
     "☠︎玩 家 变 动 物☠︎",      
     "☠︎控 制 玩 家 走 路️☠︎",       	     	 "☠︎吸      人☠︎",
      "☠︎设 置 玩 家 伤 害☠︎",
      "☠︎召 唤 神 龙☠︎",
      "☠︎秒 生 蛋☠︎",
      "☠︎牛 掉 炸 弹☠︎",
      "☠︎生 物 百 万 星 星☠︎",
      "☠︎添 加 坐 骑☠︎",
      "☠︎取 消 实 名 验 证☠︎",
      "☠︎抖 动 全 体 玩 家☠︎",
      "☠︎修 改 坐 骑 任 意 一 值️☠︎",
      "☠︎人 物 无 身☠︎",
      "☠︎房 主 变 身 动 物☠︎",
      "☠水 珠 特 效︎☠︎",
"🎡返 回 主 页🎡",
},nil,"♬宝你不要这样子我会怕的\n☠︎要是你永远陪着我就好了")
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
if SN[20]==true then     a26() end
if SN[21]==true then     a27() end
if SN[22]==true then     a28() end
if SN[23]==true then     a29() end
if SN[24]==true then     a30() end
if SN[25]==true then     a31() end
if SN[26]==true then     a33() end
if SN[27]==true then     a35() end
if SN[28]==true then     kkk1() end
if SN[29]==true then     kkk2() end
if SN[30]==true then     kkk3() end
if SN[31]==true then     kkk4() end
if SN[32]==true then     kkk5() end
if SN[33]==true then     kkk8() end
if SN[34]==true then     kkk6() end
if SN[35]==true then     kkk7() end
if SN[35]==true then	 Main() end end
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

--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦



function kkk8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 50
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end



function kkk7()
gg.toast("请选择水珠特效开关")
F = gg.alert("🐉请选择水珠特效｛开 关｝🐉","🐉开🐉","🐉关🐉")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🐉请选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "水珠特效"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 116, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 228, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 252, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 256, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 260, ["type"] = 4},
}
qmxg = {
{["value"] = 257, ["offset"] = 116, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "水珠特效"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 257, ["offset"] = 116, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 228, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 252, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 256, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 260, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 116, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)
gg.clearResults()
 
 end

end



function kkk6()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("471352985", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("507745027",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "13130"}})
end
gg.toast("点击动作房主变成熔岩巨人(测试)开启成功")
gg.clearResults()
end
end



function kkk5()
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


function kkk4()
zh = gg.prompt({"👻输入抖动速度👻"}
,{[1]=0},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x522970, 0x98, 0x114, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})
gg.toast("全体抖动")
	 gg.clearResults()
end



function kkk3()
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
	 gg.toast("宝,不要难过喔！")
	 gg.clearResults()
end

function kkk2()
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








function kkk1()
SN = gg.multiChoice({
	 "【野人掉落999星星】",
	 "【熔岩巨人掉落999星星】",
	 "【猪掉落999星星】",
	 "【牛掉落999星星】",
	 "【鸡掉落999星星】",
	 "【狼掉落999星星】",
	 "【返回主界面】",
}, nil, "【针对没有星星的各位玩家定制】\n【PS：需要玩家打死功能的指定生物】\n【即可掉落指定星星】")
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




function a35()
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
	 gg.toast("龙哥是你爸爸")
	 gg.clearResults()
end








function a33()
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
	 gg.toast("修改成功！龙哥是你爸爸！")
	 gg.clearResults()
end




function a30()
zh = gg.prompt({"🐉请输入玩家伤害🐉"}
,{[1]=200},{[1]="number"})[1]
local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x3B9B4, 0x54, 0x10, 0x1A4, 0x4}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})

local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x3B9B4, 0x54, 0x10, 0x1A4, 0x0}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})

local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x3B9B4, 0x54, 0x10, 0x1A4, 0x8}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})

local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x3B9B4, 0x54, 0x10, 0x1A4, 0x10}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})
gg.clearResults()
end





function o1()
qmnb = {
{["memory"] = 4},
{["name"] = "怪物"},
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

function a31()
o2= gg.choice({
    "☢️️蜘蛛☢️️",
    "☢️️爆爆蛋☢️️",
    "☢️️叮叮☢️️",
    "☢️️咚咚☢️️",
    "☢️️️当当☢️️",    
    "☢️️️稻草人☢️️",
    "☢️️外星人☢️️",
    "☢️️巨人☢️️",
    "☢️️弓箭手☢️️",
    "☢️️勇敢牛牛☢️️",
    "☢️️狗☢️️",
    "☢️️迅猛龙☢️️",   
    "☢️️蜜蜂☢️️",
    "☢️️乌贼☢️️",
    "☢️️史莱姆☢️️",
    "☢️️足球☢️️",
    "☢️️️鹿王☢️️", 
     "☢️️️地心人☢️️", 
     "☢️️️哮天犬☢️️",    
     "☢️️️龙舟☢️️",
    "☢️️️自定义召唤怪物☢️️",        
    "💎返 回 主 页💎",},2018,os.date("✔️明明是你不理我的可是谁知道你说是我的错 ✔️"))
if o2==1 then o=3107 o1() end
if o2==2 then o=3109 o1() end
if o2==3 then o=3113 o1() end
if o2==4 then o=3114 o1() end
if o2==5 then o=3115 o1() end
if o2==6 then o=3121 o1() end
if o2==7 then o=3123 o1() end
if o2==8 then o=3130 o1() end
if o2==9 then o=3131 o1() end
if o2==10 then o=3401 o1() end
if o2==11 then o=3408 o1() end
if o2==12 then o=3413 o1() end
if o2==13 then o=3418 o1() end
if o2==14 then o=3601 o1() end
if o2==15 then o=3602 o1() end
if o2==16 then o=3420 o1() end
if o2==17 then o=4503 o1() end
if o2==18 then o=3501 o1() end
if o2==19 then o=4200 o1() end
if o2==20 then o=3806 o1() end
if o2==21 then o = gg.prompt({"自己找代码"},{[1]=3113},{[1]="number"})[1] o1() end
XGCK=-1 end



function a29()
gg.toast("请选择开关")
F = gg.alert("🎭请选择｛开 关｝❄️","☣️🏼开☣️🏻","🏾️☢️关☢️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("☢️你未选择｛开 关｝☢️")
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




function a28()
zh = gg.prompt({"🐉输入玩家走向距离🐉"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
	 gg.searchAddress("043AFE08",-1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1)
	 sl=gg.getResultCount()
	 if sl>1 then sl=1 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = zh}})
	 end
	 gg.toast("玩家走向开启")
	 gg.clearResults()
end




function a27()
local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x1238, 0x68, 0x370, 0x267}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = 999, freeze = true}})
gg.toast("己切换踢动物")
	 gg.clearResults()
end



function a26()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("100;100;-1;1D::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(2000)
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
        value = 8
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end


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

function a22()
gg.alert("🧊先点击动态发布按钮🧊","☠︎️开启☠︎️️")
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
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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
F=gg.alert("🔰请选择｛开 关｝🔰", "☠︎开☠︎", "☠︎️关☠︎️️")
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
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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

function a20()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1178703616, 0},{1187036656, 20},}
local tb2 = {{0, -92  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("龙哥是你爸爸")
	 gg.clearResults()
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
F = gg.alert("🔰请选择功能🔰","☠︎彩蛋枪强化1☠︎","☠︎自定义️子弹2☠︎️️")
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
      "𒅒🧊️曦光绘梦🧊𒅒",  
      "𒅒🧊️裂空机甲🧊𒅒",
      "𒅒🧊️星河机甲🧊𒅒",
      "𒅒🧊️无敌旋风🧊𒅒",
     "𒅒🧊️环海洛洛🧊𒅒",
     "𒅒🧊️环海洛洛-进阶🧊𒅒",
     "𒅒🧊自定义坐骑🧊𒅒",
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
function a8()
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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


--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦


function Main2() 
SN = gg.multiChoice({
	 "❄️踏 空 跳[开]❄",
	 "❄️穿 墙[开启]❄",
	 "❄第3人称上帝视角❄",
             "❄飞行上升速度❄️",
	 "❄超远攻击[开启]️❄️",
	 "❄篮 球 模 式❄️",
	 "❄三 角 透 视❄",
	 "❄️人 物 加 速❄",
	 "❄能 量 剑 无 cd❄",
	 "❄观 战 模 式[开]❄",
	 "❄刷怪方块刷坐骑[选择鸡]❄",
	 "❄️卡 退 房 主[开]❄️",
	 "❄️附 身 别 人[开]❄️",
	 "❄️解除刷屏禁言❄️",
	 "❄️人 生 巅 峰[开启]❄️",
	 "❄️秒吃胡萝卜土豆❄️",
	 "❄️潜 行 变 高[开]❄️",	 
             "❄能量剑闪现距离️❄️",
             "❄宠 物 选 择️❄️",
             "❄️联 机 改 皮 肤❄️",
             "❄联 机 改 名❄️",
             "❄小淘气二段跳️❄️",
             "❄锁定高度隐身️❄️",
             "❄️伪 房 主 (备用)❄️",
             "❄编辑器召唤boss️❄️",
             "❄免手机号验证打字️❄️",
             "❄️龙哥改名❄️",
             "❄️留言板刷屏❄️",
             "❄️伤 害 转 移❄️",
             "❄️解除禁用危险品❄️",
             "❄️修 改 时 间❄️",
             "❄️自动走路❄️",
             "❄️崩服务器❄️",
             "❄️自己踢自己❄️",
             "❄️踢房主(龙哥原创)❄️",
             "❄超 级 人 类️❄️",
             "❄️寻找代码❄️",
             "❄添加物品️❄️",
             "❄️超 级 高 跳❄️",
             "❄️防  踢 (测试)❄️",
             "❄️解 除 权 限❄️",
             "❄️一 键 崩 服❄️",
             "❄️自 定 特 效❄️",
             "❄️灵 魂 出 窍❄️",
            " ❄️禁 用 钩 爪 塞 子❄️",
            "❄️云 服 服 主❄️",
            "❄第三人称远程攻击️❄️",
            "❄️痛 苦 面 具❄️",
            "❄️看 破 轮 回❄️",
            "❄️三 角 透 视[无关]❄️",
            "❄一 键 秒 杀️❄️",
            "❄️改 队 伍❄️",
            "❄️人 物 浮 空❄️",
            "❄️切 换 黑 化❄️",
            "❄️联 机 改 皮 (一岁)❄️",
            "❄修 改 宠 物 (一岁️)❄️",
            "❄️360度视角（龙哥修复）❄️",
            "❄️切换脚本❄️",
            "❄️切换小可脚本❄️",
            "❄切换北少脚本️❄️",
            "❄切换晓北脚本️（密码:晓北)❄️",
            "❄️破解加密脚本(不对于迷你)❄️",
            "❄️切换梦幻脚本❄️",
            "❄️切换傲傲脚本❄️",
            "❄️解 防 沉 迷❄️",
            "❄伪 飞 行❄",
            "❄️修 改 皮 肤❄️",
            "❄️修 改 皮 肤 名 字❄️",
            "❄️修 改 头 像 框❄️",
            "❄️暗色模式[开]❄️",
            "❄️暗色模式[关]❄️",
            "❄️角 色 技 能❄️",
            "❄️40 人 房 间❄️",
            "❄️物 品 页 面❄️",
            "❄️时 间 加 速❄️",
            "❄️无 限 血 量❄️",
            "❄️强 制 修 改 密 码❄️",
            "❄️自 定 义 状 态❄️",
            "❄️自 定 义能 量 剑 距 离❄️",
            "❄️刷 家 园 勋 章❄️",
            "❄️无 中 生 有❄️",
            "❄️钩 爪 无 C D❄️",
            "❄钩 爪 连 发️❄️",
            "❄️添 加 物 品❄️",
            "❄️盲 人 世 界❄️",
            "❄️全 体 起 立❄️",
            "❄️人 物 范 围❄️",
            "❄️卡 死 房 主❄️",
            "❄️伪 服 主❄️",
            "❄️房 主 死 亡❄️",
            "❄切 换 蓝 风 脚 本️❄️",
            "❄️切 换 叶 帆 脚 本❄️",
            "❄️改 脚 印❄️",
            "❄️房 主 改 皮 肤❄️",
            "❄坐 骑 无 限 次️❄️",
            "❄血 量 突 出️❄️",
            "❄️切 换 皮 肤❄️",
            "❄️人 物 分 身❄️",
            "❄️模 式 修 改❄️",
            "❄定 时 瞬 移️❄️",
            "❄️标 点 传 送❄️",
            "❄️卡 退 房 主(指针)❄️",
            "❄隐 身️❄️",
            "❄足 球 模 式️❄️",
            "❄️伪 房 主(基址)❄️",
            "❄️飞 天(基址)❄️",
            "❄️龙 哥 装 死❄️",
            "❄️无 限 跳(指针)❄️",
            "❄️修 改 广 告 物 品❄️",
            "❄️足 球 篮 球 关 闭❄️",
            "❄改 变 画 质️❄️",
            "❄️开 发 者 界 面❄️",
            "❄解 除 拉 黑❄️",
            "❄️穿 墙 攻 击❄️",
            "❄️卡 崩 自 己(SB才用)❄️",
            "❄️附 体❄️",
            "❄️人 物 失 重❄️",
            "❄️改 变 自 身 队 伍❄️",
            "❄️自 动 开 倍 镜❄️",
            "❄️踢 成 员❄️",
            "❄️创 造 取 物❄️",
            "❄️添 加 火 箭 背 包❄️",
            "❄️冒 险 奖 励 物 品❄️",
            "❄️改 变 冒 险 奖 励❄️",
            "❄️娱  乐  功  能❄️",
            "❄️大  厅  上  色❄️",
            "❄0 元 买 迷 你 币️❄️",
            "❄️写  笔  记(基址)❄️",
	        "🎡返 回 主 页🎡",
},nil,"你为什么要不断的来伤害我\n我好难受啊！")
 if SN == nil then else
if SN[1]==true then b1() end
if SN[2]==true then b3() end
if SN[3]==true then b5() end
if SN[4]==true then b7() end
if SN[5]==true then b8() end
if SN[6]==true then b9() end
if SN[7]==true then b10() end
if SN[8]==true then b11() end
if SN[9]==true then b12() end
if SN[10]==true then b13() end
if SN[11]==true then b15() end
if SN[12]==true then b16() end
if SN[13]==true then b18() end
if SN[14]==true then b19() end
if SN[15]==true then b20() end
if SN[16]==true then b22() end
if SN[17]==true then b23() end 
if SN[18]==true then b24() end 
if SN[19]==true then b25() end
if SN[20]==true then b26() end
if SN[21]==true then b28() end
if SN[22]==true then b29() end
if SN[23]==true then b30() end
if SN[24]==true then b31() end
if SN[25]==true then b32() end
if SN[26]==true then b33() end
if SN[27]==true then b34() end
if SN[28]==true then b35() end
if SN[29]==true then b36() end
if SN[30]==true then b37() end
if SN[31]==true then b38() end
if SN[32]==true then b39() end
if SN[33]==true then b40() end
if SN[34]==true then b41() end
if SN[35]==true then b42() end
if SN[36]==true then b43() end
if SN[37]==true then b44() end
if SN[38]==true then b45() end
if SN[39]==true then b46() end
if SN[40]==true then b47() end
if SN[41]==true then b48() end
if SN[42]==true then b49() end
if SN[43]==true then b50() end
if SN[44]==true then b51() end
if SN[45]==true then b52() end
if SN[46]==true then b53() end
if SN[47]==true then b54() end
if SN[48]==true then b55() end
if SN[49]==true then b56() end
if SN[50]==true then b57() end
if SN[51]==true then b58() end
if SN[52]==true then b59() end
if SN[53]==true then b61() end
if SN[54]==true then b62() end
if SN[55]==true then b63() end
if SN[56]==true then b64() end
if SN[57]==true then b65() end
if SN[58]==true then b66() end
if SN[59]==true then b67() end
if SN[60]==true then b68() end
if SN[61]==true then b69() end
if SN[62]==true then b70() end
if SN[63]==true then b71() end
if SN[64]==true then b72() end
if SN[65]==true then b73() end
if SN[66]==true then b74() end
if SN[67]==true then b75() end
if SN[68]==true then b76() end
if SN[69]==true then b77() end
if SN[70]==true then b78() end
if SN[71]==true then b79() end
if SN[72]==true then b80() end
if SN[73]==true then b81() end
if SN[74]==true then b82() end
if SN[75]==true then b83() end
if SN[76]==true then b84() end
if SN[77]==true then b85() end
if SN[78]==true then b86() end
if SN[79]==true then b87() end
if SN[80]==true then b88() end
if SN[81]==true then b89() end
if SN[82]==true then b90() end
if SN[83]==true then b91() end
if SN[84]==true then b92() end
if SN[85]==true then b93() end
if SN[86]==true then b94() end
if SN[87]==true then b95() end
if SN[88]==true then b96() end
if SN[89]==true then b97() end
if SN[90]==true then b98() end
if SN[91]==true then b99() end
if SN[92]==true then b100() end
if SN[93]==true then b101() end
if SN[94]==true then b102() end
if SN[95]==true then b103() end
if SN[96]==true then b104() end
if SN[97]==true then b105() end
if SN[98]==true then b106() end
if SN[99]==true then b107() end
if SN[100]==true then b108() end
if SN[101]==true then b109() end
if SN[102]==true then b110() end
if SN[103]==true then b111() end
if SN[104]==true then b112() end
if SN[105]==true then b113() end
if SN[106]==true then b114() end
if SN[107]==true then b115() end
if SN[108]==true then b116() end
if SN[109]==true then b117() end
if SN[110]==true then b118() end
if SN[111]==true then b119() end
if SN[112]==true then b120() end
if SN[113]==true then b121() end
if SN[114]==true then b122() end
if SN[115]==true then b123() end
if SN[116]==true then b124() end
if SN[117]==true then b125() end
if SN[118]==true then b126() end
if SN[119]==true then b127() end
if SN[120]==true then b128() end
if SN[121]==true then b129() end
if SN[122]==true then b130() end
if SN[123]==true then b131() end
if SN[124]==true then b132() end
if SN[125]==true then b133() end
if SN[126]==true then b134() end
if SN[127]==true then b135() end
if SN[128]==true then b136() end
if SN[129]==true then Main() end end
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
		local _Q = tonumber(0x167ba0fe)
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




Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
Q=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，共偏移1条数据！")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD





function b136()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x510DBC, 0x80, 0x50, 0x2C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 16777216, freeze = true}})
gg.clearResults()
end










function b135()
SN = gg.prompt({
  "🔴 0元购买10迷你币",
  "🔵 0元购买50迷你币",
  "🔴 0元购买100迷你币",
  "🔵 0元购买250迷你币",
  "🔴 0元购买500迷你币",
  "🔵 0元购买1000迷你币",
  "🔴 返 回 主 页" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 fffff1()
end
if SN[2]==true then
	 fffff2()
end
if SN[3]==true then
	 fffff3()
end
if SN[4]==true then
	 fffff4()
	 end
if SN[5]==true then
	 fffff5()
	 end
if SN[6]==true then
	 fffff6()
	 end
if SN[7]==true then
	  
fh() 
end
FX1=0
FX2=0
end
end
gg.clearResults()

function fffff1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end

function fffff2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("50;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end



function fffff3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("100;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end



function fffff4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("250;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end

function fffff5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("500;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end
function fffff6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1000;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("请重新打开商店充值页面")
end






function b134()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("65536;16777472;1544;720;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(600)
gg.editAll("16777216", gg.TYPE_DWORD)
gg.toast("大厅上色开启成功")
gg.clearResults()
 elseif F == 2 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("65536;16777472;1544;720;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(600)
gg.editAll("16777472", gg.TYPE_DWORD)
gg.toast("大厅上色关闭成功")
gg.clearResults()
end
end


function b133()
  SN = gg.multiChoice({
  "人物摇头",
  "灵魂出窍",
  "人物浮空",
  "螃蟹走路",
  "时间加速",
  "剑的距离",
  "暂无功能",
  "暂无功能",
  "暂无功能",
  "返回主页"
 }, nil, "")
  if SN == nil then
  else
  if SN[1] == true then
    yx1()
 end
 if SN[2] == true then
    yx2()
 end
 if SN[3] == true then
   yx3()
 end
 if SN[4] == true then
    yx4()
 end
 if SN[5] == true then
    yx5()
 end
  if SN[6] == true then
   yx6()
 end
  if SN[7] == true then
    yx7()
 end
 if SN[8] == true then
    yx8()
 end
 if SN[9] == true then
   yx9()
 end
 if SN[10] == true then
   fh()
  end
end
  XGCK = -1
end


function yx1()
if(cx1=="〖开启〗")then
cx1=gbgn
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
  elseif(cx1=="〖关闭〗")then
cx1=kqgn
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


function yx2()
      if(cx1=="〖开启〗")then
     cx1=gbgn
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
	 gg.toast("👾注意本体位置👾")
	 gg.clearResults()
      elseif(cx1=="〖关闭〗")then
     cx1=kqgn
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2.06831653e-42F;30F;2.37528666e-38;1000F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 10}})
	 end
	 gg.toast("👾归体👾")
	 gg.clearResults()
end
end

function yx3()
if(cx3=="〖开启〗")then
cx3=gbgn
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8;4::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -2}})
	 end
	 gg.toast("👾人需要漂浮")
	 gg.clearResults()
      elseif(cx3=="〖关闭〗")then
     cx3=kqgn
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2;4::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
	 end
	 gg.toast("👾归位👾")
	 gg.clearResults()
end
end

function yx4()
if(cx4=="〖开启〗")then
cx4=gbgn
qmnb = {
{["memory"] = 4},
{["name"] = "螃蟹走路"},
{["value"] = 999.0, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 0, ["type"] = 16},
{["value"] = 999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
  elseif(cx4=="〖关闭〗")then
cx4=kqgn
qmnb = {
{["memory"] = 4},
{["name"] = "螃蟹走路"},
{["value"] = 999.0, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 16},
{["value"] = -1, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function yx5() 
if(cx5=="〖开启〗")then
cx5=gbgn
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
  elseif(cx5=="〖关闭〗")then
cx5=kqgn
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

function yx6()
if(cx6=="〖开启〗")then
cx6=gbgn
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
  elseif(cx6=="〖关闭〗")then
cx6=kqgn
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








function b132()
gg.alert[[
★-----xyg-----★
[武器]15007-罐装手雷
[武器]15008-菠萝手雷
[投射物]15050-投射物-野人猎手
[投射物]15051-投射物-硫黄弓手
[投射物]15052-投射物-小恶魔
[投射物]15053-投射物-野生团子
[投射物]15054-投射物-黑龙火球
[投射物]15055-投射物-黑龙熔岩石柱
[投射物]15056-投射物-黑龙熔岩球
[投射物]15057-投射物-黑龙混乱球
[投射物]15058-投射物-小外星人A
[投射物]15059-投射物-小外星人B
[投射物]15060-投射物-小外星人C
[投射物]15061-投射物-萌眼叮叮
[投射物]15062-投射物-萌眼咚咚
[投射物]15063-投射物-萌眼当当
[投射物]15064-投射物-萌眼叮咚
[投射物]15065-投射物-萌眼叮当
[投射物]15066-投射物-萌眼咚当
[投射物]15067-投射物-萌眼咻咻
[投射物]15068-投射物-混乱弓手
[投射物]15069-投射物-远程守卫
[投射物]15070-投射物-远程守卫
[投射物]15071-投射物-远程守卫
[武器]15505-虚空巨石
[武器]15506-圆球爆弹
[武器]15507-冰锥
[武器]15508-熔岩球
[投射物]15509-萌眼星BOSS-击飞激光
[投射物]15510-萌眼星BOSS-冰冻激光
[投射物]15511-萌眼星BOSS-爆炸激光
[投射物]15512-萌眼星BOSS-岩石海啸
[投射物]15513-萌眼星BOSS-蓝色手臂技能
[投射物]15514-萌眼星BOSS-白色手臂技能
[投射物]15515-萌眼星BOSS精英怪-蓝色投掷
[投射物]15516-萌眼星BOSS精英怪-白色投掷
[投射物]15517-萌眼星BOSS精英怪-蓝色技能
[投射物]15518-萌眼星BOSS精英怪-白色技能
[武器]15519-黑龙熔岩球
[武器]15520-黑龙混乱球
---投  射  物---
12299擎天柱炮弹
12300星星弹
15509燃烧激光
15510冰冻激光
15511爆炸激光
15512岩石海啸
15513冰球
15518特效炸弹
15519岩浆弹
15520混乱球_15521
15051燃烧箭
15052燃烧雪球
15053泡泡球
15056熔岩弹
15057混乱弹
15058炸弹
15059冰锥[不可放置方块]
15060熔岩球
15062冰锥
15064冰炸弹
15065火炸弹
15066冰雪弹
15067紫球
15068紫箭
]]

mnsj={}
mnsj.qq=gg.prompt({"物品代码","物品数量"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq
Aa1=mnsj.qq[1]
Aa2=mnsj.qq[2]

qmnb = {
{["memory"] = 4},
{["name"] = "联机取物"},
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

qmnb = {
{["memory"] = 4},
{["name"] = "联机取物"},
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



function b131()
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

function b130()
y=gg.prompt({"🐚请输入火箭背包的十六进制🎋"},{},{"number"})
if y then
qmnb = {
{["memory"] = 4},
{["name"] = "添加火箭背包-蓝风制作"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 600, ["offset"] = 8, ["type"] = 4},
{["value"] = y[1], ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end


function b129()
qmnb = {
{["memory"] = 1},
{["name"] = "背包取物"},
{["value"] = 16777216, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end







function b128()
a = gg.prompt({"请输入你的迷你号"}
,{[1]=922640235},{[1]="number"})[1]
  gg.toast("请在10秒内复制你想踢的人迷你号")
  gg.sleep(10000)
b = gg.prompt({"请输入你想踢的人迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢成员"},
{["value"] = a, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
    gg.sleep(100)
        gg.toast("警告\n[现在请你在评论区发一条消息]\n［不按要求的会出现bug］\n发完后单点修改器继续！")
if gg.isVisible(true) then 
gg.setVisible(false) 
qmnb = {
{["memory"] = 4},
{["name"] = "踢成员"},
{["value"] = b, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end end end end end


 function b127()
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
	 gg.toast("宝放心我会爱你的..")
	 gg.clearResults()
end





function b126()
dw = gg.prompt({"请输入你要的队伍"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "人物队伍"},
{["value"] = 16777473, ["type"] = 4},
{["lv"] = 999, ["offset"] = 1392, ["type"] = 4},
{["lv"] = 75.0, ["offset"] = 1888, ["type"] = 16},
}
qmxg = {
{["value"] = dw, ["offset"] = 292, ["type"] = 4},
{["value"] = dw, ["offset"] = 364, ["type"] = 4},
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
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物失重"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "关闭失重"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 8, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end






function b124()
m6= gg.choice({
"🧊神灵附体🧊",    
    "🧊抵抗神灵🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("如果玩法房间用不了，先去生存开启一次️"))
if m6==1 then  yc1() end
if m6==2 then  yc2() end
if m6==3 then  Main() end
XGCK=-1 end

function yc1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8F;4::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-8", gg.TYPE_FLOAT)
	 end
	 
	 
	 
	 
 function yc2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-8F;4::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 end
	
	 


 function b123()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1028443341;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("先打开一次创造背包")
	 gg.clearResults()
end



 function b122()
m7= gg.choice({
"✅第一步✅",    
    "✅第二步✅️",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("必须都要开，远程武器用不了(不包括点狙)"))
if m7==1 then  yc3() end
if m7==2 then  yc4() end
if m7==3 then  Main() end
XGCK=-1 end

function yc3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("400;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 gg.clearResults()
end
end


function yc4()
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


function b121()
qmnb = {
{["memory"] = 4},
{["name"] = "解黑名单"},
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


function b120()
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







function b119()
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




function b118()
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = zh, ["offset"] = 880, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 600, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end





function b117()
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








function b116()
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





function b115()
menu1 = gg.choice({
'☢️装 死 开☢️',
'☣️装 死 关☣️',
'☠︎返 回☠︎'},
nil,'注意：开启前先死一次️')
if menu1 == 1 then lg123() end
if menu1 == 2 then lg999() end
if menu1 == 3 then Main() end
XGCK=0
end


function lg123()
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

function lg999()
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





function b114()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B7B8, 0x5E8, 0x640, 0x53C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 41736}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B7B8, 0x5E8, 0x640, 0x2B4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 5}})
gg.clearResults()
end




function b113()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5127C0, 0xD4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 3, freeze = true}})
gg.clearResults()
end


function b112()
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
function b111()
  AA1 = gg.prompt({
    "[请输入你的高度]开启成功后用飞行行走"
  }, {
    [1] = 8
  }, {
    [1] = "number"
  })[1]
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 515396075740, type = 32},
    {
      lv = 60,
      offset = -16,
      type = 4
    },
    {
      lv = 180,
      offset = -12,
      type = 4
    },
    {
      lv = 120,
      offset = -4,
      type = 4
    },
    {
      lv = AA1,
      offset = 36,
      type = 4
    }
  }
  qmxg = {
    {
      value = 40000,
      offset = 12,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = "隐身"},
    {
      value = zh1,
      type = 4
    },
    {
      lv = 16777473,
      offset = -68,
      type = 4
    }
  }
  qmxg = {
    {
      value = -255,
      offset = 320,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
end
function b110()
SN = gg.prompt({
"卡退房主〖请先复制好房主的迷你号〗",
"请输入自己迷你号",
"📂返回主页📂",},
{true,nil,nil},{"checkbox","checkbox","checkbox",})
if SN[1] then
	 a1()
end
if SN[2] then
	 a2()
end
if SN[3] then
     Main6666()
end
FX1=0
FX2=0
end



function a1()
r = gg.prompt({"请输入房主迷你号"}
,{[1]=nil},{[1]="number"})[1]
local Add=gg.getRangesList("libAppPlayJNI.so:bss")[1].start
local Add=Add+0x287758
local Add=ReadAdd(Add)+0x4C
local Add=ReadAdd(Add)+0x40
local Add=ReadAdd(Add)+0x28
ReadAddress(Add,r,4,false,nil)
gg.toast("龙哥原创")
gg.sleep(10000)
ReadAddress(Add,a,4,false,"原创龙哥")
end

function a2()
SN = gg.prompt({
"请输入你的迷你号"},
{[1] = zh},{"number",})
zh = SN[1]  
io.open("/sdcard/mnh.txt", "w") io.open("/sdcard/mnh.txt", "w"):write("" .. zh .. ""):close()
end






function b109()
gg.alert("☣这里会弹出一个SX使用之后只有一次性️☣️")
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1628895578.lua").content))
gg.clearResults()
end



function b108()
gg.alert("☣️使用前要在迷你地图中☣️")
zh = gg.prompt({"🐉请输入定点瞬移数字🐉"}
,{[1]=50},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xB0, 0x124}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})
gg.toast("定点瞬移")
end
function b107()
gg.alert("☣️不会用就别来凑热闹☣️")

F = gg.alert("第一次开启需要[点开启前输入]","     修改模式     ","    开启前输入     ")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
msdm1 = gg.prompt({"生存.0-创造.1-极限生存.2-创造生存.3-玩法创造.4-玩法生存.5-高级生存.6[注意纯生存修改创造闪退]"}
,{[1]=4},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "模式修改"},
{["value"] = dtmnh, ["type"] = 4},
{["lv"] = 1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = -92, ["type"] = 4},
{["lv"] = -1, ["offset"] = 164, ["type"] = 4},
{["lv"] = 1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = msdm1, ["offset"] = -8, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)

 elseif  F== 2 then
dtmnh = gg.prompt({"请输入地图作者迷你号[否则开启失败，自动退出脚本]"}
,{[1]=12345},{[1]="number"})[1]
a2()
end
end

function b106()
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
function b105()
m9= gg.choice({
    "🧊璎落切换其他皮肤🧊",
    "🧊熊小吉切换其他皮肤🧊",
    "🧊爱丽丝切换其他皮肤🧊",
    "🧊雷光切换其他皮肤🧊",
    "🧊凛冬切换其他皮肤🧊",    
    "🧊️妙妙改其他皮肤🧊",
    "🧊️自定义改其他皮肤🧊",
    "𒅒🎡返回🎡𒅒",},2018,os.date("𒅒⚠️修改成功后，只需在房间里切换角色即可切换皮肤"))
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



function b104()
b = gg.prompt({"💔不会用就滚💔"}
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


function b103()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限召唤坐骑"},
{["value"] = 1616732188, ["type"] = 4},
{["lv"] = 1750689816, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},}
xqmnb(qmnb)
gg.toast("请点开编辑器继续")
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
function b102()
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

function b101()
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
function b100()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1628067633.lua").content))
gg.clearResults()
end
function b99()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1628004434.lua").content))
gg.clearResults()
end
function b98()
gg.toast('正在调用房主死亡数据请稍后...')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('150;20.0;15.0::',16)
gg.searchNumber('150',16)
gg.getResults(5)
gg.editAll('99999',16)
end
function b97()
b31a= gg.prompt({"输入服主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "伪服主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
function b96()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5119B8, 0x8, 0x3C4, 0x264}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -0xc, freeze = true}})
	 gg.clearResults()
end

function b95()
gg.toast("请选择开关")
F = gg.alert("🎵请选择｛开 关｝🎵","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌀你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物范围"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},

}
qmxg = {
{["value"] = -150000000, ["offset"] = 0, ["type"] = 4},
{["value"] = -150000000, ["offset"] = -4, ["type"] = 4},
{["value"] = -150000000, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物范围"},
{["value"] = -150000000, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = -150000000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -150000000, ["offset"] = 4, ["type"] = 4},

}
qmxg = {
{["value"] = 220, ["offset"] = 0, ["type"] = 4},
{["value"] = 120, ["offset"] = -4, ["type"] = 4},
{["value"] = 120, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb) end end
function b94()
b = gg.prompt({"🐉请设置全体起立大小🐉"}
,{[1]=5},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "全体起立"},
{["value"] = 2139095039, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},

{["lv"] = 1065185444, ["offset"] = 460, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -4, ["type"] = F},
{["value"] = b, ["offset"] = -8, ["type"] = F},
{["value"] = b, ["offset"] = -12, ["type"] = F},
}
xqmnb(qmnb)
end
function b93()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1202199584, 0}, {1077936128, -20},{1186693120, -32},}
local tb2 = {{0, -20  }, }
SearchWrite(tb1, tb2, dataType)
end
function b92()
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
gg.clearResults()
end
end
 function b91()
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
function b90()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12006D;2::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 	 if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.getResults(25)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 end

function b89()
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

function b88()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627610722.lua").content))
gg.clearResults()
end
function b87()
jl=gg.prompt({"『请输入你要把距离改成多少后面加00多少默认10』"},{'1000'},{"number"})[1]
editData(
{
{["memory"] = 16384},
{["name"] = "能量剑技能距离自定义"},
{["value"] = 1180356644, ["type"] = D},
{["lv"] = 1116171303,["offset"] =-4, ["type"] = D},
},
{
{["value"] = jl,["offset"] =-8, ["type"] = F,["freeze"] = true},
}
)
gg.clearResults()
end
function b86()
xl1=gg.prompt({"『请输入把血量修改成多少默认2000』"},{'2000'},{"number"})[1]
gg.clearResults()
xl2=gg.prompt({"『请输入把体力值恢复速度改成多少默认2000』"},{'2000'},{"number"})[1]
editData(
{
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "人物状态自定义"},
{["value"] = 100, ["type"] = F},
{["lv"] = 1045220557,["offset"] =16, ["type"] = D},
},
{
{["value"] = xl1,["offset"] =-4, ["type"] = F,["freeze"] = true},
{["value"] = xl2,["offset"] =236, ["type"] = F,["freeze"] = true},
}
)
gg.clearResults()
end
function b85()
gg.toast("注:你要先修改一次密码才可开启成功")
F=gg.alert("🔰请选择｛开 关｝🔰", "☠︎开☠︎", "☠︎️关☠︎️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("📌你未选择｛开 关｝")
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

function b84()
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
function b83()
F = gg.alert("🔰请选择｛开 关｝🔰", "☠︎开☠︎", "☠︎️关☠︎")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
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

function b82()
gg.toast("请选择物品页面开关")
F = gg.alert("🌸请选择物品页面｛开 关｝🌸","🌸开🌸","🌸关🌸")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("请选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "🌸物品页面开启成功🌸"},
{["value"] = 1080, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -16, ["type"] = 4},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "物品页面关"},
{["value"] = 2103921795, ["type"] = 4},
{["lv"] = 10500, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 12005, ["offset"] = 132, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function b81()
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

function b80()
A1 = gg.prompt({"请输入角色特长代码33-酋长 34-卡卡 40-妮妮 35-史蒂芬教授 36-汤姆队长 37-助教彼得 38-熊孩子 39-酋长夫人 41-特工罗拉 42-小淘气"}
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
function b78()
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
	 

function b79()
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

function b77()
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

function b76()
aba1 = gg.prompt({"输入皮肤模型代码"}
,{[1]=null},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = aba1, ["offset"]=-40,["type"] = 4},
}
mnmmz = ":wwwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义皮肤名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmxg = {
{["value"] = mnmmz, ["offset"] = 8, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 12, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 16, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 20, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 24, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 28, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 32, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 36, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 40, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 44, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 48, ["type"] = 4},

}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("自定义皮肤名开启成功")
if gg.getResultCount() == 0 then
gg.toast("自定义皮肤名开启失败")
else
end


end


function b75()
mnsj={}
mnsj.qq=gg.prompt({"输入迷你号领取皮肤","输入皮肤号1胖达2齐天小圣3兔美美4迷斯拉5琉璃奖6乔治7墨家小飞8安妮9德古拉10叮叮当11荒野猎人12羽姬13慕容啸天14乔一 15篮球队长 16啦啦队长 17露西 18黑帽子船长 19甜心玛丽 20锦衣卫 21花小楼 22莉莉丝 23月无双 24叶小龙 25二狼神 26鱼小乐 27迷俊俊 28幻音 29幻0式 30柳仙儿 31帕普奇 32米娜 33雪人 34嘟嘟啵啵 35啵啵 36嘟嘟 37梦歌 38斩浪 39天使 40暗灵 50乔克 51小艾 52秦天柱 53威震天 54慕斯 55金悠悠 56喜团团 57林千树 58大黄蜂 59花幽幽 60星灵 61雪球球 62爱丽丝 63龟太郎 64红蜘蛛 65热破 66惊破天 67劳尔 68铃音 69清弦 70紫悦 71宇宙公主 72柔柔女孩 73月亮公主 74钢索 75飞镖 76嚎叫 77达奇 78塔琳娜 79森林隐者 80兔子拉比 81碧琪 82卡洛尔 83余小环 84章小丸 85熊小吉 86星光熠熠 87云宝 88音韵公主 897初慕 90冲云霄 96大无畏 91 利爪 92富余人物2/ 93富余人物3/ 94富余人物4/ 95副余人物5/ 91富余人物6/ 97富余人物7/ 98富余人物8/ 99富余人物9/ 100富余人物10/ 101富余人物11/ 102圣婴 103牛魔王 104灵瑶 105小红帽 106迷小酷 107狼少年 108天仙子/雅 109天仙子/颂 110红玫瑰少女 111 橘子/112绣球花少年查李斯 113泡泡 114朝露繁花 115冰公主 116红桃"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq

qmnb = {
{["memory"] = 4},
{["name"] = "皮肤"},
{["value"] = 49, ["type"] = 4},
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

function b74()
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


function b73()
gg.setRanges(4)
local dataType = 4
local tb1 = {{327680000, 0}, {16777216, 4}, }
local tb2 = {{16777216, 4, true}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{327680000, 0}, {16777472, 4}, }
local tb2 = {{16777216, 4, true}, }
SearchWrite(tb1, tb2, dataType)
end
function b72()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626419287.lua").content))
gg.clearResults()
end
function b71()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626407469.lua").content))
gg.clearResults()
end
function b70()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626276403.lua").content))
gg.clearResults()
end
function b69()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626214025.lua").content))
gg.clearResults()
end
function b68()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626248784.lua").content))
gg.clearResults()
end
function b67()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626212236.lua").content))
gg.clearResults()
end
function b66()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626207400.lua").content))
 gg.clearResults()
end
function b65()
gg.alert("☣️屏幕的最高境界☣️")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.02258117e-38F;1.51900754e-42F;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
	 gg.toast("☣️恭喜你旋转成功☣️")
	 gg.clearResults()
end
function b64()
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





function b63()
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
function b62()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1626405935.lua").content))
gg.clearResults()
end
function b61()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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
function b59()
lg1=gg.prompt({"『请输入你现在的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
gg.clearResults()
lg2=gg.prompt({"『请输入你要改成的队伍』1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{zh, 0}, {lg1, 244},}
local tb2 = {{lg2, 244  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("龙 哥 最 帅")
	 gg.clearResults()
end
function b58()
b31a= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功，正在调试。"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "调试成功"},
{["value"] = 180, ["type"] = 4},
{["lv"] = 60, ["offset"] = -4, ["type"] = 4},
{["lv"] = 220, ["offset"] = 12, ["type"] = 4},
{["lv"] = 120, ["offset"] = 8, ["type"] = 4},
{["lv"] = 120, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 128, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 264, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 268, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 272, ["type"] = 4},
}
qmxg = {
{["value"] = 1500, ["offset"] = 24, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end
function b57()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("🃏龙🃏     💫哥💫      ✨超✨      🃏稳🃏")
	 gg.clearResults()
end
function b56()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("🌸天眼开启成功🌸")
	 gg.clearResults()
end

function b55()
b = gg.prompt({"🐉请设置幻境痛苦程度，关闭按钮入口已关闭，浪子不回头🐉"}
,{[1]=9999999},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "痛苦程度"},
{["value"] = 1065185444, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 48, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -308, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 48, ["type"] = F},
{["value"] = b, ["offset"] = -308, ["type"] = F},
}
xqmnb(qmnb)
end
function b54()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627144911.lua").content))
gg.clearResults()
end

function b53()
y = gg.prompt({"『输入服主的迷你号』"}
,{[1]=12345},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "云服服主"},
{["value"] = y, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 16383, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = zh, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
end
function b52()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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
function b51()
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
function b50()
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

function b49()
b31a= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "第一步，开启成功"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
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

function b48()
gg.toast("请选择开关")
F = gg.alert("🎵请选择｛开 关｝🎵","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌀你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除权限"},
{["value"] = zh, ["type"] = 4},
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
{["value"] = zh, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
end
end

function b47()
 qmnb = {
{["memory"] = 4},
{["name"] = "防踢"},
{["value"] = 13278935, ["type"] = 6},
{["lv"] = 109, ["offset"] = -6, ["type"] = 4},
}
qmxg = {
{["value"] = 21630, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 250345, ["offset"] = 112, ["type"] = 4},
{["value"] = 26043, ["offset"] = 16, ["type"] = 4},
{["value"] = 2401, ["offset"] = 20, ["type"] = 4},
{["value"] = 1505, ["offset"] = 254, ["type"] = 4},
{["value"] = 11065, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function b46()
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
function b44()
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


function b45()
as=gg.prompt({
"输入物品代码不知道就按寻找代码找"}, {[1]=0}, {[1]="number"})[1]
end
function b45()
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


function b43()
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
 function b42()
gg.alert("开启前请先复制自己的迷你号")
a = gg.prompt({"请输入你的迷你号"}
,{[1]=nil},{[1]="number"})[1]
gg.toast("请在10秒内复制房主的迷你号\n点击房主头像进入主页即可复制")
gg.sleep(10000)
b = gg.prompt({"请输入房主迷你号"}
,{[1]=nil},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] = a, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function b41()
b31a= gg.prompt({"输入房主迷你号"},{[1]=259537497},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "自己踢自己"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -99999, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function b40()
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
function b39()
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


function b38()
function ReadAddress(adds,value,flags,freeze,name)local data={{ ["address"]=adds,["value"]=value,["flags"]=flags,["freeze"]=freeze}} gg.setValues(data)if freeze==true then gg.addListItems(data)end if name~=nil then gg.toast('['..name..']已注入')end end function ReadAdd(add)t=gg.getValues({[1]={address=add,flags=4}})add=string.format("%X",t[1].value)if (#add)==16 then add=add:sub(9,16) end if (#add)==1 then add=add.."0000000" else add=string.format("%d","0x"..add)end return add end  local Add=gg.getRangesList("libAppPlayJNI.so:bss")[1].start local Add=Add+0x4CBDE8 local Add=ReadAdd(Add)+0x4 local Add=ReadAdd(Add)+0x18 local Add=ReadAdd(Add)+0x24 local Add=ReadAdd(Add)+0x4 ReadAddress(Add,999999999,4,false,"修改时间")
gg.clearResults()
end
function b37()
qmnb = {
{["memory"] = 16384},
{["name"] = "解除禁用危险品"},
{["value"] = 1762840583, ["type"] = 4},
{["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function b36()
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
gg.clearResults()
end


function b35()
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
{["value"] = 6200, ["type"] = 4},
{["lv"] = 524296, ["offset"] = 0x58, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] =0x1C, ["type"] = 4},}

xqmnb(qmnb)
end


function b34()
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"自定义改文字"}
,{[1]=":"},{[1]="text"})[1]
mnmc = ":ggggggggggg"

qmnb = {
{["memory"] = 4},
{["name"] = "改文字开启成功"},
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
gg.toast("改文字开启成功")
if gg.getResultCount() == 0 then
gg.toast("改文字开启失败")
else
end
end




function b33()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end
function b32()
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
function b31()
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
function b30()
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


function b29()
qmnb = {
{["memory"] = 4},
{["name"] = "小淘气"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}}
qmxg = {{["value"] = 42, ["offset"] = -292, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function b28()
o3= gg.choice({
    "🔰开始改名1🔰",
    "🔰开始️改名2🔰  ",
    "🔰永久改名🔰 ",
  "𒅒🎡返回主页🎡𒅒",},2018,os.date("🧊当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if o3==1 then
v1() end
if o3==2 then 
 v2() end
if o3==3 then
v3() end
if o3==4 then  Main() end
XGCK=-1 end



function v3()
ei1 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="105896542"},{[1]="number"})[1]
ei2 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="-152469752"},{[1]="number"})[1]
ei3 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="32451687"},{[1]="number"})[1]
ei4 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="12463527"},{[1]="number"})[1]
ei5 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="-521346"},{[1]="number"})[1]
ei6 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="-12453768"},{[1]="number"})[1]
ei7 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="0"},{[1]="number"})[1]
ei8 = gg.prompt({"傻逼玩意，不会用就别来用"}
,{[1]="0"},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = zh, ["type"] = 4},
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
{["lv"] = 2, ["offset"] = 0x40, ["type"] = 1},
}
qmxg = {
{["value"] = ei1, ["offset"] = 64,["type"] = 4,["freeze"] = true},
{["value"] = ei2, ["offset"] = 68,["type"] = 4,["freeze"] = true},
{["value"] = ei3, ["offset"] = 72,["type"] = 4,["freeze"] = true},
{["value"] = ei4, ["offset"] = 76,["type"] = 4,["freeze"] = true},
{["value"] = ei5, ["offset"] = 80,["type"] = 4,["freeze"] = true},
{["value"] = ei6, ["offset"] = 84,["type"] = 4,["freeze"] = true},
{["value"] = ei7, ["offset"] = 88,["type"] = 4,["freeze"] = true},
{["value"] = ei8, ["offset"] = 92,["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功重进房间")
end

function v1()
mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":#b#"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = zh, ["type"] = 4},
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

function v2()
mnmc2 = ":w"
mnmcc = gg.prompt({"要开启临时改名①这个才有效果"}
,{[1]=":#b#"},{[1]="text"})[1]
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

        
function b26()
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

function b25()  
o2= gg.choice({
    "𒅒🔰圆泡团🔰𒅒",
    "𒅒🔰豪华团🔰𒅒",
    "𒅒🔰巨岩团🔰𒅒",
    "𒅒🔰爆火团🔰𒅒",
    "𒅒🔰️忍者蛙🔰𒅒",    
    "𒅒🔰️玉兔叽🔰𒅒",
    "𒅒🔰汪汪警长🔰𒅒",
    "𒅒🔰黑龙崽🔰𒅒",
    "𒅒🔰金羽鹦鹉🔰𒅒",
    "𒅒🔰幽灵王球🔰𒅒",
    "𒅒🔰黑黝黝🔰𒅒",
    "𒅒🔰球豹王子🔰𒅒",   
    "𒅒🔰梵音猴🔰𒅒",
    "𒅒🔰丰羽孔雀🔰𒅒",
    "𒅒🔰混乱黑龙🔰𒅒",
    "𒅒🔰远古巨人🔰𒅒",
    "𒅒🔰️羽 蛇 神🔰𒅒", 
     "𒅒🔰️虚空幻影-迅🔰𒅒", 
     "𒅒🔰️虚空幻影-猛🔰𒅒",    
     "𒅒🔰️爆爆蛋-叮当🔰𒅒",
    "𒅒🔰️自 定 义 召 唤 🔰𒅒",        
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒你拼了命的想要融入她的世界,而她的世界却不缺你𒅒"))
if o2==1 then o=10003 o1() end
if o2==2 then o=10006 o1() end
if o2==3 then o=10009 o1() end
if o2==4 then o=10012 o1() end
if o2==5 then o=10015 o1() end
if o2==6 then o=10018 o1() end
if o2==7 then o=10021 o1() end
if o2==8 then o=10024 o1() end
if o2==9 then o=10027 o1() end
if o2==10 then o=10030 o1() end
if o2==11 then o=10033 o1() end
if o2==12 then o=10036 o1() end
if o2==13 then o=10039 o1() end
if o2==14 then o=10042 o1() end
if o2==15 then o=3504 o1() end
if o2==16 then o=3514 o1() end
if o2==17 then o=3878 o1() end
if o2==18 then o=3515 o1() end
if o2==19 then o=3516 o1() end
if o2==20 then o3() end
if o2==21 then o = gg.prompt({"自己找代码"},{[1]=3113},{[1]="number"})[1] o1() end
XGCK=-1 end
function o3()
gg.toast("请选择开关")
F = gg.alert("🔰请选择🔰","☠︎叮叮当当☠︎","☠︎️爆爆蛋☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
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
qmxg = {{["value"] = 3113, ["offset"] = 80, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
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
qmxg = {{["value"] = 3109, ["offset"] = 80, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end
end

function b24()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
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

function b7()
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


function c2()
qmnb={
{["memory"]=16384},
{["name"]="解除禁用危险品"},
{["value"]=1762840583,["type"]=4},
{["lv"]=265295819,["offset"]=4,["type"]=4},
{["lv"]=1096303249,["offset"]=8,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=8,["type"]=16}
}
xqmnb(qmnb)
end

function b15()
r = gg.prompt({"『请输入坐骑代码』                                                          3432化石龙-3435飞鼠-3438麒麟-3441陆行鸟-3446海报-3456猫-3459天马-3480月亮-3471龙-3485鹿4503鹿王本身"}
,{[1]=3485},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "刷怪方块"},
{["value"] = 2572702187776, ["type"] = 32},
{["lv"] = 1056964608, ["offset"] =0xE4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] =0x84, ["type"] = 4},
{["lv"] = 599, ["offset"] =4, ["type"] = 4},
{["lv"] = 268, ["offset"] =8, ["type"] = 4},
{["lv"] = 721, ["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = r, ["offset"] = 0x108, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function b16()
gg.alert("🧊开启成功后召唤小泡沫，房主直接闪退迷你🧊","☠︎️开启☠︎️️")
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主开启成功"},
{["value"] = 10003, ["type"] = 4},
{["lv"] = 10001, ["offset"] = 72, ["type"] = 4},
{["lv"] = 10, ["offset"] = 20, ["type"] = 4},
{["lv"] = 15, ["offset"] = 16, ["type"] = 4},
{["lv"] = 10, ["offset"] = 12, ["type"] = 4},
{["lv"] = 10, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 88, ["type"] = 4},
}
qmxg = {{["value"] = 3513, ["offset"] = 80, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end
function b20()
gg.toast(os.date("🔰龙哥提示你开启了就关不了🔰"))

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




function b18()
gg.toast("请选择开关")
F=gg.alert("🎵请选择｛开 关｝🎵", "🍁开🍁", "🍁️关🍁️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("🌀你未选择｛开 关｝")
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
{["value"]=zh,["type"]=4},
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
{["value"]=zh,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end
end
function b1()
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

function b23()
ml0 = gg.prompt({"可以输入-999  -1200 -1500等"}
,{[1]=-800},{[1]="number"})[1]
qmnb={
{["memory"]=16384},
{["name"]="潜行变高"},
{["value"]=1492,["type"]=4},
{["lv"]=1092616192,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=ml0,["offset"]=8,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
 end
function b11()
AA3 = gg.prompt({"输入加数倍数"}
,{[1]=70},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "人物加速"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = AA3, ["offset"] = -0x28, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function b13()
gg.toast("请选择观战模式开关")
F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "☢️开☣️", "☢️关☠︎")
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




function b3()
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

function b19()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁言"},
{["value"] = 1176664923, ["type"] = 4},
{["lv"] = 12862, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
{["value"] = 0, ["offset"] = -16, ["type"] = 4},
{["value"] = 0, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
function b9()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x289088, 0x13C, 0x140, 0xE4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 3, freeze = true}})
gg.clearResults()
end







function b10()
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
function a1()
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] = 945804462, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 945804999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function b12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 end

function b8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("400;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400;500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 gg.clearResults()
end
end
function b5()
A1 = gg.prompt({"『请输入你要的倍数』改成500恢复"}
,{[1]=5000},{[1]="number"})[1]
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
function b22()
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

--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦


function Main3() 
SN = gg.prompt({
             "💔通用创造[一局]💔",
             "💔解除禁用危险品💔",
             "💔南瓜改物品💔",	 
	 "💔玩法改创造[永久]💔",
	 "💔第八格添加编辑器💔",
	 "💔自 定 义改编辑器💔",
	 "💔能 量 剑改编辑器💔",
	 "   💔自 定 义 添 加💔 ",
	 "    💔寻 找 代 码💔     ",
	 "    💔添 加 东 西💔",
	 "  💔云 服 添 加 物 品💔",
	 "💔龙 哥 专 属 取 物 💔",
	 " 💔联 机 取 物(通商)💔",
	 "🎡返 回 主 页🎡",
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end 
if SN[4]==true then c10() end
if SN[5]==true then c9() end
if SN[6]==true then c5() end
if SN[7]==true then c7() end
if SN[8]==true then c11() end
if SN[9]==true then lgzs() end
if SN[10]==true then lgzs1() end
if SN[11]==true then lgzs2() end
if SN[12]==true then lgzs3() end
if SN[13]==true then lgzs4() end
if SN[14]==true then Main() end end
 FX=0 end
 
 
 
function lgzs4()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁获得🍁","🍁️领取🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
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

 elseif  F== 2 then
 gg.clearResults()
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
gg.clearResults()
end 
end
 
 

 
function lgzs3()
qmnb={
{["memory"]=16783},
{["name"]="创造取物"},
{["value"]=1316738214,["type"]=6},
{["lv"]=1637064,["offset"]=9,["type"]=9},
{["lv"]=703120,["offset"]=52,["type"]=6},
{["lv"]=19661960,["offset"]=29,["type"]=3}
}
qmxg={
{["value"]=3,["offset"]=22,["type"]=7}
}
xqmnb(qmnb)

xqmnb(qmnb)
end


 
 function lgzs2()
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

function c13()
tys = gg.prompt({"输入要添加的道具代码"}
,{[1]=12006},{[1]="number"})[1]
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
function lgzs()
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


function lgnbnb()
as=gg.prompt({
"输入物品代码不知道就按寻找代码找"}, {[1]=0}, {[1]="number"})[1]
end
function lgzs1()
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



function c10()
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
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
function c3()  
i2= gg.choice({
    "𒅒☣️炸药桶☣️𒅒",
    "𒅒☣️刷怪方块☣️𒅒",
    "𒅒☣️宠物窝☣️𒅒",
    "𒅒☣️天气控制器☣️𒅒",
    "𒅒☣️️重力装置☣️𒅒",    
    "𒅒☣️️空心树☣️𒅒",
    "𒅒☣️输入方块代码选择☣️𒅒",
    "𒅒☣️中式沙发☣️𒅒",
    "𒅒☣️中式桌子☣️𒅒",
    "𒅒☣️中式餐桌☣️𒅒",
    "𒅒☣️中式洗手台☣️𒅒",   
    "𒅒☣️中式椅子☣️𒅒",
    "𒅒☣️中式马桶☣️𒅒",
    "𒅒☣️中式浴缸☣️𒅒",
    "𒅒☣️中式屏风☣️𒅒",
    "𒅒☣️️中式立体灯☣️𒅒",    
    "𒅒☣️中式吊灯️☣️𒅒", 
    "𒅒☣️中式门️☣️𒅒",
    "𒅒☣️中式窗☣️𒅒",
    "𒅒☣️️中式楼梯☣️𒅒",    
    "𒅒☣️中式墙砖☣️𒅒", 
   "𒅒☣️中式地砖☣️𒅒", 
    "𒅒☣️中式半砖☣️𒅒", 
    "𒅒☣️中式围栏☣️𒅒", 
    "𒅒☠︎现代床☠︎𒅒", 
    "𒅒☠︎现代沙发☠︎𒅒", 
    "𒅒☠︎现代书桌☠︎𒅒", 
    "𒅒☠︎现代餐桌☠︎𒅒",
    "𒅒☠︎现代茶几☠︎𒅒",
    "𒅒☠︎现代洗手台☠︎𒅒",
    "𒅒☠︎现代椅子☠︎𒅒",
    "𒅒☠︎现代马桶☠︎𒅒",
    "𒅒☠︎现代浴缸☠︎𒅒",
    "𒅒☠︎现代衣柜☠︎𒅒",
    "𒅒☠︎现代橱柜☠︎𒅒",
    "𒅒☠︎现代半格橱柜☠︎𒅒",
    "𒅒☠︎现代组合柜☠︎𒅒",
    "𒅒☠︎现代屏风☠︎𒅒",
    "𒅒☠︎现代立体灯☠︎𒅒",
    "𒅒☠︎现代吊灯☠︎𒅒",
    "𒅒☠︎现代壁灯☠︎𒅒",
    "𒅒☠︎现代门☠︎𒅒",
    "𒅒☠︎现代窗☠︎𒅒",
    "𒅒☠︎现代楼梯☠︎𒅒",
    "𒅒☠︎现代墙砖☠︎𒅒",
    "𒅒☠︎现代砖☠︎𒅒",
    "𒅒☠︎现代半砖☠︎𒅒",
   "𒅒☠︎现代围栏☠︎𒅒", 
    "𒅒🎭童话床🎭𒅒",
    "𒅒🎭童话沙发️🎭𒅒",
    "𒅒🎭童话书桌🎭𒅒",
    "𒅒🎭童话桌子️🎭𒅒",
    "𒅒🎭童话茶几️🎭𒅒",
    "𒅒🎭童话洗手池🎭𒅒",
    "𒅒🎭童话椅子🎭𒅒",
    "𒅒🎭童话马桶🎭𒅒",
    "𒅒🎭童话浴缸️🎭𒅒",
    "𒅒🎭童话衣柜️🎭𒅒",
    "𒅒🎭童话橱柜️🎭𒅒",
    "𒅒🎭童话半格橱柜️🎭𒅒",
    "𒅒🎭童话箱子️🎭𒅒",
    "𒅒🎭童话屏风️🎭𒅒",
    "𒅒🎭童话台灯️🎭𒅒",
    "𒅒🎭童话吊灯🎭𒅒",
    "𒅒🎭童话壁灯🎭𒅒",
    "𒅒🎭童话门🎭𒅒",
    "𒅒🎭童话窗️🎭𒅒",
    "𒅒🎭童话楼梯🎭𒅒",
    "𒅒🎭童话墙砖️🎭𒅒",
    "𒅒🎭童话地砖🎭𒅒",
    "𒅒🎭童话半砖🎭𒅒",
    "𒅒🎭童话围栏🎭𒅒",
    "𒅒☢️科幻床️☢️𒅒",
    "𒅒☢️️科幻沙发☢️𒅒",
    "𒅒☢️科幻书桌☢️𒅒",
    "𒅒☢️科幻桌子☢️𒅒", 
    "𒅒☢️科幻茶几☢️𒅒",
    "𒅒☢️科幻洗手台☢️𒅒",
    "𒅒☢️科幻椅子☢️𒅒",
    "𒅒☢️科幻马桶☢️𒅒",
    "𒅒☢️科幻浴缸☢️𒅒",
    "𒅒☢️科幻衣柜☢️𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("✅️妹妹给哥哥艹下    哥哥很轻的  乖乖✅️"))
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
function c1()
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

function c4()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "香溢烤鸡改编辑器"},
{["value"] = 12558, ["type"] = 4},
{["lv"] = 6, ["offset"] = -112, ["type"] = 4},
{["lv"] = 1, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 10500, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
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
} 
xqmnb(qmnb)
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
gg.clearResults()
end
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

--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦


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
    "  🔰自定义动作🔰 ",
    "  🔰自定义特效🔰",
   "𒅒🔰恢复动作️特效🔰𒅒", 
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥龙哥爸爸"))
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


--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦

function Main5() 
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
  },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
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
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("☣️龙哥☣️️"))
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



function Exited()
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end






--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦--------------♦️龙 哥♦
