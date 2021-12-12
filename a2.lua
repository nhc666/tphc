------------------------------
-- ©2021  墨凉辅助
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
gg.toast(os.date("🛡欢迎使用墨凉辅助🛡 "))
gg.toast(os.date("🛡我把喜欢写在风里，从此整个世界是你🛡 "))
gg.alert("欢迎使用墨凉辅助\n"..os.date("本次脚本开启时间为:\n%Y年%m月%d日%H时%M分%S秒").."")
------------------------------
-- ©2021  快手墨凉
------------------------------

local tc = gg.alert("御神阁群号:982461821","\n开启辅助","\n关闭辅助")
if tc == 1 then end  if tc == 2 then os.exit() end
bqt={"🎡","🌇","🔪","☯️","🎡","🔥","💦","✡","❄️","👻","✈️","🗡️","☯️","💯","💫","🕉️",}
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

uper ='开启辅助'i='' gg.toast("辅助开启：15％...") gg.sleep(320) gg.toast("辅助开启：30％...") gg.sleep(320) print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '条数据') else gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
gg.toast("开启成功")
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/迷你号配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/迷你号配置文件.txt"):read("*a") zh = a:match("(.-)🍼") if a == "" then zh = "" end end
dI=gg.prompt({"🍼输入你的迷你号🍼","🍼开启音乐🍼"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/迷你号配置文件.txt", "w") io.open("/sdcard/迷你号配置文件.txt", "w"):write("" .. zh .. "🍼"):close()
b=a 
gg.toast("当前迷你号:"..b.."明天才是更好的自己？")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function az()
SJ = os.date("%Y年%m月%d日%H时%M分")
menu = gg.choice({
'          🍼️ 特 效 ◎ 功 能 🍼️',--1
'          🍼 房 主 ◎ 功 能 🍼️',--2
'          🍼 联 机 ◎ 功 能 🍼️',--3
'          🍼️ 狙 击 ◎ 功 能 🍼️',--4
'          🍼️ 炸 图 ◎ 功 能 🍼️',--5
'          🍼️ 其 他 ◎ 功 能 🍼️',--6
'          🍼️ 切 换 ◎ 辅 助 🍼️',--7
'          🍼️ 播 放 ◎ 音 乐 🍼️',--8
'          🍼️ 谢 谢 ◎ 支 持 🍼️',--9
'          🍼 关 闭 ◎ 辅 助 🍼'},
nil,("    🍼作者墨凉：迷你号140458210🍼\n\n🍼 合作方：叶帆💍⚽❤🎀感谢您的使用🎀❤💍⚽🍼\n\n 当前迷你号:"..b.."明天才是更好的自己？随机一言:".."『"..K.."』"))
if menu == nil then else
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then H() end
if menu == 9 then I() end
if menu == 10 then
print("\n\n墨凉QQ：971245649\n")
print("     💛💚💙💜🖤⭐满眼都是你⭐🖤💜💙💚💛\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾             快  手   墨  凉             ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n     ╾╾╾╾                                                  ╾╾╾╾\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n     💛💚💙💜🖤⭐满眼都是你⭐🖤💜💙💚💛\n                                                                                               ")
os.exit()
end--退出
end
XGCK=-1
end

function I()
gg.alert([[
🎉感谢大家支持我🎉

   ❤墨凉：QQ 3061997630❤

   🎊QQ群：QQ 993850973🎊
  
    合作方:叶帆
  
    🚫此辅助请勿 二改倒卖🚫
   

     🍼此辅助支持迷你版本为1.4.1🍼 ]],'','关闭')
end
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function A()  
menu1 = gg.choice({
    "🔰♥️紫色月亮♥️🔰",
    "🔰♥️碧琪特效♥️🔰",
    "🔰♥️绿色特效♥️🔰",
    "🔰♥️彩虹拖尾♥️🔰",
    "🔰♥️️蓝色特效♥️🔰",
    "🔰♥️️花小楼特效♥️🔰",
    "🔰♥️️冰公主特效♥️🔰",
    "🔰♥️️叶萝莉特效♥️🔰",
    "🔰♥️跳舞动作♥️🔰",
    "🔰♥️抱坐动作♥️🔰",
    "🔰♥️睡觉动作♥️🔰",
    "🔰♥️️欢呼动作♥️🔰",    
    "🔰♥️漂浮动作️♥️🔰", 
    "🔰♥️摸空气动作️♥️🔰",
    "🔰♥️抠鼻子动作♥️🔰",
    "🔰♥️️害羞动作♥️🔰",    
    "🔰♥️死亡动作️♥️🔰", 
   "🔰♥️恢复动作️特效♥️🔰", 
    "🔰🎡返 回 主 页🎡🔰",},2018,os.date("🔰人们只会注意最耀眼的烟火，所以，骚年请保存你的耀眼🔰"))
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼


function B()
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
'🍼防踢🍼',--22   
'🍼修改坐骑🍼',--23     	     	
'🍼无限召唤坐骑🍼',--24
'   🍼返 回 主 页🍼         '},
nil,'🍼当前：房主功能🍼')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then b9() end
if menu1 == 10 then b10() end
if menu1 == 11 then b11() end
if menu1 == 12 then b12() end
if menu1 == 13 then b13() end
if menu1 == 14 then b14() end
if menu1 == 15 then b15() end
if menu1 == 16 then b16() end
if menu1 == 17 then b17() end
if menu1 == 18 then b18() end
if menu1 == 19 then b19() end
if menu1 == 20 then b20() end
if menu1 == 21 then b21() end
if menu1 == 22 then b22() end
if menu1 == 23 then b23() end
if menu1 == 24 then b24() end
if menu1 == 25 then az() end
GLWW=-1
end

