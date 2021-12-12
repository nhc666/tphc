------------------------------
-- ©2021  曦梦阁辅助
------------------------------

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
        if (#data > 0) then
           gg.toast("检测到"..#data.."条外来数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          -- gg.toast("已修改"..#t.."条数据")
          -- gg.addListItems(t)
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end



--vpn
file,err=io.open("/storage/emulated/0/Android/data/com.guoshi.httpcanary")
jg=err:match("%((.-)%)")
if jg=="No such file or directory" then 
 else
print("卸载抓包工具再运行脚本") 
os.exit() 
while true do
  end
end

Y=gg.makeRequest("https://v1.hitokoto.cn/").content
--获取云端数据
Q=string.match(Y,'hitokoto(.+)type')
--模式匹配他们中的一切字符
F=string.gsub(Q,'":"',"")
K=string.gsub(F,'","',"")
--删除多余垃圾
gg.alert("❤今日随机一言❤:\n\n\n".."❤"..K.."❤")
--打印最终匹配结果
function ReadAddress(adds,value,flags,freeze,name)local data={{ ["address"]=adds,["value"]=value,["flags"]=flags,["freeze"]=freeze}} gg.setValues(data) if freeze==true or freeze==false then gg.addListItems(data)end if name~=nil then gg.toast('['..name..']已注入')end end function ReadAdd(add)t=gg.getValues({[1]={address=add,flags=4}})add=string.format("%X",t[1].value)if (#add)==16 then add=add:sub(9,16) end if (#add)==1 then add=add.."0000000" else add=string.format("%d","0x"..add)end return add end
 function split(szFullString, szSeparator)local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "已注入") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end 
 function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) 
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} 
while true do 
local nFindLastIndex = string.find
(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = 
string.sub(szFullString, nFindStartIndex, string.len
(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub
(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len
(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end 
function xgxc(szpy, qmxg) 
for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] 
xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
xgdj = qmxg[x]["freeze"] 
if xgdj == nil or xgdj == "" then 
gg.setValues({[1] 
= {address = xgpy, flags = xglx, value = xgsz}}) 
else 
gg.addListItems({[1] 
= {address = xgpy, flags = xglx, 
freeze = xgdj, value = xgsz}}) end 
xgsl = xgsl + 1 xgjg = true end end 
function xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "注入失败") 
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "注入失败") 
else 
        sl = gg.getResults(999999) 
sz = gg.getResultCount() 
        xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] 
= {} pysz[1].address 
= sl[i].address + qmnb[v]["offset"] pysz[1].flags 
= qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd 
= split(pdpd, ";") tzszpd 
= szpd[1] pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end if 
pdjg == true then szpy 
= sl[i].address xgxc(szpy, qmxg) end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "已注入") 
else 
gg.toast(qmnb[2]["name"] .. "注入失败") 
end 
end 
end
end
QQ=gg.alert([[
御神阁群号:982461821
感谢人员:
️❤️寒风❤
❤️龙半岁❤
️❤️工藤新一❤
️❤️沈一岁❤️
❤️城府❤️
❤️北少❤️
❤️浮梦❤
️❤️凉情❤️
❤️梦幻❤️
❤️傲傲❤️
❤️倾城❤
❤弑️神❤
️❤️鹤辰❤️


]],'开启辅助','','开启辅助')
if QQ == 3 then gg.copyText("") gg.toast("己开启") end













Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
Q=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
--模式匹配他们中的一切字符
F=string.gsub(Q,string.char(34,58,34),string.char())
K=string.gsub(F,string.char(34,44,34),string.char())



   function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/曦梦阁配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/曦梦阁配置文件.txt"):read("*a") zh = a:match("👣(.-)👣") if a == "" then zh = "" end end
dI=gg.prompt({"❤️输入你的迷你号❤️","开启音乐✔️"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/曦梦阁配置文件.txt", "w") io.open("/sdcard/曦梦阁配置文件.txt", "w"):write("👣" .. zh .. "👣"):close()
b=a 
gg.toast("当前迷你号:"..b.."明天才是更好的自己？")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"💫","🧸","❤️","🍁","🎡","🌸️","🌟","🎄","💙️","🍭","🌊","🪐","🍀","🧊","💗","⚡","🧡"}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."️[曦梦阁] 特殊功能 [曦梦阁]"..sjbq,
    [2] = sjbq.."️[曦梦阁] 联机功能 [曦梦阁]"..sjbq,
    [3] = sjbq.."[曦梦阁] 笔刷功能 [曦梦阁]"..sjbq,
    [4] = sjbq.."[曦梦阁]️ 动作功能 [曦梦阁]"..sjbq,
    [5] = sjbq.."[曦梦阁]️️ 狙击功能 [曦梦阁]"..sjbq,
    [15] = sjbq.."[️曦梦阁] 其他功能 [曦梦阁]"..sjbq,
    [6] = sjbq.."[曦梦阁] 自定义切换脚本 [曦梦阁]"..sjbq,
    [8] = sjbq.."[曦梦阁] 音乐功能[曦梦阁]"..sjbq,
    [7] = sjbq.."️[曦梦阁] 退出辅助 [曦梦阁]"..sjbq,
},2018,os.date(" 曦梦阁辅助 🍸随机一言:".."『"..K.."』🍅\n🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊\n\n 当前迷你号:"..b.."明天才是更好的自己？随机一言:".."『"..K.."』"))
if SY==15 then Main0() end
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end 
if SY==6 then Main6() end
if SY==8 then Main8() end
if SY==7 then Exit() end
FX1=0 end




