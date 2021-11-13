Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
Q=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
--模式匹配他们中的一切字符
F=string.gsub(Q,string.char(34,58,34),string.char())
K=string.gsub(F,string.char(34,44,34),string.char())

 
   function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/凉兮配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/凉兮配置文件.txt"):read("*a") zh = a:match("🍭(.-)🍭") if a == "" then zh = "" end end
dI=gg.prompt({"🎡输入你的迷你号🎡","开启音乐"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/凉兮配置文件.txt", "w") io.open("/sdcard/凉兮配置文件.txt", "w"):write("🍭" .. zh .. "🍭"):close()
b=a 
gg.toast("当前迷你号:"..b.."(๑>؂<๑）好吃喵！")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🍬","🧸","🍓","🍁","🎡","🐶","🐥","✡","❄️","👻","⭐","🍺","🍀","🧊","💫","⚡",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."𒅒🔰房 主 专 区🔰𒅒"..sjbq,
    [2] = sjbq.."𒅒🔰联 机 专 区🔰𒅒"..sjbq,
    [3] = sjbq.."𒅒🔰笔 刷 模 式🔰𒅒"..sjbq,
    [4] = sjbq.."𒅒🔰️特 效 动 作🔰𒅒"..sjbq,
    [5] = sjbq.."𒅒🔰️狙 击 专 区🔰𒅒"..sjbq,
    [6] = sjbq.."𒅒🔰️额 外 功 能🔰𒅒"..sjbq,
    [7] = sjbq.."𒅒🔰️其 他 辅 助 🔰𒅒"..sjbq,
    [15] = sjbq.."𒅒🔰️退 出 脚 本🔰𒅒"..sjbq,
},2018,os.date("𒅒一言:".."『"..K.."』𒅒\n🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY==15 then Exited() end
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end
if SY==6 then Main6() end 
if SY==7 then Main7() end
FX1=0 end

function Main7()
menu1 = gg.choice({
'🍼神 仙 辅 助🍼',--1
'🍼炸 图 辅 助🍼',--2
'🍼凉 情 辅 助🍼',--3
'🍼柯 南 辅 助🍼',--4
'🍼小 可 辅 助🍼',--5
'💨返 回 主 页💨'},
nil,'')
if menu1 == 1 then nb1() end
if menu1 == 2 then nb2() end
if menu1 == 3 then nb3() end
if menu1 == 4 then nb4() end
if menu1 == 5 then nb5() end
if menu1 == 6 then Main()
end
GLWW=-1
end

function nb1()
     pcall(load(gg.makeRequest("https://pan.cccyun.cc/view.php/1ef9e01370833e78f3c128f8f5c24875.png").content))
end

function nb2()
     pcall(load(gg.makeRequest("https://636965.freep.cn/636965/主路线.lua").content))
end

function nb3()
     pcall(load(gg.makeRequest("https://wp.aaa456.cn/view.php/3a7517d29752c7f4f24e3e6152c8d173.png").content))
end

function nb4()
     pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1625801062.lua").content))
end

function nb5()
     pcall(load(gg.makeRequest("https://wp.aaa456.cn/down.php/2d90d927b2138be3d6af76ff8afd2716.").content))
end

function Main1()  
SN = gg.multiChoice({
"🧊无限物品{第1格放2个物品}🧊",
"🧊无敌秒杀[死亡状态开启]🧊",
"🧊武器附魔[放在第1格]🧊",
"🧊工具附魔[放在第1格]🧊",
"🧊第一格坐骑位改坐骑🧊",
"🧊玩法背包改创造背包🧊",
"🧊音效美化[开]🧊",
"❄️音效美化[关]❄️",
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
"🧊修 改 皮 肤🧊",     	              
"🧊解除防沉迷🧊",     	
"♡修改皮肤名字♡",
"♡修改地图分数♡",
"♡修改头像框♡",
"♡修改彩名♡",
"暗色模式",
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
if SN[8]==true then     a26() end
if SN[9]==true then	 a10() end
if SN[10]==true then	 a11() end
if SN[11]==true then	 a13() end
if SN[12]==true then	 a16() end
if SN[13]==true then	 a17() end
if SN[14]==true then	 a18() end
if SN[15]==true then	 a20() end
if SN[16]==true then	 a21() end
if SN[17]==true then	 a22() end
if SN[18]==true then	 a23() end
if SN[19]==true then	 a24() end
if SN[20]==true then	 a25() end
if SN[21]==true then     a27() end
if SN[22]==true then     a28() end
if SN[23]==true then     a29e() end
if SN[24]==true then     amn() end
if SN[25]==true then     lxnb()  end
if SN[26]==true then     nbsl() end
if SN[27]==true then     asms() end
if SN[28]==true then	 Main() end
end
FX=0 end


function asms()
		 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65536;16777472;1544;720;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(600)
	 gg.editAll("16777216", gg.TYPE_DWORD)
	 gg.toast("暗色模式开启成功")
	 gg.clearResults()
end
	 


function nbsl()
gg.clearResults()
aba1 = gg.prompt({"输入文字"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = aba1, ["type"] = 4},
{["lv"] = aba1, ["offset"]=0,["type"] = 4},
}
mnmmz = ":wwwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmxg = {
{["value"] = mnmmz, ["offset"] = 4, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 8, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 12, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 16, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 20, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 24, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 28, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 32, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 36, ["type"] = 4 },
{["value"] = mnmmz, ["offset"] = 36, ["type"] = 4},
{["value"] = mnmmz, ["offset"] = 36, ["type"] = 4},
}
xqmnb(qmnb)

end



function lxnb()
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



function amn()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了⚠️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  vi3() end
if m3==4 then  vi4() end
if m3==5 then  vi5() end
if m3==6 then  Main() end
XGCK=-1 end
function mvi1()
gg.clearResults()
hj = gg.prompt({"请输入红队分数"}
,{[1]=0},{[1]="number"})[1]
km = gg.prompt({"输入你要改的分数"}
,{[1]=520},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改分数"},
{["value"] = -1038391570, ["type"] = 4},
{["lv"] = hj, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = km, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function mvi2()
gg.clearResults()
zlm = gg.prompt({"请输入蓝队分数"}
,{[1]=0},{[1]="number"})[1]
zxc = gg.prompt({"输入你要改的分数"}
,{[1]=1314},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改分数"},
{["value"] = -1038391570 , ["type"] = 4},
{["lv"] = zlm, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = zxc, ["offset"] = 36, ["type"] = 4},
}
xqmnb(qmnb)
end

function a29e()
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


function a28()
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



function a27()
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

function a26()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079102e20F;-7.15922749e24F;1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 30}})
	 end
	 gg.toast("👾音效复原成功👾")
	 gg.clearResults()
end


function a9()
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
	 gg.toast("👾游戏体验更佳👾")
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
o3= gg.choice({
    "🧊萌清定制名字🧊",
    "🧊小北定制名字️🧊",
    "🧊凉兮定制地图名️🧊",
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
function a22()
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
      "𒅒🧊️曦光绘梦🧊𒅒",  
      "𒅒🧊️裂空机甲🧊𒅒",
      "𒅒🧊️星河机甲🧊𒅒",
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
	 "❄️摇头.蹦迪[开启]❄️",
	 "❄️秒吃胡萝卜土豆❄️",
	 "❄️潜 行 变 高[开]❄️",	 
             "❄能量剑闪现距离️❄️",
             "❄宠 物 选 择️❄️",
             "❄️联 机 改 皮 肤❄️",
             "❄联机自定义名字❄️",
             "❄小淘气二段跳️❄️",
             "❄锁定高度隐身️❄️",
             "❄️伪 房 主 踢 人(开)❄️",
             "❄️伪 房 主 踢 人(关)❄️",
             "❄编辑器召唤boss️❄️",
             "❄免手机号验证打字️❄️",
             "❄️开关危险品改文字❄️",
             "❄40人大房间❄️",
             "🍭留言板→打字🍭",
	  "🎡返 回 主 页🎡",
 }, nil, "𒅒认真过、努力过、尽力过、挽留过、最后什么都没有过𒅒")
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
if SN[25]==true then mm1() end
if SN[26]==true then b32() end
if SN[27]==true then b33() end
if SN[28]==true then b34() end
if SN[29]==true then b35() end
if SN[30]==true then b36() end
if SN[31]==true then Main() end end
FX=0 end


function b36()
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
mnmcc = gg.prompt({""}
,{[1]=":"},{[1]="text"})[1]
mnmc = ":ggggggggggg"

qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
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
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end
function b33()
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
{["name"] = "开启伪房主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] =  4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function mm1()
b3ma= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "关闭伪房主"},
{["value"] = b3ma, ["type"] = 4},
{["lv"] = 3, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 2, ["offset"] = 44, ["type"] =  4, ["freeze"] = true},
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
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({":←这个符号后面填名字"}
,{[1]=":"},{[1]="text"})[1]
mnmc = ":ggggggggggg"
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
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
{["lv"] = 0, ["offset"] = 0x1AB0, ["type"] = 4},
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
F = gg.alert("🔰请选择🔰","🍁叮叮当当🍁","🍁️爆爆蛋🍁️️")
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
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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
{["value"]=0,["offset"]=12,["type"]=16,["freeze"] = true}
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
gg.alert("🧊开启成功后召唤小泡沫，房主直接闪退迷你🧊","🍁️开启🍁️️")
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
{["value"] =1187047047, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"]=-999,["offset"]=12,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "摇头"},
{["value"] =1187047047, ["type"] = 4},
{["lv"] = 1120403456, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"]=30,["offset"]=12,["type"]=16},
}
xqmnb(qmnb)
end
end
function b18()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
t = gg.prompt({"『输入别人的迷你号』"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = t, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
 t = gg.prompt({"『输入别人的迷你号』"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人解除"},
{["value"] = t, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
end
function b1()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "踏空跳"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
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
gg.clearResults()
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
gg.clearResults()
end
function b3()
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

function b10()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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

function Main3() 
SN = gg.multiChoice({
             "🧊玩法改编辑[永久]🧊",
             "🧊[解除禁用危险品]🧊",
             "🧊[编辑器南瓜更改]🧊",	 
	 "🧊生存改创造[永久]🧊",
	 "🧊第八格添加编辑器🧊",
	 "🧊自 定 义改编辑器🧊",
	 "🧊能 量 剑改编辑器🧊",
	 "♡自 定 义 添 加 道 具♡",
	 "🎡返 回 主 页🎡",
 }, nil, "𒅒我好像在放弃你，又好像...在等你𒅒")
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end 
if SN[4]==true then c10() end
if SN[5]==true then c9() end
if SN[6]==true then c5() end
if SN[7]==true then c7() end
if SN[8]==true then l8() end
if SN[10]==true then Main() end end
 FX=0 end



function l8()
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
function c3()  
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

function b35()
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
	 "🍁子 弹 穿 墙(房主)🍁",
	 "🍁狙击枪无后座连发🍁",
	 "🍁怒海狙击地图连发🍁",
	 "🍁三 角 透 视🍁",
	 "🍁超 远 攻 击🍁",
	 "🍁人 物 上 色🍁",
	 "🍁天 空 变 黑🍁",
	 "🍁锁 定 高 度🍁",
	 "🎡返 回 主 页🎡",
 }, nil, "𒅒错过了就错过了,我不遗憾,也不期待圆满𒅒")
 if SN == nil then else
if SN[1]==true then d1() end
if SN[2]==true then d2() end
if SN[3]==true then d3() end
if SN[4]==true then d4() end
if SN[5]==true then d5() end
if SN[6]==true then d6() end
if SN[7]==true then d7() end
if SN[8]==true then d8() end
if SN[9]==true then Main() end end
FX1=0 end
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
{["value"] = -9999, ["offset"] = 4, ["type"] = 16,["freeze"] = true},
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
{["value"] = 0, ["offset"] = 16, ["type"] = 16, ["freeze"] = true},
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
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2, ["freeze"] = true},
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
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
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
{["value"]=9999,["offset"]=0,["type"]=16},
{["value"]=9999,["offset"]=12,["type"]=16},
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
--[[
st=gg.makeRequest("http://www.iyuji.cn/iyuji/s/Vld0dlBoaUdKL3RHbldRMVMvVGlEQT09/1561201677177213").content
_g_g=st:match("gg【(.-)】")
jq=st:match("qun【(.-)】")
gg.alert(_g_g)
if jq~="" then jq=string.gsub(jq,"amp;","") gg.alert("欢迎加入一方交流群，群聊号码：\n该群为技术交流群，欢迎大家一起交流讨论","点击加群") gg.goURL(jq) 
end
--]]

function Exited()
print("⭐最新脚本\n💎一言:".."["..K.."]")
gg.alert(os.date("⭐凉兮脚本\n💎公告:凉兮出版 \n🐬一言:".."["..K.."]\n❤时间:%Y年%m月%d日%H时%M分%S秒"),"确认退出")
gg.toast("退出脚本成功\n耗时:1秒\n欢迎下次使用")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end