function b1() 
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

function b2() 
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

function b3() 
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

function b4() 
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

function b23()
hj = gg.prompt({"🐉输入坐骑代码🐉"}
,{[1]=0},{[1]="number"})[1]
yu = gg.prompt({"🐉请输入要修改的血量🐉"}
,{[1]=0},{[1]="number"})[1]
w = gg.prompt({"🐉请输入要修改的速度🐉"}
,{[1]=0},{[1]="number"})[1]
s = gg.prompt({"🐉请输入要修改的跳跃能力🐉"}
,{[1]=0},{[1]="number"})[1]
j = gg.prompt({"🐉请输入要修改的坐骑buff属性代码🐉"}
,{[1]=0},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x345F89, 0xB0, 0x164}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = hj}})
gg.setValues({{address = ttt, flags = 4, value = yu}})
gg.setValues({{address = ttt, flags = 4, value = w}})
gg.setValues({{address = ttt, flags = 4, value = s}})
gg.setValues({{address = ttt, flags = 4, value = j}})
gg.toast("开启成功")
end

function b5() 
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

function b6() 
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

function b24()
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

function b7() 
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

function b8() 
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

function b9() 
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

function b10() 
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

function b12() 
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

function b13() 
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

function b14() 
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

function b15() 
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

function b16() 
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

function b17() 
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

function b18() 
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

function b19() 
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

function b22()
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

function b21() 
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function C()
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
'🍼伪飞行🍼',--14
'🍼备 用 穿 墙🍼',--15
'🍼联机修改皮肤(新要有妙妙)🍼',--16
'🍼云 服 主🍼',--17
'🍼自定义开关危险品🍼',--18
'🍼修改任务获取物品（倾城原创）2🍼',--19
'🍼联机取物1🍼',--20
'🍼隐藏探险笔记🍼',--21
'🍼替别人打字(凉情)🍼',--22
'🍼创造背包(电脑版)🍼',--23
'🍼无限星星.星星礼盒🍼',--24
'🍼联机箱子无限物品🍼',--25
'🍼重启云服(选择一个作品云服就没了)🍼',--26
'🍼崩云服数据库🍼',--27
'🍼崩云服客户端🍼',--28
'🍼自定义添加任何东西🍼',--29
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
if menu1 == 17 then c17() end
if menu1 == 18 then c18() end
if menu1 == 19 then c19() end
if menu1 == 20 then c20() end
if menu1 == 21 then c21() end
if menu1 == 22 then c22() end
if menu1 == 23 then c23() end
if menu1 == 24 then c24() end
if menu1 == 25 then c25() end
if menu1 == 26 then c26() end
if menu1 == 27 then c27() end
if menu1 == 28 then c28() end
if menu1 == 29 then c29() end
if menu1 == 30 then az() end
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
    gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end
Main() -->>函数入口
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

function c23()	 
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

function c28()

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



local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x28A21C, 0x0, 0xA4, 0xE4}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1}})
end

function c1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12005}})
	 end
	 gg.toast("删除备份成功，已注入一项数据")
	 gg.clearResults()
end

function c27()
qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 1629379373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 16373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162937973937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162937973937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162379373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)

end