function Main8()  SN = gg.choice({
   "𒅒🔰[曦梦阁]搜索歌曲[曦梦阁]🔍🔰𒅒",
   "𒅒🔰[曦梦阁]搜索列表[曦梦阁]✨🔰𒅒",
   "𒅒🔰[曦梦阁]播放热歌[曦梦阁]▶️🔰𒅒",
   "𒅒🔰️[曦梦阁]停止播放[曦梦阁]⏸🔰𒅒",
   "𒅒🔰[曦梦阁]️清除冻结[曦梦阁]🧊🔰𒅒",
   "𒅒🔰[曦梦阁]️返回主页️[曦梦阁]❌🔰𒅒",
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




function Main0()
local L0_7
L0_7 = nil
L0_7 = bqt
L0_7 = L0_7[math.random(1, #bqt)]
menu1 = gg.multiChoice({
    [1] = L0_7 .. "远程攻击" .. L0_7,
    [2] = L0_7 .. "第一攻击" .. L0_7,
    [3] = L0_7 .. "修改宠物" .. L0_7,
    [4] = L0_7 .. "修改角色" .. L0_7,
    [5] = L0_7 .. "修改皮肤" .. L0_7,
    [6] = L0_7 .. "修改脚印" .. L0_7,
    [7] = L0_7 .. "观战模式" .. L0_7,
    [8] = L0_7 .. "超大房间" .. L0_7,
    [9] = L0_7 .. "烧死玩家" .. L0_7,
    [10] = L0_7 .. "上帝视角" .. L0_7,
    [11] = L0_7 .. "更改坐标" .. L0_7,
    [12] = L0_7 .. "更改队伍" .. L0_7,
    [13] = L0_7 .. "天空上色" .. L0_7,
    [14] = L0_7 .. "伪装房主" .. L0_7,
    [15] = L0_7 .. "篮球模式" .. L0_7,
    [16] = L0_7 .. "足球模式" .. L0_7,
    [17] = L0_7 .. "解除禁言" .. L0_7,
    [18] = L0_7 .. "编辑创造" .. L0_7,
    [19] = L0_7 .. "生存创造" .. L0_7,
    [20] = L0_7 .. "通用创造" .. L0_7,
    [21] = L0_7 .. "通用穿墙" .. L0_7,
    [22] = L0_7 .. "刷留言板" .. L0_7,
    [23] = L0_7 .. "附身别人" .. L0_7,
    [24] = L0_7 .. "设置锁身" .. L0_7,
    [25] = L0_7 .. "连跳功能" .. L0_7,
    [26] = L0_7 .. "隔空打人" .. L0_7,
    [27] = L0_7 .. "无限钩爪" .. L0_7,
    [28] = L0_7 .. "伤害转移" .. L0_7,
    [29] = L0_7 .. "控制玩家" .. L0_7,
    [30] = L0_7 .. "全图透视" .. L0_7,
    [31] = L0_7 .. "定点瞬移" .. L0_7,
    [32] = L0_7 .. "模式修改" .. L0_7,
    [33] = L0_7 .. "联机防踢" .. L0_7,
    [34] = L0_7 .. "量剑距离" .. L0_7,
    [35] = L0_7 .. "吸星大法[开]" .. L0_7,
    [36] = L0_7 .. "吸星大法[关]" .. L0_7,
    [37] = L0_7 .. "生物透视" .. L0_7,
    [38] = L0_7 .. "开发模式" .. L0_7,
    [39] = L0_7 .. "联机打字" .. L0_7,
    [40] = L0_7 .. "吸人功能" .. L0_7,
    [41] = L0_7 .. "屏幕抖动" .. L0_7,
    [42] = L0_7 .. "痛苦幻境" .. L0_7,
    [43] = L0_7 .. "反向灵魂" .. L0_7,
    [44] = L0_7 .. "水珠特效" .. L0_7,
    [45] = L0_7 .. "三角透视" .. L0_7,
    [46] = L0_7 .. "强制返回" .. L0_7,
    [47] = L0_7 .. "防止拉黑" .. L0_7,
    [48] = L0_7 .. "定制改皮" .. L0_7,
    [49] = L0_7 .. "攻击穿墙" .. L0_7,
    [50] = L0_7 .. "神灵附体" .. L0_7,
    [51] = L0_7 .. "神灵出体" .. L0_7,
    [52] = L0_7 .. "联机踢人" .. L0_7,
    [53] = L0_7 .. "人物队伍" .. L0_7,
    [54] = L0_7 .. "定时瞬移" .. L0_7,
    [55] = L0_7 .. "影子方块" .. L0_7,
    [56] = L0_7 .. "控制房主" .. L0_7,
    [57] = L0_7 .. "火箭背包" .. L0_7,
    [58] = L0_7 .. "联机取物" .. L0_7,
    [59] = L0_7 .. "狙击自瞄" .. L0_7,
    [60] = L0_7 .. "复制物品" .. L0_7,
    [61] = L0_7 .. "返回功能" .. L0_7,
},nil,'世界好简单')
  if menu1 == nil then else
    if menu1[1] == true then ccc1() end
    if menu1[2] == true then ccc2() end
    if menu1[3] == true then ccc3() end
    if menu1[4] == true then ccc4() end
    if menu1[5] == true then ccc5() end
    if menu1[6] == true then ccc6() end
    if menu1[7] == true then ccc7() end
    if menu1[8] == true then ccc8() end
    if menu1[9] == true then ccc9() end
    if menu1[10] == true then ccc10() end
    if menu1[11] == true then ccc11() end
    if menu1[12] == true then ccc12() end
    if menu1[13] == true then ccc13() end
    if menu1[14] == true then ccc14() end
    if menu1[15] == true then ccc15() end
    if menu1[16] == true then ccc16() end
    if menu1[17] == true then ccc17() end
    if menu1[18] == true then ccc18() end
    if menu1[19] == true then ccc19() end
    if menu1[20] == true then ccc20() end
    if menu1[21] == true then ccc21() end
    if menu1[22] == true then ccc22() end
    if menu1[23] == true then ccc23() end
    if menu1[24] == true then ccc24() end
    if menu1[25] == true then ccc25() end
    if menu1[26] == true then ccc26() end
    if menu1[27] == true then ccc27() end
    if menu1[28] == true then ccc28() end
    if menu1[29] == true then ccc29() end
    if menu1[30] == true then ccc30() end
    if menu1[31] == true then ccc31() end
    if menu1[32] == true then ccc32() end
    if menu1[33] == true then ccc33() end
    if menu1[34] == true then ccc34() end
    if menu1[35] == true then ccc35() end
    if menu1[36] == true then ccc36() end
    if menu1[37] == true then ccc37() end
    if menu1[38] == true then ccc38() end
    if menu1[39] == true then ccc39() end
    if menu1[40] == true then ccc40() end
    if menu1[41] == true then ccc41() end
    if menu1[42] == true then ccc42() end
    if menu1[43] == true then ccc43() end
    if menu1[44] == true then ccc44() end
    if menu1[45] == true then ccc45() end
    if menu1[46] == true then ccc46() end
    if menu1[47] == true then ccc47() end
    if menu1[48] == true then ccc48() end
    if menu1[49] == true then ccc49() end
    if menu1[50] == true then ccc50() end
    if menu1[51] == true then ccc51() end
    if menu1[52] == true then ccc52() end
    if menu1[53] == true then ccc53() end
    if menu1[54] == true then ccc54() end
    if menu1[55] == true then ccc55() end
    if menu1[56] == true then ccc56() end
    if menu1[57] == true then ccc57() end
    if menu1[58] == true then ccc58() end
    if menu1[59] == true then ccc59() end
    if menu1[60] == true then ccc60() end
    if menu1[61] == true then Main() end
  end
  GLWW=-1
end



function ccc1()
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

function ccc2()
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

function ccc3()
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

function ccc4()
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

function ccc5()
aba2 = gg.prompt({"输入你正在使用的皮肤序号-1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃  136哈鲁，138-春雨"}
,{[1]=146},{[1]="number"})[1]
aba3 = gg.prompt({"输入你正在使用的皮肤序号-1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃  136哈鲁，138-春雨"}
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

function ccc6()
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

function ccc7()
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

function ccc8()
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

function ccc9()
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

function ccc10()
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

function ccc11()
mnsj={}
mnsj.qq=gg.prompt({"横向坐标","高度","竖向坐标"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq
xc1=mnsj.qq[1].."00"
xc2=mnsj.qq[2].."00"
xc3=mnsj.qq[3].."00"

qmnb = {
{["memory"] = 4},
{["name"] = "改坐标"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = xc1, ["offset"] = 8, ["type"] = 4},
{["value"] = xc2, ["offset"] = 12, ["type"] = 4},
{["value"] = xc3, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
end
end

function ccc12()
H=gg.prompt({"『请输入队伍代码』总和-0.红队-1.蓝队-2.绿队-3.黄队-4.橙队-5.紫队-6.裁判-999"},{'0'},{"number"})[1]
qmnb={
{["memory"]=4},
{["name"]="更改队伍"},
{["value"]=zh, ["type"]=4},
{["lv"]=1, ["offset"]=96, ["type"]=4},
{["lv"]=16777473, ["offset"]=-64, ["type"]=4},
}
qmxg = {
{["value"]=H, ["offset"]=228, ["type"]=4},
}
xqmnb(qmnb)
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

function ccc14()
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


function ccc15()
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
{["value"] = zh, ["type"] = 4},
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
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0x248, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 end
end

function ccc16()
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
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 0x248, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0x248, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 end
end

function ccc17()
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

function ccc18()
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

function ccc19()
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


function ccc20()
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

function ccc21()
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


function ccc22()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🔰功 能 指 南🔰\n📝[开启:请先在自己地图点击留言板]\n[在联机大厅可正常开启]\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 1},
{["name"] = "留言板"},
{["value"] = 406323200, ["type"] = 4},
{["lv"] = 16777216,["offset"] =4, ["type"] = 4}
}
qmxg = {
{["value"] = 16777472,["offset"] =4, ["type"] = 4,["freeze"] = true},
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
 elseif  F== 2 then
qmnb = {
{["memory"] = 1},
{["name"] = "留言板"},
{["value"] = 406323200, ["type"] = 4},
{["lv"] = 16777216,["offset"] =4, ["type"] = 4}
}
qmxg = {
{["value"] = 16777216,["offset"] =4, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
end
function Exit()
os.exit()
end

function ccc23()
H = gg.prompt({"输入需要附身的迷你号"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -40, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = H, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
end

function ccc24()
b = gg.prompt({"请设置锁身"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 1},
{["name"] = "设置锁身"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120,["offset"] =4, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =156, ["type"] = 4}
}
qmxg = {
{["value"] = b,["offset"] =12, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function ccc25()
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
end

function ccc26()
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

 function ccc27()
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

function ccc28()
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

function ccc29()
kz = gg.prompt({"🐉输入玩家走向距离🐉"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
	 gg.searchAddress("043AFE08",-1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1)
	 sl=gg.getResultCount()
	 if sl>1 then sl=1 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = kz}})
	 end
	 gg.toast("玩家走向开启")
	 gg.clearResults()
end

function ccc30()
gg.toast("请选择透视开关")
F = gg.alert("🐉请选择地图透视｛开 关｝🐉","🐉开🐉","🐉关🐉")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "全图透视"},
{["value"] = 1058667305, ["type"] = 4},
{["lv"] = 1189765120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "🐉简单透视🐉"},
{["value"] = 1058667305, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 30000, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function ccc31()
  local Sy={}
  local Cd={"🌐添加坐标🌐","Ⓜ️删除坐标Ⓜ️","💠返回主页💠"}
  for i,v in ipairs(zb) do
    Cd[#Cd+1]=v[1]
  end
  local GT=gg.choice(Cd,nil,"🅰共有"..#zb.."个坐标🅱")
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

function ccc32()
b = gg.prompt({"🐉请输入模式代码(5是生存，4是创造)🐉"}
,{[1]=4},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "模式修改"},
{["value"] = 1028816516, ["type"] = 4},
{["lv"] = 1028816516, ["offset"] = 4, ["type"] = 4},

{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -20, ["type"] = 4},
}
xqmnb(qmnb)
end

function ccc33()
gg.clearResults()
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
gg.clearResults()
end

function ccc34()
gg.toast("请选择开关")
F = gg.alert("💫请选择｛开 关｝💫","🍁开🍁","🍁️关🍁️️")
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

function ccc35()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("220;60;1;5F", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("-99", DWORD)
gg.toast("吸星大法开启成功")
gg.clearResults()
end
end

function ccc36()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("220;60;-99;5F", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("-99",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", DWORD)
gg.toast("吸星大法关开启成功")
gg.clearResults()
end
end

function ccc37()
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
gg.clearResults()
end

function ccc38()
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

function ccc39()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("300.0E;999.0E:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end

function ccc40()
gg.toast("请选择开关")
F = gg.alert("☁请选择｛开 关｝❄️","☣️🏼开☣️🏻","🏾️☢️关☢️")
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
gg.clearResults()
end
end

function ccc41()
zh = gg.prompt({"👻输入抖动速度👻"}
,{[1]=0},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x522970, 0x98, 0x114, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = zh}})
gg.toast("全体抖动")
end

function ccc42()
b = gg.prompt({"🐉请设置幻境痛苦程度，关闭按钮入口已关闭，浪子不回头🐉"}
,{[1]=9999999},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "幻境程度"},
{["value"] = 1065185444, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 48, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -308, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 48, ["type"] = 16},
{["value"] = b, ["offset"] = -308, ["type"] = 16},
}
xqmnb(qmnb)
end

function ccc43()
b = gg.prompt({"🐉请飞到700高度再开启。不懂勿动🐉"}
,{[1]=-450},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "反向"},
{["value"] = 16777473, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 388, ["type"] = 4},

{["lv"] = zh, ["offset"] = 68, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 388, ["type"] = 16},
}
xqmnb(qmnb)
end

function ccc44()
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

function ccc45()
gg.toast("请选择开关")
F = gg.alert("💫请选择｛开 关｝💫","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("💫你未选择｛开 关｝")
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

function ccc46()
gg.toast("请选择开关")
F = gg.alert("☁请选择｛开 关｝❄️","☣️🏼开☣️🏻","🏾️☢️关☢️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("☢️你未选择｛开 关｝☢️")
  else 
  end
if  F== 1 then
gg.toast("正在开启，请稍等")
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777664;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
elseif F == 2 then gg.toast("正在开启，请稍等")
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777664;16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function ccc47()
gg.toast("请选择开关")
F = gg.alert("☁请选择｛开 关｝❄️","☣️🏼开☣️🏻","🏾️☢️关☢️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("☢️你未选择｛开 关｝☢️")
  else 
  end
if  F== 1 then
gg.toast("正在开启，请稍等")
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;1024;109", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(400)
	 sl=gg.getResultCount()
	 if sl>400 then sl=400 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
	 end
	 gg.toast("取消黑名单开启成功")
	 gg.clearResults()
elseif F == 2 then gg.toast("正在开启，请稍等")
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;1024;109", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(400)
	 sl=gg.getResultCount()
	 if sl>400 then sl=400 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("开启黑名单开启成功")
	 gg.clearResults()
end
end

function ccc48()
mnsj={}
mnsj.qq=gg.prompt({"输入自己迷你号","输入皮肤代码\n1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝    136哈鲁，138-春雨"},mnsj.qqa)if mnsj.qq then 
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

function ccc49()
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

function ccc50()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8F;4::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-8", gg.TYPE_FLOAT)
 elseif F == 2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-8F;4::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
 end
end

function ccc51()
gg.clearResults()
v = gg.prompt({i='输入代码\n注：\n代码是：高度000D;16777472D;1'}, {i='7000D;16777472D;1'})--这个就是弹出一个输入框
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(v.i, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("-250", gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function ccc52()
b = gg.prompt({"请输入你想踢的人迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢人"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
    gg.sleep(100)
        gg.toast("🔰功 能 指 南🔰\n📝[现在请你在评论区发一条消息]\n［不按要求的会出现bug］\n❗发完后单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false) 
qmnb = {
{["memory"] = 4},
{["name"] = "踢人"},
{["value"] = b, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = zh, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main()
end end end end end

function ccc54()
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

function ccc54()
a = gg.prompt({"👻输入定时瞬移坐标👻"}
,{[1]=200},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288FE0, 0xB0, 0x124}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = a}})
gg.toast("坐标传送成功！")
end


function ccc55()
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
{["name"] = "人物影子方框"},
{["value"] = 1768435456, ["type"] = 4},
{["lv"] = 5, ["offset"] = 220, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 220, ["type"] = 4},
}
xqmnb(qmnb)
  elseif F== 2 then
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
end

function ccc56()
b = gg.prompt({"请输入房主迷你号"}
,{[1]=nil},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "控制房主"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function ccc57()
y = gg.prompt({"请输入火箭背包代码"}
,{[1]=nil},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "添加火箭背包"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 600, ["offset"] = 8, ["type"] = 4},
{["value"] = y, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
end

function ccc58()
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

function ccc59()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
end

function ccc60()
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] = 1007, ["type"] = 4},
{["lv"] = 1006, ["offset"] = -0x94, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x128, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x1BC, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x250, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x2E4, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x378, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x40C, ["type"] = 4},
}
qmxg = {
{["value"] = 945804999, ["offset"] = -0x408, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function Main3() 
SN = gg.multiChoice({
             "玩法改编辑[永久]",
             "[解除禁用危险品]",
             "[家园道具(编辑器内)]",	 
	 "生存改创造[永久]",
	 "第八格添加编辑器",
	 "自 定 义改编辑器",
	 "能 量 剑改编辑器",
	 "新家园道具",
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
if SN[8]==true then c8() end
if SN[10]==true then Main() end end
 FX=0 end

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

function c8() 
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
  "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("曦梦阁辅助永久免费"))
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
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("曦梦阁辅助"))
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


function c20()
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
	 "🍁改分数房主可用🍁",
	 "🍁狙击一件套🍁",
	 "🍁改 队 伍🍁",
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
if SN[9]==true then d9() end
if SN[10]==true then d10() end
if SN[11]==true then d11() end
if SN[12]==true then Main() end end
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

function d11()
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
        if (#data > 0) then
           gg.toast("检测到"..#data.."条外来数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          -- gg.toast("已修改"..#t.."条数据")
          -- gg.addListItems(t)
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

function Main()
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
end
Main() -->>函数入口
end

function d10()
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

function d9()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️曦梦阁⚠️"))
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
	 gg.toast("修改成功")
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
 gg.toast("修改成功")
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
gg.toast("修改成功")
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
gg.toast("修改成功")
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
gg.toast("修改成功")
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
gg.toast("修改成功")
	 gg.clearResults()
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







function Main1()  
local L0_7
L0_7 = nil
L0_7 = bqt
L0_7 = L0_7[math.random(1, #bqt)]
SN = gg.prompt({
    [1] = L0_7 .. "⚠ 无限物品" .. L0_7,
    [2] = L0_7 .. "⚠ 通用创造" .. L0_7,
    [3] = L0_7 .. "⚠ 通用穿墙" .. L0_7,
    [4] = L0_7 .. "⚠ 远程攻击" .. L0_7,
    [5] = L0_7 .. "⚠ 武器附魔" .. L0_7,
    [6] = L0_7 .. "⚠ 工具附魔" .. L0_7,
    [7] = L0_7 .. "⚠ 自定附魔" .. L0_7,
    [8] = L0_7 .. "⚠ 秒挖方块" .. L0_7,
    [9] = L0_7 .. "⚠ 无敌秒杀[死亡 开启]" .. L0_7,
    [10] = L0_7 .. "⚠ 飞行速度" .. L0_7,
    [11] = L0_7 .. "⚠ 无限跳跃" .. L0_7,
    [12] = L0_7 .. "⚠ 人物无敌" .. L0_7,
    [13] = L0_7 .. "⚠ 创造背包" .. L0_7,
    [14] = L0_7 .. "⚠ 修改时间" .. L0_7,
    [15] = L0_7 .. "⚠ 添加坐骑" .. L0_7,
    [16] = L0_7 .. "⚠ 图鉴解锁" .. L0_7,
    [17] = L0_7 .. "⚠ 天空变黑" .. L0_7,
    [18] = L0_7 .. "⚠ 实体大小" .. L0_7,
    [19] = L0_7 .. "⚠ 无中生有" .. L0_7,
    [20] = L0_7 .. "⚠ 召唤怪物" .. L0_7,
    [21] = L0_7 .. "⚠ 修改时间" .. L0_7,
    [22] = L0_7 .. "⚠ 寻找代码" .. L0_7,
    [23] = L0_7 .. "⚠ 坐骑下蛋" .. L0_7,
    [24] = L0_7 .. "⚠ 修改速度" .. L0_7,
    [25] = L0_7 .. "⚠ 自定音量" .. L0_7,
    [26] = L0_7 .. "⚠ 人物踏步" .. L0_7,
    [27] = L0_7 .. "⚠ 游戏卡屏" .. L0_7,
    [28] = L0_7 .. "⚠ 痛苦幻境" .. L0_7,
    [29] = L0_7 .. "⚠ 免手机号" .. L0_7,
    [30] = L0_7 .. "⚠ 人物透视" .. L0_7,
    [31] = L0_7 .. "⚠ 人物失重" .. L0_7,
    [32] = L0_7 .. "⚠ 人物浮空" .. L0_7,
    [33] = L0_7 .. "⚠ 人物高跳" .. L0_7,
    [34] = L0_7 .. "⚠ 水下氧气" .. L0_7,
    [35] = L0_7 .. "⚠ 高跳防摔" .. L0_7,
    [36] = L0_7 .. "⚠ 人物锁血" .. L0_7,
    [37] = L0_7 .. "⚠ 时间加速" .. L0_7,
    [38] = L0_7 .. "⚠ 旧版功能" .. L0_7,
    [39] = L0_7 .. "⚠ 无限距离" .. L0_7,
    [40] = L0_7 .. "⚠ 人物穿墙" .. L0_7,
    [41] = L0_7 .. "⚠ 人物透视" .. L0_7,
    [42] = L0_7 .. "⚠ 人物无身" .. L0_7,
    [43] = L0_7 .. "⚠ 修改血量" .. L0_7,
    [44] = L0_7 .. "⚠ 娱乐功能" .. L0_7,
    [45] = L0_7 .. "⚠ 秒睡天亮" .. L0_7,
    [46] = L0_7 .. "⚠ 返回功能" .. L0_7,
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
 if SN== nil then
  else
if SN[1]== true then
	 bbb1()
end
if SN[2]== true then
	 bbb2()
end
if SN[3]== true then
	 bbb3()
end
if SN[4]== true then
	 bbb4()
end
if SN[5]== true then
	 bbb5()
end
if SN[6]== true then
	 bbb6()
end
if SN[7]== true then
	 bbb7()
end
if SN[8]== true then
	 bbb8()
end
if SN[9]== true then
	 bbb9()
end
if SN[10]== true then
	 bbb10()
end
if SN[11]== true then
	 bbb11()
end
if SN[12]== true then
	 bbb12()
end
if SN[13]== true then
	 bbb13()
end
if SN[14]== true then
     bbb14()
end
if SN[15]== true then
     bbb15()
end
if SN[16]== true then
     bbb16()
end
if SN[17]== true then
     bbb17()
end
if SN[18]== true then
     bbb18()
end
if SN[19]== true then
     bbb19()
end
if SN[20]== true then
     bbb20()
end
if SN[21]== true then
     bbb21()
end
if SN[22]== true then
     bbb22()
end
if SN[23]== true then
     bbb23()
end
if SN[24]== true then
     bbb24()
end
if SN[25]== true then
     bbb25()
end
if SN[26]== true then
     bbb26()
end
if SN[27]== true then
     bbb27()
end
if SN[28]== true then
     bbb28()
end
if SN[29]== true then
     bbb29()
end
if SN[30]== true then
     bbb30()
end
if SN[31]== true then
     bbb31()
end
if SN[32]== true then
     bbb32()
end
if SN[33]== true then
     bbb33()
end
if SN[34]== true then
     bbb34()
end
if SN[35]== true then
     bbb35()
end
if SN[36]== true then
     bbb36()
end
if SN[37]== true then
     bbb37()
end
if SN[38]== true then
     bbb38()
end
if SN[39]== true then
     bbb39()
end
if SN[40]== true then
     bbb40()
end
if SN[41]== true then
     bbb41()
end
if SN[42]== true then
     bbb42()
end
if SN[43]== true then
     bbb43()
end
if SN[44]== true then
     bbb44()
end
if SN[45]== true then
     bbb45()
end
if SN[45]== true then
	 Main()
end
FX1=0
end end

function bbb1()
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

function bbb2()
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
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5, ["offset"] = 0x18, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0x18, ["type"] = 4},
}gg.clearList()
xqmnb(qmnb)
end

function bbb3()
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

function bbb4()
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

function bbb5()
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

function bbb6()
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

function bbb7()
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

function bbb8()
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

function bbb9() 
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

function bbb10()
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
	 gg.toast("开启成功")
	 gg.clearResults()
end

function bbb11()
qmnb = {
{["memory"] = 4},
{["name"] = "无限跳"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120,["offset"] =-4, ["type"] = 4},
{["lv"] = 60,["offset"] =-16, ["type"] = 4},
{["lv"] = 120,["offset"] =4, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =168, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =128, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)
end

function bbb12()
gg.toast("正在调用数据请稍后")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 945804632, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -164, ["type"] = 4},
{["lv"] = 0, ["offset"] = -176, ["type"] = 4},
}
qmxg = {
{["value"] = 1000, ["offset"] = -176, ["type"] = 16},
{["value"] = 1000, ["offset"] = -180, ["type"] = 16},
{["value"] = 999, ["offset"] = 0, ["type"] = 16},
{["value"] = 999999, ["offset"] = -140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function bbb13()
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

function bbb14()
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

function bbb15()
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

function bbb16()
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

qmnb = {
{["memory"] = 4},
{["name"] = "图鉴解锁"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 5, ["offset"] = 368, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function bbb17()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","☯️开☯️","☯️️关☯️️️")
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

function bbb18()
dI=gg.prompt({"",""},{[1] = a,[2] = "【这里是大小】5"},{[1] = "number",[2] = "number"})   
zh1 = dI[1] zh2 = dI[2] 
qmnb = {
{["memory"] = 4},
{["name"] = "实体大小"},
{["value"] = zh1, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = zh2, ["offset"] = 0x140, ["type"] = 16},
}
xqmnb(qmnb)
end

function bbb19()
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

function bbb20()
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

function bbb21()
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
	 gg.toast("开启成功")
	 gg.clearResults()
end

function bbb22()
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

function bbb23()
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
	 gg.toast("开启成功")
	 gg.clearResults()
end

function bbb24()
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

function bbb25()
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

function bbb26()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1F;60D;180D;220D;120D;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 555.0}})
end
gg.toast("开启成功")
gg.clearResults()
elseif F==2 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1F;60D;180D;220D;120D;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
gg.toast("开启成功")
gg.clearResults()
end
end


function bbb27()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1F;60D;180D;220D;120D;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999.0}})
end
gg.toast("开启成功")
gg.clearResults()
elseif F==2 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1F;60D;180D;220D;120D;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
gg.toast("开启成功")
gg.clearResults()
end
end

function bbb28()
b = gg.prompt({"🐉请设置幻境痛苦程度，关闭按钮入口已关闭，浪子不回头🐉"}
,{[1]=9999999},{[1]="number"})[1]

qmnb = {
{["memory"] = 4},
{["name"] = "幻境程度"},
{["value"] = 1065185444, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 48, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -308, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 48, ["type"] = 16},
{["value"] = b, ["offset"] = -308, ["type"] = 16},
}
xqmnb(qmnb)
end

function bbb29()
qmnb = {
{["memory"] = 4},
{["name"] = "免手机号"},
{["value"] = 300.0, ["type"] = 64},
{["lv"] = 6.900201821E-314, ["offset"] = 4, ["type"] = 64},
{["lv"] = 1.5E-323, ["offset"] = 8, ["type"] = 64},
{["lv"] = 0.0, ["offset"] = 12, ["type"] = 64},
{["lv"] = 999.0, ["offset"] = 16, ["type"] = 64},
}
qmxg = {
{["value"] = 0.0, ["offset"] = 0, ["type"] = 64},
{["value"] = 0.0, ["offset"] = 16, ["type"] = 64},
}
xqmnb(qmnb)
end

function bbb30()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10;30000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
elseif  F== 2 then
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10;30000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function bbb31()
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

function bbb32()
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
        value = -0.1
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function bbb33()
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
        value = 1
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function bbb34()
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

function bbb35()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "高跳防摔"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 48, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = 12, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
end

function bbb36()
qmnb = {
{["memory"] = 4},
{["name"] = "锁血"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -24, ["type"] = 4},

{["lv"] = 1065353216, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = 2143289344, ["offset"] = -268, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function bbb37()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  elseif  F== 1 then
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

function bbb38() SN = gg.choice({ 	 "✨生存专区✨", 	 "✨移动专区✨", 	 "✨其它功能专区✨", 	 "✨炸图专区✨", 	 "✨透视专区✨", 	 "✨怒海专区✨", 	 "✨谁是狙神专区✨", 	 "🌌返回主页🌌", }, nil, "") if SN==1 then 	 Main56() end if SN==2 then 	 Main49() end if SN==3 then 	 Main61() end if SN==4 then 	 Main69() end if SN==5 then 	 Main42() end if SN==6 then 	 Main18() end if SN==7 then 	 Main26() end if SN==8 then 	 Main() end FX1=0 end  function Main56() SN = gg.multiChoice({ 	 "🎃刷物品［第一格放3个物品］🎃", 	 "🎃无限星星［联机只能买东西］🎃", 	 "🎃无限防御［0防御时用］🎃", 	 "🎃无敌饥饿不减［房主血量饥饿100开］🎃", 	 "🎃无敌饥饿不减恢复🎃", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS57() end if SN[2]==true then 	 HS58() end if SN[3]==true then 	 HS92() end if SN[4]==true then 	 HS59() end if SN[5]==true then 	 HS85() end if SN[6]==true then 	 HS60() end FX1=0 end  function HS57() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1000;945,804,460::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("945,804,460", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945,804,563}}) 	 end 	 gg.toast("第一格已锁定200") 	 gg.clearResults() end  function HS58() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("-1;-0.0078125E;-1;10;-1;0.00005336541::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 999}}) 	 end 	 gg.toast("无限星星修改成功") 	 gg.clearResults() end  function HS92() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("0.00005336541;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3.4e38}}) 	 end 	 gg.toast("无限防御修改成功") 	 gg.clearResults() end  function HS59() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("100;100;-1;-0.0078125E;-1;1,092,616,192D;-1;100;0.00005336541::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 666666}}) 	 end 	 gg.toast("无敌饥饿不减修改成功") 	 gg.clearResults() end  function HS85() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("666666;666666;-1;-0.0078125E;-1;-1;1,092,616,192D;-1;666666;0.00005336541::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("666666", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}}) 	 end 	 gg.toast("无敌饥饿不减恢复成功") 	 gg.clearResults() end  function HS60() 	 bbb38() end  function Main49() SN = gg.multiChoice({ 	 "⚡人物穿墙⚡", 	 "⚡无限跳［可以随意走动］⚡", 	 "⚡人物加速［永久］⚡", 	 "⚡创造飞天⚡", 	 "⚡人物高跳⚡", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS86() end if SN[2]==true then 	 HS50() end if SN[3]==true then 	 HS51() end if SN[4]==true then 	 HS53() end if SN[5]==true then 	 HS54() end if SN[6]==true then 	 HS55() end FX1=0 end  function HS86() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("180;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -9999}}) 	 end 	 gg.toast("人物穿墙修改成功") 	 gg.clearResults() end  function HS50() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("60;180;1;2F;0.0078125E;1F;0.0078125E;1F::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("60;180;1;2F;0.0078125E;1F;0.0078125E;1F::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}}) 	 end 	 gg.toast("无限跳已开启") 	 gg.clearResults() end  function HS51() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 250}}) 	 end 	 gg.toast("永久加速已开启") 	 gg.clearResults() end  function HS53() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("3;2;0;16,777,216;1065353216;80F::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777516}}) 	 end 	 gg.toast("创造飞天已开启") 	 gg.clearResults() end  function HS54() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("25,955;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1}}) 	 end 	 gg.toast("人物高跳已开启") 	 gg.clearResults() end  function HS55() 	 bbb38() end  function Main61() SN = gg.multiChoice({ 	 "👑星铜钻头无CD👑", 	 "🌟解锁脉冲弓🌟", 	 "⚡脉冲弓加速⚡", 	 "🌟解锁火箭背包🌟", 	 "🌟解锁弩🌟", 	 "🌟解锁火箭筒🌟", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS68() end if SN[2]==true then 	 HS66() end if SN[3]==true then 	 HS67() end if SN[4]==true then 	 HS62() end if SN[5]==true then 	 HS63() end if SN[6]==true then 	 HS64() end if SN[7]==true then 	 HS65() end FX1=0 end  function HS68() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("11016;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}}) 	 end 	 gg.toast("星铜钻头无CD修改成功") 	 gg.clearResults() end  function HS66() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12291;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("脉冲弓已解锁") 	 gg.clearResults() end  function HS67() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12292;64,956;220F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("220.0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 100000}}) 	 end 	 gg.toast("脉冲弓加速修改成功") 	 gg.clearResults() end  function HS62() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("火箭背包已解锁") 	 gg.clearResults() end  function HS63() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("弩已解锁") 	 gg.clearResults() end  function HS64() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("火箭筒已解锁") 	 gg.clearResults() end  function HS65() 	 bbb38() end  function Main69() SN = gg.multiChoice({ 	 "🛡玩法伪创造🛡", 	 "🛡玩法改创造怒海🛡", 	 "🛡能量剑改地形编辑器🛡", 	 "🎁返回主页🎁", }, nil, "不同的地图有不同的特性如果需要可以自己改地形编辑器：10500") if SN[1]==true then 	 HS82() end if SN[2]==true then 	 HS91() end if SN[3]==true then 	 HS83() end if SN[4]==true then 	 HS84() end FX1=0 end  function HS82() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("5;1,028,816,516;0.05139018595F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4}}) 	 end 	 gg.toast("伪创造开启成功") 	 gg.clearResults() end  function HS91() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("6000;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4}}) 	 end 	 gg.toast("怒海改创造修改成功") 	 gg.clearResults() end  function HS83() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}}) 	 end 	 gg.toast("能量剑已改地形编辑器") 	 gg.clearResults() end  function HS84() 	 bbb38() end  function Main42() SN = gg.multiChoice({ 	 "💫三角透视［开］💫", 	 "💫三角透视［关］💫", 	 "💫全图透视💫", 	 "💫人物透视［慢］💫", 	 "💫人物透视［快］💫", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS43() end if SN[2]==true then 	 HS44() end if SN[3]==true then 	 HS45() end if SN[4]==true then 	 HS46() end if SN[5]==true then 	 HS47() end if SN[6]==true then 	 HS48() end FX1=0 end  function HS43() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3}}) 	 end 	 gg.toast("三角透视已开启") 	 gg.clearResults() end  function HS44() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2}}) 	 end 	 gg.toast("三角透视已关闭") 	 gg.clearResults() end  function HS45() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("全图透视已开启") 	 gg.clearResults() end  function HS46() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("10;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}}) 	 end 	 gg.toast("人物透视已开启") 	 gg.clearResults() end  function HS47() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1,092,616,192}}) 	 end 	 gg.toast("人物透视已开启") 	 gg.clearResults() end  function HS48() 	 bbb38() end  function Main18() SN = gg.multiChoice({ 	 "🍻子弹穿白杨木板🍻", 	 "🍻子弹穿白砖🍻", 	 "🍻人物透视🍻", 	 "🍻子弹穿红砖🍻", 	 "🍻子弹穿精铁块🍻", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS31() end if SN[2]==true then 	 HS32() end if SN[3]==true then 	 HS33() end if SN[4]==true then 	 HS34() end if SN[5]==true then 	 HS35() end if SN[6]==true then 	 HS36() end FX1=0 end  function HS31() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;208;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿白杨木板修改成功") 	 gg.clearResults() end  function HS32() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;426;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿白砖修改成功") 	 gg.clearResults() end  function HS33() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1,092,616,192}}) 	 end 	 gg.toast("人物透视修改成功") 	 gg.clearResults() end  function HS34() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;537;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿红砖修改成功") 	 gg.clearResults() end  function HS35() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;411;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿精铁块修改成功") 	 gg.clearResults() end  function HS36() 	 bbb38() end  function Main26() SN = gg.multiChoice({ 	 "💝狙击枪改全自动💝", 	 "💝子弹无后座💝", 	 "🍻子弹穿荧石块🍻", 	 "🍻子弹穿铁门🍻", 	 "🍻人物透视🍻", 	 "🎁返回主页🎁", }, nil, "") if SN[1]==true then 	 HS89() end if SN[2]==true then 	 HS90() end if SN[3]==true then 	 HS37() end if SN[4]==true then 	 HS38() end if SN[5]==true then 	 HS39() end if SN[6]==true then   HS60() end FX1=0 end  function HS89() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("15004;15003;2;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}}) 	 end 	 gg.toast("狙击枪已改全自动") 	 gg.clearResults() end  function HS90() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("655460;15004;60;1077936128;40;15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1077936128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 	 end 	 gg.toast("子弹无后座修改成功") 	 gg.clearResults() end  function HS37() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;450;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿荧石块修改成功") 	 gg.clearResults() end  function HS38() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1~1000;814;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}}) 	 end 	 gg.toast("子弹穿铁门修改成功") 	 gg.clearResults() end  function HS39() 	 gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1,092,616,192}}) 	 end 	 gg.toast("人物透视修改成功") 	 gg.clearResults() end  function HS17() 	 Main() end

function bbb39()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  elseif  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "无限距离开启"},
{["value"] = 9.999999747378752E-5, ["type"] = 16},
{["lv"] = 500.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 400.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = -4, ["type"] = 16},
{["value"] = 9999, ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "无限距离关闭"},
{["value"] = 9.999999747378752E-5, ["type"] = 16},
{["lv"] = 9999.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 9999.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 500, ["offset"] = -4, ["type"] = 16},
{["value"] = 400, ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function bbb40()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  elseif  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物穿墙开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -80000, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物穿墙关闭"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = -80000, ["offset"] = -12, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 180, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function bbb41()
F = gg.alert("请选择｛开 关｝","开","关️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
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
gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物透视关闭"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 30000, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
gg.clearResults()
end

function bbb42()
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

function bbb43()
g = gg.prompt({"🐉输入要修改的血量🐉"}
,{[1]=200},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288FE0, 0xB8, 0x8}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = g}})

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288FE0, 0xB8, 0xC}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = g}})
gg.toast("血量")
end

function bbb45()

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

function bbb44()
  SN = gg.multiChoice({
  "人物摇头"..cx1,
  "灵魂出窍"..cx2,
  "人物浮空"..cx3,
  "螃蟹走路"..cx4,
  "时间加速"..cx5,
  "剑的距离"..cx6,
  "暂无功能"..cx7,
  "暂无功能"..cx8,
  "暂无功能"..cx9,
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
   Main()
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

function LWP()
SN = gg.multiChoice({
"𒅒无限物品𒅒",
"𒅒创造背包𒅒",
"𒅒修改宠物𒅒",
"𒅒修改坐骑𒅒",
"𒅒无敌秒杀(死亡开)𒅒",
"𒅒修改彩枪子弹𒅒",
"𒅒改分数𒅒",
"𒅒全部人物烧死𒅒",
"𒅒武器附魔𒅒",
"𒅒工具附魔𒅒",
"𒅒夕阳西下(锁时间)𒅒",
"𒅒开40人𒅒",
"𒅒剑无限cd𒅒",
"𒅒钩爪喷子𒅒",
"𒅒第一个无限耐久𒅒",
"𒅒秒挖𒅒",
"𒅒寻找代码𒅒",
"𒅒选择数量𒅒",
"𒅒添加东西𒅒",
"𒅒自定义修改地图名字𒅒",
"𒅒刷勋章𒅒",
"𒅒自定义附魔𒅒",
"𒅒钻头无限cd𒅒",
"𒅒钻锯无限cd𒅒",
"𒅒手灭基岩𒅒",
"𒅒强制修改密码(可盗号)𒅒",
"𒅒房主改皮肤𒅒",
"🔰时间锁定🔰",
"🔰无限召唤坐骑🔰",
"🔰突破血量上限(🔰",
"🔰禁用钩爪🔰",
"🔰一摔就死🔰",
"🔰自定义改炸弹🔰",
"🔰吸人🔰",
"🔰牛掉炸弹(小北)🔰",
"🔰生物掉一百万星星🔰",
"🔰自定义修改烟花🔰",
"🔰秒生蛋🔰",
"🔰添加坐骑🔰",
"𒅒返回主页𒅒",
 }, nil, "𒅒希望你不要因为廉价的新鲜感,而丢掉陪伴你很久的那个人𒅒")
if SN == nil then else
if SN[1]==true then	 wz1() end
if SN[2]==true then	 wz2() end
if SN[3]==true then	 a4() end
if SN[4]==true then	 a5() end
if SN[5]==true then	 a7() end
if SN[6]==true then      a8() end
if SN[7]==true then	 a9() end
if SN[8]==true then     a158() end
if SN[9]==true then	 ry10() end
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
if SN[28]==true then     asms2() end
if SN[29]==true then     asms3() end
if SN[30]==true then     asms4() end
if SN[31]==true then     asms5() end
if SN[32]==true then     asms6()  end
if SN[33]==true then     nbsl2() end
if SN[34]==true then     asms7() end
if SN[35]==true then     asms8() end
if SN[36]==true then     asms9() end
if SN[37]==true then     asms10() end
if SN[38]==true then     asms11() end
if SN[39]==true then     asms12() end
if SN[40]==true then	 Main() end
end
FX=0 end
function wz1()
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

function wz2()
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

function a4()
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


function a5()
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
function a7()
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


function a8()
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


function a9()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️凉情⚠️"))
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


function a158()
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


function ry10()
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

function a11()
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


function a13()
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

function a16()
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
function a17()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end

function a18()
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

function a20()
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


function a21()
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

function a22()
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


function a23()
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




function a25()
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



function a27()
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


function a28()
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



function a29e()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11015D;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function amn()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11005D;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function lxnb()
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

function nbsl()
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

function asms()
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




function asms2()
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

function asms3()
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
function asms4()
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




function asms5()
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



function asms6()
 gg.setRanges(16384)
local dataType = 4
local tb1 = {{1178703616, 0},{1187036656, 20},}
local tb2 = {{0, -92  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("感谢🐶叶帆")
	 gg.clearResults()
end


function nbsl2()
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


function asms7()
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



function asms8()
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





function asms9()
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


function asms10()
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




function asms11()
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


function asms12()
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










function Main2() 
SN = gg.multiChoice({
	"♻️伪房主♻️",--1
	"♻️改头像框♻️",--2
	"♻️联机修改皮肤(新要有妙妙)♻️",--3
	"♻️篮球模式♻️",--4
	"♻️足球模式♻️",--5
	"♻️附身别人♻️",--6
	"♻️无限跳跃♻️",--7
	"♻️穿全方块♻️",--8
	"♻️修改脚印♻️",--9
	"♻️秒吃萝卜♻️",--10
	"💠伤害转移💠",--11
	"💠人物加速💠",--12
	"💠人物高跳💠",--13
	"️💠解除权限💠",--14
	"💠️危险品文字💠",--15
	"️💠广告物品💠",--16
	"💠隔空打人💠",--17
	"️💠防踢💠",--18
	"️💠解除禁用危险品💠",--19
	"️💠三角透视💠",--20
	"️✅无限召唤✅",--21
	"️✅谁是狙神专用✅",--22
	"✅怒海狙击专用✅",--23
	"️✅玩家走向✅",--24
	"️✅冲机枪黑化✅",--25
	"️✅重机枪黑化✅",--26
	"️✴️更改皮肤✴️",--27
	"️✴️更改坐标✴️",--28
	"✴️️锁身✴️",--29
	"✴️️能量剑0蓄力✴️",--30
	"️✴️解除全部禁言✴️",--31
	"️✴️人物隐身✴️",--32
	"✴️️飞行上升速度✴️",--33
	"📂飞行速度📂",--34
	"️📂人物上色📂",--35
	"️📂背视角远程📂",--36
	"️📂主视角远程📂",--37
	"️📂角色技能📂",--38
	"💠伪踢💠",--39
	"㊙️免手机号打字㊙️",--40
	"❄️灵魂出窍❄️",--41
	"️🉐动作。特效🉐",--42
	"️🔍修改彩名🔎",--43
	"️🔗上帝视角🔗",--44
	"️📎人物重力📎",--45
	"🌀崩服务器🌀",--46
	"🎈新版透视🎈",--47
    "🎈修改任务获取物品（倾城原创）2🎈",--48
    "🎈联机取物1🎈",--49
    "🎈隐藏探险笔记🎈",--50
    "🎈无限星星.星星礼盒🎈",--51
    "🎈自定义添加任何东西🍼🎈",--52
    "🎈创造背包(电脑版)🎈",--53
    "🎈联机箱子无限物品🎈",--54
    "🎈自定义开关危险品🎈",--55
    "🎈手机开40人(房主使用)🎈",--56
    "🎈更改地图名字(房主使用)🎈",--57
    "🎈第一格坐骑位改坐骑(房主使用)🎈",--58
    "🎈自定义改玩家大小(房主使用)🎈",--59
    "🎈远程攻击🎈",--60
    "🎈开超大房间(测试)🎈",--61
    "🎈复制物品🎈",--62
    "🎡返 回 主 页🎡",--63
}, nil, "🧊那陪办你很久的那个人，她还在吗……🧊")
if SN== nil then
  else
if SN[1]== true then
XXS34()
end
if SN[2]== true then
XXS35()
end
if SN[3]== true then
XXS36()
end
if SN[4]== true then
XXS37()
end
if SN[5]== true then
XXS38()
end
if SN[6]== true then
XXS39()
end
if SN[7]== true then
XXS41()
end
if SN[8]== true then
XXS42()
end
if SN[9]== true then
XXS43()
end
if SN[10]== true then
XXS45()
end
if SN[11]== true then
XXS46()
end
if SN[12]== true then
XXS47()
end
if SN[13]== true then
XXS48()
end
if SN[14]== true then
XXS49()
end
if SN[15]== true then
XXS51()
end
if SN[16]== true then
XXS52()
end
if SN[17]== true then
XXS53()
end
if SN[18]== true then
XXS54()
end
if SN[19]== true then
XXS55()
end
if SN[20]== true then
XXS56()
end
if SN[21]== true then
XXS71()
end
if SN[22]== true then
XXS74()
end
if SN[23]== true then
XXS75()
end
if SN[24]== true then
XXS76()
end
if SN[25]== true then
XXS77()
end
if SN[26]== true then
XXS78()
end
if SN[27]== true then
XXS95()
end
if SN[28]== true then
XXS96()
end
if SN[29]== true then
XXS98()
end
if SN[30]== true then
XXS103()
end
if SN[31]==true then
XXS105()
end
if SN[32]== true then
XXS106()
end
if SN[33]== true then
XXS108()
end
if SN[34]== true then
XXS109()
end
if SN[35]== true then
XXS123()
end
if SN[36]== true then
XXS129()
end
if SN[37]==true then
XXS130()
end
if SN[38]== true then
XXS138() end
if SN[39]== true then
XXS31() end
if SN[40]== true then
XXS33() end
if SN[41]== true then
HS13() end
if SN[42]== true then
HS14() end
if SN[43]== true then
HS15() end
if SN[44]== true then
HS16() end
if SN[45]== true then
HS17() end
if SN[46]== true then
XZ1() end
if SN[47]== true  then 
XZ2() end
if SN[48]== true  then 
XZ4() end
if SN[49]== true  then 
XZ5() end
if SN[50]== true  then 
XZ6() end
if SN[51]== true  then 
XZ7() end
if SN[52]== true  then 
XZ8() end
if SN[53]== true  then 
XZ9() end
if SN[54]== true  then 
XZ10() end
if SN[55]== true  then 
XZ11() end
if SN[56]== true  then 
XZ12() end
if SN[57]== true  then 
XZ13() end
if SN[58]== true  then 
XZ14() end
if SN[59]== true  then 
XZ15() end
if SN[60]== true  then 
XZ16() end
if SN[61]== true  then 
XZ17() end
if SN[62]== true  then 
XZ18() end
if SN[10]==true then Main() end
FX1=0
end end
function XXS16()
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

function HS13()
gg.toast("请选择开关")
F = gg.alert("✅请选择｛开 关｝✅","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌀你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "灵魂出窍"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -216, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -368, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = -368, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "灵魂出窍"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -216, ["type"] = 4},
{["lv"] = 6, ["offset"] = -368, ["type"] = 4},
}
qmxg = {
{["value"] = 1065353216, ["offset"] = -368, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults() end end
function XXS33()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("300E;16777310D;8388638D;999E", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 0}})
	 end
	 gg.toast("打字开启成功！")
	 gg.clearResults()
end
function XXS31()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x512580, 0xD4}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 3}})
gg.toast("开启成功")
end
function XXS34()
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

function XXS35()
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


function XXS36()	 
SN = gg.multiChoice({
             "𒅒🧊第一步(大厅开)𒅒🧊",
             "𒅒🧊第二步(房间开)𒅒🧊",
	  "🍊返 回 主 页🍊",
 }, nil, "💋一定要有妙妙，修改任何皮肤，没有就修改不了，不会吞皮肤💋")
if SN == nil then else
if SN[1]==true then c1y() end
if SN[2]==true then cy2() end
	 if SN[3]==true then Main() end end
 FX=0 end
function c1y()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
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
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 160, ["type"] = 4},
{["lv"] = 0, ["offset"] = 164, ["type"] = 4},
{["lv"] = 0, ["offset"] = 168, ["type"] = 4},
{["lv"] = 0, ["offset"] = 172, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
{["lv"] = 0, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 184, ["type"] = 4},
{["lv"] = 0, ["offset"] = 96, ["type"] = 4},
}
qmxg = {{["value"] = 0, ["offset"] = 0x64, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
end

function cy2()
A2=gg.prompt({"输入你要的皮肤代码"},{[1]="151"},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 18260246528, ["type"] = 32},
{["lv"] = 4, ["offset"] = 0xA4, ["type"] = 32},
{["lv"] = 1079918592, ["offset"] = -16, ["type"] = 4},
}
qmxg = {{["value"] = A2, ["offset"] = -20, ["type"] = 64},}
xqmnb(qmnb)
end


function XXS37()
gg.toast("请选择篮球模式开关")
F=gg.alert("🌚请选择篮球模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0x188, 0x1C4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 3, freeze = true}})
elseif F==2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0x188, 0x1C4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
end

function XXS38()
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
function XXS39()
gg.toast("请选择开关")
F=gg.alert("✅请选择｛开 关｝✅", "🍁开🍁", "🍁️关🍁️️")
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
function XXS41()
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

function XXS42()
gg.toast("请选择开关")
F=gg.alert("✅请选择｛开 关｝✅", "🍁开🍁", "🍁️关🍁️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("🌀你未选择｛开 关｝")
else 
end
if F==1 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xB0, 0xC0}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1}})
elseif F==2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xB0, 0xC0}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
end end
function XXS43()
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
function XXS45()
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
function XXS105()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12926", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12926", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12862}})
	 end
	 gg.toast("🌸解除全部禁言开启🌸")
	 gg.clearResults()