function c26()
qmnb = {
{["memory"] = 4},
{["name"] = "云服重启"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 12345, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function c24()
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

function c22()	
 t = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
s = gg.prompt({"『输入要模仿的人迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "模仿别人打字"},
{["value"] =t , ["type"] = 4},
{["lv"] = lq, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = s, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end

function c29()
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

function c25()
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
qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777472,["offset"]=-76,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
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

function c17()
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

function c19()
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

function c21()
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

function c18()
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

function c16()	 
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function D()
menu1 = gg.choice({
 '🍼子 弹 穿 墙🍼',--1
 '🍼狙 神 专 用🍼',--2
 '🍼怒 海 专 用🍼',--3
 '🍼改   队  伍 🍼',--4
 '🍼超 远 攻 击🍼',--5
 '🍼人 物 上 色🍼',--6
 '🍼天 空 变 黑🍼',--7
 '🍼锁 定 高 度🍼',--8
'🍼改分数房主可用🍼',--9
'🍼狙击一件套🍼',--10
'🍼狙击自瞄🍼',--11
 '🍼返 回 主 页🍼'},
nil,'🍼当前：狙击功能🍼')
if menu1 == 1 then d1() end
if menu1 == 2 then d2() end
if menu1 == 3 then d3() end
if menu1 == 4 then d4() end
if menu1 == 5 then d5() end
if menu1 == 6 then d6() end
if menu1 == 7 then d7() end
if menu1 == 8 then d8() end
if menu1 == 9 then d9() end
if menu1 == 10 then d10() end
if menu1 == 11 then d11() end
if menu1 == 12 then az()
end
GLWW=-1
end

function d1()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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
{["value"] =999999, ["offset"] = 0x4E, ["type"] = 2},
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
{["value"] =999999, ["offset"] = 0x6, ["type"] = 2},
}	
 xqmnb(qmnb)
end

function d4()
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

function d6()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function d7()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function d11()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
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
end
function d9()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️墨凉⚠️"))
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function E()
menu1 = gg.choice({
'🍼玩法改创造🍼',--1
'🍼取消危险品🍼',--2
'🍼仙人掌改卡图🍼',--3
'🍼南瓜改自定义🍼',--4
'🍼自定义改编辑器🍼',--5
'🍼添加地形编辑器🍼',--6
'🍼家园道具(编辑器内)🍼',--7
'🍼新家园道具🍼',--8
'🍼返 回 主 页🍼'},
nil,'🍼当前：炸图功能🍼')
if menu1 == 1 then e1() end
if menu1 == 2 then e2() end
if menu1 == 3 then e3() end
if menu1 == 4 then e4() end
if menu1 == 5 then e5() end
if menu1 == 6 then e6() end
if menu1 == 7 then e7() end
if menu1 == 8 then e8() end
if menu1 == 9 then az() end
GLWW=-1
end

function e1()
menu1 = gg.multiChoice({
'玩法改创造',--1
'生存改创造',--2
'玩法改创造[永久]',--3
'生存改创造[永久]',--4
'返 回 主 页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then nnn1() end
if menu1[2] == true then nnn2() end
if menu1[3] == true then nnn3() end
if menu1[4] == true then nnn4() end
if menu1[5] == true then E() end
end
GLWW=-1
end

function nnn1()
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

function nnn2()
f = gg.prompt({"请输入房主迷你号『生存改创造』"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "生存改创造"},
{["value"] = f, ["type"] = 4},
{["lv"] = 0, ["offset"] =
 -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function nnn4()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function nnn3()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="玩法改创造"},
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


function e2()
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

function e3()
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

function e4()  
i2= gg.choice({
    "𒅒炸药桶𒅒",
    "𒅒刷怪方块𒅒",
    "𒅒宠物窝𒅒",
    "𒅒天气控制器𒅒",
    "𒅒️重力装置𒅒",    
    "𒅒️空心树𒅒",
    "𒅒自定义方块𒅒",
    "𒅒返 回 主 页𒅒",},i2,os.date("𒅒开启后打开编辑器在植物那个分类里找到南瓜𒅒"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"输入方块代码"},{[1]=4095},{[1]="number"})[1] i1() end
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

function e5()
as = gg.prompt({"→输入要更改物品的代码-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头-12005能量剑"}
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

function e8() 
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
  "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("墨凉辅助永久免费"))
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




function e7()  
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
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("墨凉辅助"))
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

function e6()
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function F()
menu1 = gg.choice({
'🍼观 战 模 式🍼',--1
'🍼篮 球 模 式🍼',--2
'🍼转 移 伤 害🍼',--3
'🍼灵 魂 出 窍🍼',--4
'🍼强 制 改 密🍼',--5
'🍼钩 爪 连 发🍼',--6
'🍼修 改 彩 名🍼',--7
'🍼添 加 物 品🍼',--8
'🍼皮 肤 勋 章🍼',--9
'----------------',--10
'🍼留言 板 打字🍼',--11
'🍼自定 头 像框🍼',--12
'🍼自定 改 图名🍼',--13
'🍼免手 机 打字🍼',--14
'🍼一元购买悦享卡🍼',--15
'🍼防沉迷🍼',--16
'🍼返 回 主 页🍼'},
nil,'🍼当前：其他功能🍼')
if menu1 == 1 then f1() end
if menu1 == 2 then f2() end
if menu1 == 3 then f3() end
if menu1 == 4 then f4() end
if menu1 == 5 then f5() end
if menu1 == 6 then f6() end
if menu1 == 7 then f7() end
if menu1 == 8 then f8() end
if menu1 == 9 then f9() end
if menu1 == 10 then f10() end
if menu1 == 11 then f11() end
if menu1 == 12 then f12() end
if menu1 == 13 then f13() end
if menu1 == 14 then f14() end
if menu1 == 15 then f15() end
if menu1 == 16 then f16() end
if menu1 == 17 then az() end
GLWW=-1
end


function f1()
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

function f2()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function f3()
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

function f4()
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

function f5()
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

function f6()
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

function f7()

mini = gg.prompt({"请输入你的迷你号"}
,{[1]=140458210},{[1]="number"})[1]







mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个':'请不要把':'删除"}
,{[1]=":#b#cff8cae墨凉"},{[1]="text"})[1]
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

function f8()
tys = gg.prompt({"→输入要添加物品的代码--12006喷射钩爪--12008喷射筛子--12010钛金战锤--12009收割者"}
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

function f9()
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

function f10()
gg.toast("只是分割线哦")
end

function f11()
gg.toast("进入迷你一分多钟后才能开启成功")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
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

function f12()
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

function f13()
o3= gg.choice({
    "🧊萌清定制名字🧊",
    "🧊小北定制名字️🧊",
    "🧊凉情定制地图名️🧊",
    "🧊自定义地图名🧊",
    "----------------",    
    "  返 回 主 页𒅒",},2018,os.date("⚠️开启成功后返回手机桌面,不是退出游戏,再进迷你名字就改好了⚠️"))
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

function f16()
qmnb = {
{["memory"] = 4},
{["name"] = "解除防沉迷开启"},
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

function f14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("300.0E;999.0E:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end
function f15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10014E;18E", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

function G()
menu1 = gg.choice({
'🍼凉 情 辅 助🍼',--1
'🍼傲 傲 辅 助🍼',--2
'🍼凉 兮 辅 助🍼',--3
'🍼返 回 主 页🍼'},
nil,'🍼当前：切换辅助🍼     ----添加联系作者')
if menu1 == 1 then g1() end
if menu1 == 2 then g2() end
if menu1 == 3 then g3() end
if menu1 == 4 then g4() end
if menu1 == 5 then az()
end
GLWW=-1
end

function g1()
 pcall(load(gg.makeRequest("http://xiaodidi.zy40.tk/down.php/7db4f2d9b9420d6eeda9238172a33a0d.").content))
end

function g2()
 pcall(load(gg.makeRequest("http://xiaodidi.zy40.tk/down.php/8b55791fc477d41b76fb037b18516f0d.").content))
end

function g3()
 pcall(load(gg.makeRequset("https://wp.aaa456.cn/down.php/526e6ca866200674acaa27fcbdbc23df.lua").content))
end


--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

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
g.sel = {"还是分开","50"}
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

function H()  SN = gg.choice({
   "𒅒🍼搜索歌曲🍼𒅒",
   "𒅒🍼搜索列表🍼𒅒",
   "𒅒🍼播放热歌🍼️𒅒",
   "𒅒🍼停止播放🍼𒅒",
   "𒅒🍼清除冻结🍼 ",
   "𒅒🍼️返回主页️🍼𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then az() end
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

--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼
--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼--------------🍼墨凉🍼

while(true)do if gg.isVisible(true) then XGCK=1 gg.setVisible(false) end if XGCK==1 then az() end end