end


function XXS47()
AA3 = gg.prompt({"输入加数倍数"}
,{[1]=70},{[1]="number"})[1]
gg.clearResults()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F70, 0xC0}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = AA3, freeze = true}})
end


function XXS48()
b = gg.prompt({"🐉请设置人物跳跃能力🐉"}
,{[1]=100},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "跳跃"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -152, ["type"] = 4},

{["lv"] = 1092616192, ["offset"] = -156, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = -148, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function XXS49()
gg.toast("请选择开关")
F = gg.alert("✅请选择｛开 关｝✅","🍁开🍁","🍁️关🍁️️")
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


function XXS51()
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"自定义改文字"}
,{[1]=":#b#G冷小风最牛"},{[1]="text"})[1]
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
function XXS52()
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
function XXS53()
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


function XXS54()
b= gg.prompt({"输入房主迷你号"},{[1]=1063435366},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "防踢"},
{["value"] = b, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
{["value"] = 16777472, ["offset"] = -32, ["type"] = 4},
{["value"] = 16777216, ["offset"] = -32, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
function XXS55()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("13.51625156403", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13.51625156403", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("☃️解除危险物品权限开启成功☃️")
	 gg.clearResults()
end

function XXS56()
gg.toast("请选择开关")
F = gg.alert("✅请选择｛开 关｝✅","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌀你未选择｛开 关｝")
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

function XXS71()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限召唤坐骑"},
{["value"] = 1616732188, ["type"] = 4},
{["lv"] = 1750689816, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},}
xqmnb(qmnb)
gg.toast("⚠️一会儿会卡,然后你得点击悬浮窗⚠️")
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

function XXS74()
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

function XXS75()
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

function XXS76()
h = gg.prompt({"🐉请输入玩家走向速度🐉"}
,{[1]=0},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x522970, 0x98, 0x114, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = h}})
gg.toast("玩家走向")

end

function XXS77()
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪强化"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end

function XXS78()
gg.toast("正在开启，请稍等")
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪强化"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end

function XXS95()
b99 = gg.prompt({"🍡代码在名字的右侧🍡德古拉六世2304叮叮当2560羽姬3072小龙6144二郎神6400幻零式7424柳仙儿7680帕普奇7936嘟嘟啵啵8704斩浪9728喵小糖10752星翼11264离11520黯11776大毛12544乔克12800小艾13056擎天柱13312威震天13568慕斯13824金柚柚14080喜团团14336大黄蜂14848花幽幽15104爱丽丝15872红蜘蛛16384热破16640惊破天16896劳尔17152青弦17664紫悦女孩17920宇宙公主女孩18176柔柔女孩18432月亮公主女孩18688钢锁18944飞标19200嚎叫19456塔莉娅19968碧琪女孩20736白夜女巫卡洛儿20992余小欢21248章小鱼21504熊小吉21760星光熠熠女孩22016云宝女孩22272音韵公主女孩22528初暮22784冲云宵23040利爪23296铁头23552大鹏23808猛虎24064野牛24320大无畏24576银剑24832俯冲25088飞火25344弹弓25600空袭25856圣婴26112魔炎26368灵瑶26624小红帽阿夏尔26880迷小酷27136狼少年沃尔夫27392仙杜瑞拉28160橘子28416查理斯28672泡泡28928朝露繁花29184冰公主29440罗丽29696奥特曼32300"},
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

end
function XXS96()
mnsj={}
mnsj.qq=gg.prompt({"横向坐标","高度","竖向坐标"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq
xc1=mnsj.qq[1].."00"
xc2=mnsj.qq[2].."00"
xc3=mnsj.qq[3].."00"

qmnb = {
{["memory"] = 4},
{["name"] = "改坐标"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = xc1, ["offset"] = 8, ["type"] = 4},
{["value"] = xc2, ["offset"] = 12, ["type"] = 4},
{["value"] = xc3, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
end
end

function XXS98()
b = gg.prompt({"🐉请设置锁定对方假身位置🐉"}
,{[1]=1000},{[1]="number"})[1]
  
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
{["value"] = b, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("加上超远攻击直接乱杀")
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
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
{["value"] = b, ["offset"] = 12, ["type"] = 4, ["freeze"] =false },
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
function XXS103()
gg.toast("正在开启，请稍等")
gg.setRanges(4)
local dataType = 4
local tb1 = {{12005, 0}, {1058642330, 304}, }
local tb2 = {{-100, 304}, }
SearchWrite(tb1, tb2, dataType)
end
function XXS46()
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
}
xqmnb(qmnb)

end

function XXS106()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 40000, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "隐身"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -68, ["type"] = 4},
}
qmxg = {
{["value"] = -255, ["offset"] = 0x140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
function XXS109()
gg.toast("请选择开关")
F = gg.alert("✅请选择｛开 关｝✅","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌀你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "飞行速度"},
{["value"] = 0.70999997854, ["type"] = 16},
{["lv"] = 1.29999995232, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.98000001907, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.80000001192, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = -4, ["type"] = 16},

}
xqmnb(qmnb)elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "飞行速度"},
{["value"] = 0.70999997854, ["type"] = 16},
{["lv"] = 10, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.98000001907, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.80000001192, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.29999995232, ["offset"] = -4, ["type"] = 16},

}
xqmnb(qmnb)
end end

function XXS123()
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
function XXS129()
 gg.toast("正在开启，请稍等")
 qmnb = {
{["memory"] = 16384},
{["name"] = "超远攻击"},
{["value"] = 1132068864, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -4, ["type"] = 4},
}
qmxg={
{["value"] = -1, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function XXS130()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1507551267;400F;500F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99999}})
	 end
	 gg.toast("🌸主视角远程攻击开启成功🌸")
	 gg.clearResults()
end
function XXS138()
b = gg.prompt({"请输入角色代码（下面默认代码为小淘气）33-酋长(增加攻击力) 34-卡卡(增加远程防御) 40-妮妮(增加挖掘速度) 35-教授(挖石头有机率挖到特殊矿石) 36-汤姆队长(生命恢复增加) 37-彼得(击碎罐子发现特殊物品) 38-熊孩子(增加爆炸防御) 39-酋长夫人(打怪爆率增加) 41-特工罗拉(两条命) 42-小淘气(跳两次)"}
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

function XXS108()
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
function XZ1()
S = gg.choice({
     "🛍🎁开启崩服器🎁",
     "🎉关闭崩服器(查看效果)🎉",
     "🎊超级崩服器(请先开启崩服器)🎊",
     "🏮返回主页🏮",
}, nil, "🎀感受下以前的那种快乐！她……🎀")
if S==nil then XGCK=3 else
if S==1 then
     E2a1()
end
if S==2 then
     E2a2()
end
if S==3 then
     E2a3()
end
if S==4 then
     Main()
end
end
end

function E2a1()
function XXSf(qmnb,qmxg)
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
     Main()
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

function XZ7()
SN = gg.multiChoice({
        "𒅒🧊生存奖励杯𒅒🧊",
              "𒅒🧊星星礼盒𒅒🧊",          
	  "🍊返 回 主 页🍊",
 }, nil, "❤️打开生存奖励杯领取💋")
if SN == nil then else
if SN[1]==true then syy123() end
if SN[2]==true then syy124() end
	 if SN[3]==true then Main() end end
 FX=0 end
 
 
 function syy123()  
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

 function syy124()  
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
{["value"] = 12963, ["offset"] =16, ["type"] = 4},
{["value"] = 999, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x390, ["type"] = 4},
{["value"] = 999, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x730, ["type"] = 4},
{["value"] = 999, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = 12963, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = 99, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end

function HS15()

mini = gg.prompt({"请输入你的迷你号"}
,{[1]=140458210},{[1]="number"})[1]







mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个':'请不要把':'删除"}
,{[1]=":#b#cff8cae曦梦阁"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
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

function XZ18()
gg.toast("请选择复刻物品开关")
F = gg.alert("请选择复刻第一格物品｛开 关｝🍭","🍭开🍭","🍭关🍭")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("功 能 指 南🐶\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
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

function XZ17()
qmnb = {
{["memory"] = 4},
{["name"] = "999人房间"},
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

function XZ16()
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

function XZ15()
mn1=gg.prompt({"『输入玩家迷你号』"},{'3'},{"number"})[1]
mn2=gg.prompt({"『自定义玩家大小』"},{'3'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "凉情自创"},
{["value"] =mn1, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = mn2, ["offset"] = 344,["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function XZ14() 
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
if o2==23 then o=gg.prompt({"输入坐骑代码4533-虚空龙祖 4528-尼东洛洛"},{[1]=4514},{[1]="number"})[1] o4() end
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

function XZ13()
o3= gg.choice({
    "🧊冷白定制名字🧊",
    "🧊曦梦阁定制名字️🧊",
    "🧊九岁定制地图名️🧊",
    "🧊自定义地图名🧊",
    "🧊🧊",    
    "🔰返回主页🔰",},2018,os.date("开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了️"))
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

function XZ12() 
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

function XZ11()
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

function XZ10()
SN = gg.multiChoice({
        "𒅒🧊第一个无限物品𒅒🧊",
              "𒅒🧊箱子界面𒅒🧊",          
	  "🍊返 回 主 页🍊",
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

function XZ9()	 
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

function XZ8()
local FS = gg.prompt({
    '👾→输入要更改物品的代码←12005能量剑-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头👾',
    '🎲输入数量945804461🎲',
    '🎮耐久度[1;20000]',
    '🏅是否修改🏅'},nil,{
    [1] = 'number',
    [2] = 'number',
    [3] = 'number',
    [4] = "checkbox"})
  if not FS then return end

if FS[2]=="" or FS[1]=="" or FS[3]=="" then os.exit() end
  if FS[4] ==true then end 
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=FS[1],["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=FS[1],["offset"]=0,["type"]=4, ["freeze"] = true}
}
xqmnb(qmnb)
gg.clearResults()
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==FS[1] then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "自定义添加"},
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
{["value"] = FS[3], ["offset"] = 8, ["type"] = 4},
{["value"] = FS[2], ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()end 
end

function XZ6()
qmnb={
{["memory"]=4},
{["name"]="隐藏探险笔记"},
{["value"]=-22,["type"]=16},
{["lv"]=16777472,["offset"]=-72,["type"]=4}

}
qmxg={
{["value"]=16777216,["offset"]=-72,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end

function XZ5()
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

function XZ4()
qmnb = {
{["memory"] = 4},
{["name"] = "[任务狙击]"},
{["value"] = 11627, ["type"] = 4},
{["lv"] = 817, ["offset"] = 16, ["type"] = 4},
{["lv"] = 3, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
{["value"] = 15004, ["offset"] = 16, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 1, ["offset"] = 24, ["type"] = 4},
{["value"] = 666666, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "[任务子弹]"},
{["value"] = 11323, ["type"] = 4},
{["lv"] = 12502, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 15003, ["offset"] = 16, ["type"] = 4},
{["value"] = 256, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "[任务爆炸]"},
{["value"] = 11002, ["type"] = 4},
{["lv"] = 12500, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 15054, ["offset"] = 16, ["type"] = 4},
{["value"] = 704, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "[任务龙蛋]"},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 12502, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 13502, ["offset"] = 16, ["type"] = 4},
{["value"] = 64, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "[任务残片]"},
{["value"] = 12001, ["type"] = 4},
{["lv"] = 12500, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = -1961453815, ["offset"] = 12, ["type"] = 4},
{["value"] = 11333, ["offset"] = 16, ["type"] = 4},
{["value"] = 64, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)

xqmnb(qmnb)
end

function XZ2()
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
{["name"] = "生物透视+生物上色+生物方框"},
{["value"] = 1953066601, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] =12 , ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 8, ["type"] = 4},
{["value"] = 999, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "生物透视+生物上色+生物方框"},
{["value"] = 1953066601, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 999, ["offset"] =12 , ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4},
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
end
end
function XZ3()
Main()
end
function SSS1()
function FFG()
menu = gg.choice({
"1.0",
"2.0",
"返回主页",},nil,"部分功能有错误。")
if menu == 1 then LWP() end
if menu == 2 then CVM() end
if menu == 3 then Main() end
FX1=0
end



function Main4()  
menu1= gg.choice({
    "𒅒🧊紫色月亮𒅒🧊️",
    "𒅒🧊️碧琪特效𒅒🧊️",
    "𒅒🧊️绿色特效𒅒🧊️",
    "𒅒🧊彩虹拖尾𒅒🧊",
    "𒅒🧊️️蓝色特效𒅒🧊",
    "𒅒🧊花小楼特效𒅒🧊",
    "𒅒🧊冰公主特效𒅒🧊️",
    "𒅒🧊叶萝莉特效𒅒🧊",
   "𒅒🧊恢复️特效𒅒🧊️️", 
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒曦梦阁𒅒"))
if menu1==1 then Q1=12 QQ1() end
if menu1==2 then Q1=13 QQ1() end
if menu1==3 then Q1=14 QQ1() end
if menu1==4 then Q1=15 QQ1() end
if menu1==5 then Q1=16 QQ1() end
if menu1==6 then Q1=17 QQ1() end
if menu1==7 then Q1=18 QQ1() end
if menu1==8 then Q1=19 QQ1() end
if menu1==9 then Q1=0 QQ1()  gg.clearList() end
if menu1==10 then Main() end
XGCK=-1 end



function Main5()  
SN = gg.multiChoice({
'𒅒🧊改分数𒅒🧊',
'𒅒🧊观战模式𒅒🧊',
'𒅒🧊狙击连发𒅒🧊',
'𒅒🧊怒海连发𒅒🧊',
'𒅒🧊人物上色𒅒🧊',
'𒅒🧊三角透视𒅒🧊',
'𒅒🧊子弹穿墙𒅒🧊',
'𒅒🧊狙击强化𒅒🧊',
'𒅒🧊冲锋强化𒅒🧊',
'𒅒🧊重机强化𒅒🧊',
'𒅒🧊修改队伍𒅒🧊',
'𒅒🧊灵魂出窍𒅒🧊',
'𒅒🧊锁高度𒅒🧊',
'𒅒🧊狙击一件套𒅒🧊',
"🎃返 回 主 页🎃",
}, nil, "🌝❤️")
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
if SN[15]==true then	 Main() end
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
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️曦梦阁⚠️"))
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



function Main6666()
menu1 = gg.choice({
'❤️龙半岁❤️',
'❤️工藤新一❤️',
'❤️沈一岁❤️',
'❤️城府❤️',
'❤️北少❤️',
'❤️浮梦❤️',
'❤️凉情❤️',
'❤️梦幻❤️',
'❤️傲傲❤️',
'❤️倾城❤️',
'❤️无❤️',
'❤️无❤️',
'❤️无❤️',
'❤️无❤️',
'❤️无❤️',
'❤️无❤️',
'❤️无❤️',
'💘无💘',
'💘无💘',
'💘无💘',
'💘无💘',
'❣️返回辅助❣️'},
nil,'我们不想出名.....')
if menu1 == 1 then Main() end
if menu1 == 2 then Main() end
if menu1 == 3 then Main() end
if menu1 == 4 then Main() end
if menu1 == 5 then Main() end
if menu1 == 6 then Main() end
if menu1 == 7 then Main() end
if menu1 == 8 then Main() end
if menu1 == 9 then Main() end
if menu1 == 10 then Main() end
if menu1 == 11 then Main() end
if menu1 == 12 then Main() end
if menu1 == 13 then Main() end
if menu1 == 14 then Main() end
if menu1 == 15 then Main() end
if menu1 == 16 then Main() end
if menu1 == 17 then Main() end
if menu1 == 18 then Main() end
if menu1 == 19 then Main() end
if menu1 == 20 then Main() end
if menu1 == 21 then Main() end
if menu1 == 22 then Main() end
if menu1 == 23 then Main() end
GLWW=-1
end







         
 -- []测试
 
 
 --]]
    
                           
               
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
g.sel = {"红色高跟鞋","10"}
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
function jjjh2()
Obtain=gg.makeRequest("https://wp.aaa456.cn/viewphp/3585c8ca3deaad727b0bdeaf92412b24music").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页






 









function Main8()  
 SN = gg.choice({
   "𒅒♥搜索歌曲🔍♥️𒅒",
   "𒅒♥️搜索列表🌐♥️𒅒",
   "𒅒♥️播放热歌🗣️♥️𒅒",
   "𒅒♥️停止播放💤♥️𒅒",
   "𒅒♥️️清除冻结➖♥️𒅒",
    "𒅒♥️️曦梦阁专属音乐⭐♥️𒅒",
   "𒅒♥️返回主页️➗♥️𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then jjjh2() end
if SN==7 then Main() end
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
end

function Main6()
jl=gg.prompt({"请输入网络脚本链接："},{[1] = ""},{[1] = "text"})
    gg.toast("正在连接自定义脚本链接...")
    print(os.date("%M分%S秒_已切自定义网络脚本"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end


function Exit()
print("💋此辅助永远免费，请不要购买盗版\n❤曦梦阁:".."["..K.."]")
gg.alert(os.date("🧡曦梦阁辅助\n公告:曦梦阁出版 \n🌺曦梦阁:".."["..K.."]\n时间:%Y年%m月%d日%H时%M分%S秒"),"退出曦梦阁辅助")
gg.toast("退出辅助成功\n耗时:1秒\n欢迎下次使用")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end