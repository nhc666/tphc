gg.toast(os.date("ğ¡é¾å¥æ­£å¨ä¿æ¤ä½ çèæ¬ğ¡ "))



 function YY998() gg.playMusic("http://www.ihaoge.net/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_165397002&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3") end   ----é³ä¹å¤é¾
a = io.open("/sdcard/é¾å¥éç½®æä»¶.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/é¾å¥éç½®æä»¶.txt"):read("*a") zh = a:match("ãè´¦å·ã(.-)ãè´¦å·ã") if a == "" then zh = "" end end
dI=gg.prompt({"ğ¡è¾å¥ä½ çè¿·ä½ å·ğ¡","å¼å¯é³ä¹"},{[1] = zh,[2] = true},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/é¾å¥éç½®æä»¶.txt", "w") io.open("/sdcard/é¾å¥éç½®æä»¶.txt", "w"):write("ãè´¦å·ã" .. zh .. "ãè´¦å·ã"):close() ----è¿·ä½ å·è®¾ç½® zh=è¿·ä½ å·
b=a 
gg.toast("å½åè¿·ä½ å·:"..b.."(âï¸é¾å¥èæ¬ç¨³å¦æ³°å±±âï¸)")
local bx=os.date("%Yå¹´%mæ%dæ¥%Hæ¶%Må%Sç§") print(bx)
bqt={"ğ¡","ğ","ğ","ğ","ğ¡","ğ¥","ğ¦","â¡","âï¸","ğ»","âï¸","ğ","ğ","ğ¯","ğ«","â¡",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('ä¿®æ¹å°åæ°å¼(å°å,æ°å¼ç±»å,è¦ä¿®æ¹çå¼)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('ä¿®æ¹å°åæ°å¼(å°å,æ°å¼ç±»å,è¦ä¿®æ¹çå¼)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
--yearæ¯å¹´,monthæ¯æ,dayæ¯æ¥,houræ¯æ¶,minæ¯å,secæ¯ç§
--æä»¥ä¸é¢è¿ä¸ªä¸º2018å¹´1æ2æ¥1æ¶2å3ç§
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¤±è´¥") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["ä¸»ç¹å¾ç "] = tb1[1][1],["ç±»å"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["å¯ç¹å¾ç "] = tb1[i][1],["åç§»"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["ä¿®æ¹"] = tb2[i][1],["åç§»"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["ä¿®æ¹"] = false,["åç§»"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["ç±»å"]   gg.searchNumber(Search[1]["ä¸»ç¹å¾ç "], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("å±æç´¢ "..count.." æ¡æ°æ®")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["å¯ç¹å¾ç "]       if Search[k]["ç±»å"]~= nil then            lx =Search[k]["ç±»å"]          else            lx = Search[1]["ç±»å"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["åç§»"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["ç±»å"] ~= nil then              lx = w["ç±»å"]            else              lx = Search[1]["ç±»å"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["åç§»"]           t[#t].flags = lx           if (w["ä¿®æ¹"]~=nil) and (w["ä¿®æ¹"]~=false) then             t[#t].value = w["ä¿®æ¹"]             gg.setValues(t)             if (w["å»ç»"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["å»ç»"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("å±åç§»Î·"..#t.." æ¡æ°æ®ÎÎ")      else       gg.toast("æªå®ä½å°æ°æ®ï¼")       return false     end    else     gg.toast("æªå®ä½å°æ°æ®ï¼")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("typeåæ°éè¯¯") gg.toast("typeåæ°éè¯¯") os.exit() end else print("memory or arrayåæ°éè¯¯") gg.toast("memory or arrayåæ°éè¯¯") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼å¯æå,å±ä¿®æ¹" .. xgsl .. "æ¡æ°æ®") else gg.toast(qmnb[2]["name"] .. "å¼å¯å¤±è´¥") end end end end
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."å¼å¯å¤±è´¥")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."å¼å¯æå")else gg.toast(qmnbn.."å¼å¯å¤±è´¥")end end end 
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."ğğæ¿ ä¸» ç§ æğğ"..sjbq,
    [2] = sjbq.."ğğè æº å¼ æğğ"..sjbq,
    [3] = sjbq.."ğğæ å¾ æ¨¡ å¼ğğ"..sjbq,
    [4] = sjbq.."ğğï¸èª èº« ç« å½©ğğ"..sjbq,
    [5] = sjbq.."ğğï¸æ ç ç§ æğğ"..sjbq,
    [6] = sjbq.."ğğï¸é¾ å¥ é³ ä¹ğğ"..sjbq,
    [7] = sjbq.."ğğï¸é åº è æ¬ğğ"..sjbq,
},2018,os.date("ğé¾å¥-à¼ºé¾à¼åà¼å²à¼»-QQ3474859232ğ«     ç¨³å®                              ğ§å½åğ°æ¶é´%Yå¹´%mæ%dæ¥%Hæ¶%Må%Sç§ğ§"))
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end
if SY==6 then Main6() end 
if SY == 7 then Exit() end
XGCK=-1
FX1=0 end
function Main11() gg.clearList() end

function Main1()  
SN = gg.multiChoice({
"ğ§æ éç©å{ç¬¬1æ ¼æ¾2ä¸ªç©å}ğ§",
"ğ§æ æç§æ[æ­»äº¡ç¶æå¼å¯]ğ§",
"ğ§æ­¦å¨éé­[æ¾å¨ç¬¬1æ ¼]ğ§",
"ğ§å·¥å·éé­[æ¾å¨ç¬¬1æ ¼]ğ§",
"ğ§ç¬¬ä¸æ ¼åéªä½æ¹åéªğ§",
"ğ§ç©æ³èåæ¹åé èåğ§",
"ğ§ææºå¼çµèå¤§æ¿é´ğ§",
"ğ§å¼åèé¡µé¢æé®ğ§",
"ğ§å½©èæªè¶å¿«å°éğ§",   
"ğ§éåæ ææ­»[å¼]ğ§",
"ğ§æ éèå°[å¼å¯]ğ§",           	     	
"ğ§[ç©å®¶çç©ç§æ­»]ğ§",  
"ğ§ç§æä¸åæ¹åğ§",
"ğ§è½å°ç§æ[å¼å¯]ğ§",                      	     	              	     	
"ğ§åéªçç©å éğ§",   
"ğ§å¨æåå¾çé¾æ¥ğ§",           	     	              	     	
"ğ§æ´æ¹å°å¾åå­ğ§",          	     	              	     	
"ğ§æ´æ¹ç©å®¶å¤§å°ğ§",       	     	              	     	
"ğ§åä¸½åèº«åç« ğ§",       	   
"  å  ç§  å¤  æ´» ",  	 
"   ç© å®¶ å å¨ ç©  ",             	     	
"ğ¡è¿ å ä¸» é¡µğ¡",
 }, nil, "ğæè¿æ¯å¿ä¸äºå¥¹â¦â¦,å¯æè¿æ¯éæ©è¦å¿è®°å¥¹ğ")
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
if SN[22]==true then	 Main() end end
FX=0 end
function a27()
b = gg.prompt({"â­è¯·è¾å¥çç©ä»£ç ç©å®¶ä¼åå¨ç©â­"}
,{[1]=0},{[1]="number"})[1]
editData(
{
{["memory"] = gg.REGION_C_HEAP},
{["name"] = "ç©å®¶åå¨ç©"},
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

function a26()
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
  _FOR_.toast("å¼å¯æå")
  gg.clearResults()
end


function a25()
vip= gg.prompt({"è¾å¥ä¸ä¸ªä½ æ¥æçç®è¤çä»£ç 1èè¾¾2é½å¤©å°å£3åç¾ç¾4è¿·æ¯æ5ççå¥6ä¹æ²»7å¢¨å®¶å°é£8å®å¦®9å¾·å¤æ10å®å®å½11èéçäºº12ç¾½å§¬14ä¹ä¸15ç¯®çéé¿16å¦å¦éé¿20é¦è¡£å« 21è±å°æ¥¼ 22èèä¸ 23ææ å 24å¶å°é¾ 25äºç¼ç¥ 26é±¼å°ä¹ 27è¿·ä¿ä¿ 28å¹»é³ 29å¹»0å¼ 30æ³ä»å¿ 31å¸æ®å¥ 32ç±³å¨ 33éªäºº 34åååµåµ 35åµåµ 36åå 37æ¢¦æ­ 38æ©æµª 39å¤©ä½¿ 40æçµ 50ä¹å 51å°è¾ 52ç§¦å¤©æ± 53å¨éå¤© 54ææ¯ 55éæ æ  56åå¢å¢ 57æåæ  58å¤§é»è 59è±å¹½å¹½ 60æçµ 61éªçç 62ç±ä¸½ä¸ 63é¾å¤ªé 64çº¢èè 65ç­ç ´ 66æç ´å¤© 67å³å° 68éé³ 69æ¸å¼¦ 70ç´«æ¦ 71å®å®å¬ä¸» 72ææå¥³å­© 73æäº®å¬ä¸» 74é¢ç´¢ 75é£é 76åå« 77è¾¾å¥ 78å¡ç³å¨ 79æ£®æéè 80åå­ææ¯ 81ç¢§çª 82å¡æ´å° 83ä½å°ç¯ 84ç« å°ä¸¸ 85çå°å 86æåç ç  87äºå® 88é³éµå¬ä¸» 89åæ 90å²äºé 96å¤§æ ç 91 å©çª 92å¯ä½äººç©2/ 93å¯ä½äººç©3/ 94å¯ä½äººç©4/ 95å¯ä½äººç©5/ 91å¯ä½äººç©6/ 97å¯ä½äººç©7/ 98å¯ä½äººç©8/ 99å¯ä½äººç©9/ 100å¯ä½äººç©10/ 101å¯ä½äººç©11/ 102å£å©´ 103çé­ç 104çµç¶ 105å°çº¢å¸½"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "ç®è¤"},
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
dI=gg.prompt({"",""},{[1] = a,[2] = "ãè¿éæ¯å¤§å°ã5"},{[1] = "number",[2] = "number"})   
zh1 = dI[1] zh2 = dI[2] 
qmnb = {
{["memory"] = 4},
{["name"] = "æ¹å®ä½å¤§å°"},
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
    "ğ§èæ¸å®å¶åå­ğ§",
    "ğ§é¾å¥å®å¶åå­ï¸ğ§",
    "ğ§ï¸ğ§",
    "ğ§ğ§",
    "ğ§ğ§",    
    "ğğ¡è¿åä¸»é¡µğ¡ğ",},2018,os.date("â ï¸å¼å¯æååè¿åææºæ¡é¢,ä¸æ¯éåºæ¸¸æ,åè¿è¿·ä½ åå­å°±æ¹å¥½äºâ ï¸"))
if o3==1 then  vi1() end
if o3==2 then  vi2() end
if o3==3 then  vi3() end
if o3==4 then  vi4() end
if o3==5 then  vi5() end
if o3==6 then  Main() end
XGCK=-1 end
function vi2()
aaa1 = gg.prompt({"è¾å¥è¦ä¿®æ¹çå°å¾ä½èè¿·ä½ å·"}
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
aaa1 = gg.prompt({"è¾å¥è¦ä¿®æ¹çå°å¾ä½èè¿·ä½ å·"}
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
gg.alert("ğ§åç¹å»å¨æåå¸æé®ğ§","ğï¸å¼å¯ğï¸ï¸")
qmnb = {
{["memory"] = 4},
{["name"] = "å¨æåå¾ç"},
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
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,70)
gg.toast("ææçç©å é: å¼å¯æå")
 elseif  F== 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE6661C
setvalue(so+py,16,10)
gg.toast("ææçç©å é: å¼å¯æå")
end
end
function a16()
F=gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°", "ğå¼ğ", "ğï¸å³ğï¸ï¸")
if F ~= 1 and F ~= 2 then
gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
else
end
if F==1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE7BD40
py1=0xE7BD44
setvalue(so+py,16,0)
setvalue(so+py1,16,0)
gg.toast("æ éèå°:å¼å¯æå")
elseif F==2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xE7BD40
py1=0xE7BD44
setvalue(so+py,16,200)
setvalue(so+py1,16,200)
gg.toast("æ éèå°:å¼å¯æå")
end
end
function a18()
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="ç§ææ¹åå¼"},
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
{["name"]="ç§ææ¹åå³"},
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
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "ç§æ­»"},
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
{["name"] = "ç§æ­»"},
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
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="ä¸æå°±æ­»å¼"},
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
{["name"]="ä¸æå°±æ­»å³"},
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
gg.toast("å¼å¯æååç¹å»ç»§ç»­æ¢é©")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "æ æ"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "å¤©ç©ºåé»"},
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
{["name"] = "å¤©ç©ºåé»"},
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
{["name"] = "éé­"},
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
F = gg.alert("ğ°è¯·éæ©åè½ğ°","ğå½©èæªå¼ºå1ğ","ğèªå®ä¹ï¸å­å¼¹2ğï¸ï¸")
 if  F~=1 and F~=2 then
  else 
  end
 if F == 2 then
 A4 = gg.prompt({"ãè¾å¥å­å¼¹ä»£ç ã12299æå¤©æ±ç®å¼¹-12300ææå¼¹-15509çç§æ¿å-15510å°å»æ¿å-15511çç¸æ¿å-15512å²©ç³æµ·å¸-15513å°ç-15518ç¹æç¸å¼¹-15519å²©æµå¼¹-15520æ··ä¹±ç_15521_15051çç§ç®­-15052çç§éªç-15053æ³¡æ³¡ç-15056çå²©å¼¹-15057æ··ä¹±å¼¹-15058ç¸å¼¹-15059å°é¥[ä¸å¯æ¾ç½®æ¹å]-15060çå²©ç-15062å°é¥-15064å°ç¸å¼¹-15065ç«ç¸å¼¹-15066å°éªå¼¹-15067ç´«ç-15068ç´«ç®­"}
,{[1]=0},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "å­å¼¹éæ©"},
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
{["name"] = "å½©èæª"},
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
{["name"] = "éé­"},
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
    "ğğ§åç³é¾ğ§ğ",
    "ğğ§æºçµé£é¼ ğ§ğ",
    "ğğ§çç¥¥éºéºğ§ğ",
    "ğğ§éè¡é¸ğ§ğ",
    "ğğ§ï¸å¤§ç½è±¡ğ§ğ",    
    "ğğ§ï¸è¶è½æµ·è±¹ğ§ğ",
    "ğğ§èç®ç«ç«ğ§ğ",
    "ğğ§ææ²³å¤©é©¬ğ§ğ",
    "ğğ§æ¡é¦æç¼ğ§ğ",
    "ğğ§æ·±æ¸åå®ğ§ğ",
    "ğğ§çæä»å®«ğ§ğ",
    "ğğ§å°éªä¼ è¯´ğ§ğ",   
    "ğğ§ç¼¤çº·å¹»æ³ğ§ğ",
    "ğğ§ç¦è¿ååğ§ğ",
    "ğğ§æµ®æ¸¸å±±æµ·ğ§ğ",
    "ğğ§éè±æ°´æğ§ğ",
    "ğğ§ï¸é¹¿çæ¬èº«ğ§ğ", 
     "ğğ§ï¸ç²¾çµåçè½¦ğ§ğ", 
      "ğğ§ï¸ç«¹ è» èğ§ğ",     
    "ğğ¡è¿ å ä¸» é¡µğ¡ğ",},2018,os.date("ğç«å¾å¤ªä¹ï¼é½ä¸ç¥éèªå·±å¨ç­ä»ä¹ğ"))
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
{["name"] = "åéª"},
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
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="åé èåå¼"},
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
{["name"]="åé èåå³"},
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
   "ğğ°å¼10äººæ¿é´ğ°ğ",
   "ğğ°å¼20äººæ¿é´ğ°ğ",
   "ğğ°å¼30äººæ¿é´ğ°ğ",
   "ğğ°ï¸å¼40äººæ¿é´ğ°ğ",
   "ğğ°ï¸è¿ å ä¸» é¡µğ°ğ",
},2018,os.date("ğå¼å¯æååç´æ¥å¼æ¿é´å°±è¡äº,å»ºè®®æ¯æ¬¡å¼æ¿é´åé½å¼ä¸æ¬¡è¿åè½ğ"))
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
{["name"] = ""..a9aa.."äººæ¿é´"},
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
{["name"] = "å¼åèé¡µé¢"},
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
A3 = gg.prompt({"è¾å¥ä½ çé«åº¦"}
,{[1]=8},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "ç¬¬1æ­¥"},
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
{["name"] = "éåæ ææ­»"},
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
	 "âï¸è¸ ç©º è·³[å¼]â",
	 "âï¸ç©¿ å¢[å¼å¯]â",
	 "âç¬¬3äººç§°ä¸å¸è§è§â",
             "âé£è¡ä¸åéåº¦âï¸",
	 "âè¶è¿æ»å»[å¼å¯]ï¸âï¸",
	 "âç¯® ç æ¨¡ å¼âï¸",
	 "âä¸ è§ é è§â",
	 "âï¸äºº ç© å  éâ",
	 "âè½ é å æ  cdâ",
	 "âè§ æ æ¨¡ å¼[å¼]â",
	 "âå·æªæ¹åå·åéª[éæ©é¸¡]â",
	 "âï¸å¡ é æ¿ ä¸»[å¼]âï¸",
	 "âï¸é èº« å« äºº[å¼]âï¸",
	 "âï¸è§£é¤å·å±ç¦è¨âï¸",
	 "âï¸æå¤´.è¹¦è¿ª[å¼å¯]âï¸",
	 "âï¸ç§åè¡èååè±âï¸",
	 "âï¸æ½ è¡ å é«[å¼]âï¸",	 
             "âè½éåéªç°è·ç¦»ï¸âï¸",
             "âå®  ç© é æ©ï¸âï¸",
             "âï¸è æº æ¹ ç® è¤âï¸",
             "âå®å¶ï¸èæºåå­âï¸",
             "âå°æ·æ°äºæ®µè·³ï¸âï¸",
             "âéå®é«åº¦éèº«ï¸âï¸",
             "âï¸ä¼ª æ¿ ä¸» è¸¢ äººâï¸",
             "âç¼è¾å¨å¬å¤bossï¸âï¸",
             "âåææºå·éªè¯æå­ï¸âï¸",
             "âï¸å¼å³å±é©åæ¹æå­âï¸",
             "âï¸çè¨æ¿å·å±âï¸",
             "âï¸ä¼¤ å®³ è½¬ ç§»âï¸",
             "âï¸è§£é¤ç¦ç¨å±é©åâï¸",
             "âï¸ä¿® æ¹ æ¶ é´âï¸",
             "âï¸èªå¨èµ°è·¯âï¸",
             "âï¸å´©æå¡å¨âï¸",
             "âï¸èªå·±è¸¢èªå·±âï¸",
             "âï¸è¸¢æ¿ä¸»(é¾å¥åå)âï¸",
             "âè¶ çº§ äºº ç±»ï¸âï¸",
             "âï¸å¯»æ¾ä»£ç âï¸",
             "âæ·»å ç©åï¸âï¸",
             "âï¸è¶ çº§ é« è·³âï¸",
             "âï¸é²  è¸¢ (æµè¯)âï¸",
             "âï¸è§£ é¤ æ éâï¸",
             "âï¸ä¸ é® å´© æâï¸",
             "âï¸èª å® ç¹ æâï¸",
             "âï¸çµ é­ åº çªâï¸",
            " âï¸ç¦ ç¨ é© çª å¡ å­âï¸",
            "âï¸äº æ æ ä¸»âï¸",
            "âç¬¬ä¸äººç§°è¿ç¨æ»å»ï¸âï¸",
            "âï¸ç è¦ é¢ å·âï¸",
            "âï¸ç ç ´ è½® åâï¸",
            "âï¸ä¸ è§ é è§[å³é­]âï¸",
            "âä¸ é® ç§ æï¸âï¸",
            "âï¸æ¹ é ä¼âï¸",
            "âï¸äºº ç© æµ® ç©ºâï¸",
            "âï¸å æ¢ é» åâï¸",
            "âï¸è æº æ¹ ç® (ä¸å²)âï¸",
            "âä¿® æ¹ å®  ç© (ä¸å²ï¸)âï¸",
            "âï¸360åº¦(ä¸ç¥æ¯å¦æç¨)âï¸",
            "âï¸åæ¢èæ¬âï¸",
            "âï¸åæ¢å°å¯èæ¬âï¸",
            "âåæ¢åå°èæ¬ï¸âï¸",
            "âåæ¢æåèæ¬ï¸ï¼å¯ç :æå)âï¸",
            "âï¸ç ´è§£å å¯èæ¬(ä¸å¯¹äºè¿·ä½ )âï¸",
            "âï¸åæ¢æ¢¦å¹»èæ¬âï¸",
            "âï¸åæ¢å²å²èæ¬âï¸",
            "âï¸è§£ é² æ² è¿·âï¸",
            "âä¼ª é£ è¡â",
	  "ğ¡è¿ å ä¸» é¡µğ¡",
 }, nil, "ğåªè¦ä½ æåªå,æåä¸å®å°±å¨ç¼åå æ²¹,ç¸ä¿¡èªå·±ğ")
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
if SN[67]==true then Main() end end
FX=0 end 
function b74()
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.toast("ğ¡å¦ææé®æ¶å¤±ç¹å»ä¿®æ¹å¨å³å¯ğ¡")
qmnb = {
{["memory"] = 4},
{["name"] = "ä¼ªÂ·é£è¡(å¼)"},
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
{["name"] = "ä¼ªÂ·é£è¡(å³)"},
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
j360j = gg.prompt({"è¯·è¾å¥æ°å¼"}
,{[1]=500},{[1]="number"})[1]
 qmnb = {
{["memory"] = 16384},
{["name"] = "360Â°è§è§"},
{["value"] = 347225737691922432.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 180.0, ["offset"] = 36, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 40, ["type"] = 16},
}
qmxg = {
{["value"] = j360j, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)

end
function b64()
b = gg.prompt({"è¯·è¾å¥å® ç©ä»£ç æå¶ä»çç©ä»£ç "}
,{[1]=3017},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "å® ç©"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},

{["lv"] = 10001, ["offset"] = 80, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)

end
function b63()
c = gg.prompt({"è¯·è¾å¥ç®è¤ä»£ç ãæ³¨æç¬¬ä¸æ¬¡å¼å¯éè¦ç«çä¸å¨ä¸ç¶å¼å¯å¤±è´¥ã"}
,{[1]=29200},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "èæºç®è¤"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "äººç©æµ®ç©º"},
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
{["name"] = "å³é­æµ®ç©º"},
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
H=gg.prompt({"ãè¯·è¾å¥éä¼ä»£ç ãæ»å-0.çº¢é-1.èé-2.ç»¿é-3.é»é-4.æ©é-5.ç´«é-6.è£å¤-999"},{'0'},{"number"})[1]
qmnb={
{["memory"]=4},
{["name"]="æ´æ¹éä¼"},
{["value"]=zh, ["type"]=4},
{["lv"]=1, ["offset"]=96, ["type"]=4},
{["lv"]=16777473, ["offset"]=-64, ["type"]=4},
}
qmxg = {
{["value"]=H, ["offset"]=228, ["type"]=4},
}
xqmnb(qmnb)
end

function b58()
b31a= gg.prompt({"è¾å¥æ¿ä¸»è¿·ä½ å·"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "å¼å¯æåï¼æ­£å¨è°è¯ã"},
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
{["name"] = "è°è¯æå"},
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
	 gg.searchNumber("196,608D;65,538D;65,536D;0D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2}})
	 end
	 gg.toast("ğé¾ğ     ğ«å¥ğ«      â¨è¶â¨      ğç¨³ğ")
	 gg.clearResults()
end
function b56()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("ğ¸å¤©ç¼å¼å¯æåğ¸")
	 gg.clearResults()
end

function b55()
b = gg.prompt({"ğè¯·è®¾ç½®å¹»å¢çè¦ç¨åº¦ï¼å³é­æé®å¥å£å·²å³é­ï¼æµªå­ä¸åå¤´ğ"}
,{[1]=9999999},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "çè¦ç¨åº¦"},
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
y = gg.prompt({"ãè¾å¥æä¸»çè¿·ä½ å·ã"}
,{[1]=12345},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "äºææä¸»"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "ç¦ç¨é©çª"},
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
{["name"] = "ç¦ç¨å¡å­"},
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
{["name"] = "è§£é¤ç¦ç¨é©çª"},
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
{["name"] = "è§£é¤ç¦ç¨å¡å­"},
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
s = gg.prompt({"è¯·è¾å¥è¦ä¿®æ¹çå¤§å°"}
,{[1]=6},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "çµé­åºçª"},
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
b = gg.prompt({"ç¹æä»£ç 11~19[èªå·±è¾å¥]"}
,{[1]=12},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "ç¹æ"},
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
b31a= gg.prompt({"è¾å¥æ¿ä¸»è¿·ä½ å·"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "ç¬¬ä¸æ­¥ï¼å¼å¯æå"},
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
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
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
gg.toast(qmnbn.."å¼å¯æå,å±æ³¨å¥ 2 æ¡å»ç»æ°æ®")
else 
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
end
end
end
bf(
{
{4},
{"å´©æå¨"}, 
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "è§£é¤æé"},
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
{["name"] = "è§£é¤æé"},
{["value"] = 123698, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -40, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
end
end
function b47()
b= gg.prompt({"è¾å¥æ¿ä¸»è¿·ä½ å·"},{[1]=259537497},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "é²è¸¢"},
{["value"] = b, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
{["value"] = 16777472, ["offset"] = 64, ["type"] = 4},
{["value"] = 16777216, ["offset"] = 64, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function b46()
gg.alert("å¼å¯åå¦ææ³æ¢å¤ï¼éåºæ¿é´éæ°è¿å³å¯")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.toast("nil")
gg.getResults(100)
v = gg.prompt({i='è¾å¥è·³è·åæ°(60ç­äº2.3åï¼èªå·±ç®)ï¼0ï½1000   é»è®¤150'}, {i='150'})--è¿ä¸ªå°±æ¯å¼¹åºä¸ä¸ªè¾å¥æ¡
gg.editAll(v['i'], 16)
gg.toast("å¼å¯æå")
end
function b44()
vs=gg.prompt({
"å¨åé æ¨¡å¼æä½ è¦æ·»å çä¸è¥¿æ¾1ä¸ªå¨ç¬¬8æ ¼,ä¸ä¼å¿ä¼èªå¨æç´¢å®æåèªå·±ç¹è½¬å°,æ»å°é»è²æ¡æ¡ä¸é¢30æ ¼,æ1ä¸ª-11å¼å¤´çæ°å¼,(æ³¨æï¼ä»£ç ä¸æ¯åºå®çæ¯æ¬¡è¿å¥æ¸¸æä»£ç ä¼å·æ°,å¦æä½ éæ°æå¼äºæ¸¸æä¸ä¸æ¬¡çä»£ç å°±ç¨ä¸äºè¦éæ°æ¾)"}, {[1]=0}, {[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "å¯»æ¾ä»£ç "},
{["value"] = 4062199228405908463, ["type"] = 32},
}
xqmnb(qmnb)
os.exit()
end


function b45()
as=gg.prompt({
"è¾å¥ç©åä»£ç ä¸ç¥éå°±æå¯»æ¾ä»£ç æ¾"}, {[1]=0}, {[1]="number"})[1]
end
function b45()
cs=gg.prompt({
"è¾å¥ä½ æ³è¦çæ°é945804461æ¯1ä¸ª,945804524æ¯64ä¸ª,945804388æ¯ä¸ª200ä¸ª"}, {[1]=0}, {[1]="number"})[1]
ds=gg.prompt({
"è¾å¥ä½ æ³è¦çèä¹åº¦"}, {[1]=0}, {[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "æ·»å "},
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
gg.alert("éè¿æ¿é´å³å¯æ¢å¤")
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
	 gg.toast("è¶çº§äººç±»å¼å¯æå")
	 gg.clearResults()
end
 function b42()
gg.toast("åå¼ç¶åè¯´ä¸å¥è¯ç¶åå°±å³(è¯·éæ©è¸¢æ¿ä¸»å¼å³)")
F = gg.alert("âï¸è¯·éæ©è¸¢æ¿ä¸»ï½å¼ å³ï½âï¸","âï¸å¼âï¸","âï¸å³âï¸")
 if  F~=1 and F~=2 then
  gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
b = gg.prompt({"è¯·è¾å¥æ¿ä¸»è¿·ä½ å·"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "è¸¢æ¿ä¸»"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
elseif F == 2 then
a = gg.prompt({"è¯·è¾å¥æ¿ä¸»è¿·ä½ å·"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "è¸¢æ¿ä¸»"},
{["value"] = a, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = zh, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
end
function b41()
b31a= gg.prompt({"è¾å¥æ¿ä¸»è¿·ä½ å·"},{[1]=259537497},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "èªå·±è¸¢èªå·±"},
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
     "å¼å¯å´©æå¨",
     "å³é­å´©æå¨(æ¥çææ)",
     "è¶çº§å´©æå¨(è¯·åå¼å¯å´©æå¨)",
}, nil, "è¿å¥æå¡å¨å´©TMä¸ªbç")
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
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
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
gg.toast(qmnbn.."å¼å¯æå,å±æ³¨å¥ 2 æ¡å»ç»æ°æ®")
else 
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
end
end
end
bf(
{
{4},
{"å´©æå¨"}, 
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
	 gg.toast("æ¶é´å·²è¿ï¼èªå¨å¼å§å´©æ")
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
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
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
gg.toast(qmnbn.."å¼å¯æå,å±æ³¨å¥ 2 æ¡å»ç»æ°æ®")
else 
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
end
end
end
jiuyan(
{
{4},
{"å´©æå¨åçº§"}, 
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
gg.toast("è¯·éæ©èªå¨ç§»å¨çæ¹å")
F = gg.alert("è¯·éæ©æ¹å","å","å","å³")
 if  F~=1 and F~=2 and F~=3 then 
  gg.toast("ä½ æªéæ©ååé»è®¤åæ¶")
    gg.toast("ä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "èªå¨ç§»å¨[å]"},
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
{["name"] = "èªå¨ç§»å¨[å]"},
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
{["name"] = "èªå¨ç§»å¨[å³]"},
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
DMBGNB = gg.prompt({"è¯·è¾å¥ä¿®æ¹çæ¶é´"}
,{[1]=12},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "ä¿®æ¹æ¶é´"},
{["value"] = 65538, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 524289, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = DMBGNB, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function b37()
qmnb = {
{["memory"] = 16384},
{["name"] = "è§£é¤ç¦ç¨å±é©å"},
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
b99 = gg.prompt({"[è¾å¥ä¸åéçäººçè¿·ä½ å·]å¼å¯æååæéåï¼ä¼¤å®³ä¼å°ä½ è¾å¥è¿·ä½ å·çé£ä¸ªäººèº«ä¸"}
,{[1]=0},{[1]="number"})[1]
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "æ»å»è½¬ç§»"},
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
{["name"] = "çè¨æ¿"},
{["value"] = 406323200, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 4, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function b34()
o3= gg.choice({
    "ğ§ç¥ç¥æ®¿.é¾å¥å®å¶ğ§",
    "ğ§ç¥ç¥æ®¿.çè¾å®å¶ğ§",
    "ğ§Thetemple.ç¥ç¥æ®¿ï¸ğ§",
    "ğ§å®å¶ å¤©éÂ·ä½©æ©ğ§",
    "ğğ¡è¿åä¸»é¡µğ¡ğ",},2018,os.date("ğå¼äºä¼ªæ¿ä¸»ä»¥åï¼ç¹å»æ¿é´ç¦ç¨å±é©åğ"))
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
{["name"] = "å¼å¯æå"},
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
gg.toast("å¼å¯æå")
end
function b33()
qmnb = {
{["memory"] = 4},
{["name"] = "åææºå·éªè¯æå­"},
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
 gg.toast("æå¼ç¼è¾å¨éæ©èªç¶æ¹å")
qmnb = {
{["memory"] = 4},
{["name"] = "å¬å¤boss"},
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
b31a= gg.prompt({"è¾å¥æ¿ä¸»è¿·ä½ å·"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "ä¼ªæ¿ä¸»"},
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
AA1 = gg.prompt({"[è¯·è¾å¥ä½ çé«åº¦]å¼å¯æååç¨é£è¡è¡èµ°"}
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
{["name"] = "éèº«"},
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
{["name"] = "å°æ·æ°"},
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
    "ğ§æ¹å1ğ§",
    "ğ§ï¸æ¹å2  ",
    
  "ğğ¡è¿åä¸»é¡µğ¡ğ",},2018,os.date("ğ§å½åæ¶é´%Yå¹´%mæ%dæ¥%Hæ¶%Må%Sç§ğ"))
if o3==1 then
v1() end
if o3==2 then 
 v2() end
if o3==3 then  Main() end
XGCK=-1 end



function v1()
mnmz = ":w"
mnmc = gg.prompt({"è¯·è¾å¥åå­è®°å¾åé¢å ä¸ª:"}
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
gg.toast("ä¸´æ¶æ¹åå¼å¯æå")
if gg.getResultCount() == 0 then
gg.toast("ä¸´æ¶æ¹åå¼å¯å¤±è´¥")
else
end
end

function v2()
mnmc2 = ":w"
mnmcc = gg.prompt({"è¦å¼å¯ä¸´æ¶æ¹åâ è¿ä¸ªææææ"}
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
gg.toast("ä¸´æ¶æ¹åå¼å¯æå")
if gg.getResultCount() == 0 then
gg.toast("ä¸´æ¶æ¹åå¼å¯å¤±è´¥")
else
end
end

        
function b26()
gg.clearList()
F = gg.alert("ğ¡æ¹ç®è¤å¼å¯åå¬å¤åäººæä¸ä¸ğ¡","ğ§èæºï¸æ¹ç®è¤ğ§","ğ§å® ç©æ¹åäººğ§ï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©é»è®¤åæ¶")
  else 
  end
if  F== 1 then
b99 = gg.prompt({"ğ¡ä»£ç å¨åå­çå³ä¾§ğ¡å¾·å¤æå­ä¸2304å®å®å½2560ç¾½å§¬3072å°é¾6144äºéç¥6400å¹»é¶å¼7424æ³ä»å¿7680å¸æ®å¥7936åååµåµ8704æ©æµª9728åµå°ç³10752æç¿¼11264ç¦»11520é»¯11776å¤§æ¯12544ä¹å12800å°è¾13056æå¤©æ±13312å¨éå¤©13568ææ¯13824éææ14080åå¢å¢14336å¤§é»è14848è±å¹½å¹½15104ç±ä¸½ä¸15872çº¢èè16384ç­ç ´16640æç ´å¤©16896å³å°17152éå¼¦17664ç´«æ¦å¥³å­©17920å®å®å¬ä¸»å¥³å­©18176ææå¥³å­©18432æäº®å¬ä¸»å¥³å­©18688é¢é18944é£æ 19200åå«19456å¡èå¨19968ç¢§çªå¥³å­©20736ç½å¤å¥³å·«å¡æ´å¿20992ä½å°æ¬¢21248ç« å°é±¼21504çå°å21760æåç ç å¥³å­©22016äºå®å¥³å­©22272é³éµå¬ä¸»å¥³å­©22528åæ®22784å²äºå®µ23040å©çª23296éå¤´23552å¤§é¹23808çè24064éç24320å¤§æ ç24576é¶å24832ä¿¯å²25088é£ç«25344å¼¹å¼25600ç©ºè¢­25856å£å©´26112é­ç26368çµç¶26624å°çº¢å¸½é¿å¤å°26880è¿·å°é·27136ç¼å°å¹´æ²å°å¤«27392ä»æçæ28160æ©å­28416æ¥çæ¯28672æ³¡æ³¡28928æé²ç¹è±29184å°å¬ä¸»29440ç½ä¸½29696"},
{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "èæºç®è¤"},
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
{["name"] = "å® ç©"},
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
    "ğğ°åæ³¡å¢ğ°ğ",
    "ğğ°è±ªåå¢ğ°ğ",
    "ğğ°å·¨å²©å¢ğ°ğ",
    "ğğ°çç«å¢ğ°ğ",
    "ğğ°ï¸å¿èèğ°ğ",    
    "ğğ°ï¸çåå½ğ°ğ",
    "ğğ°æ±ªæ±ªè­¦é¿ğ°ğ",
    "ğğ°é»é¾å´½ğ°ğ",
    "ğğ°éç¾½é¹¦é¹ğ°ğ",
    "ğğ°å¹½çµççğ°ğ",
    "ğğ°é»é»é»ğ°ğ",
    "ğğ°çè±¹çå­ğ°ğ",   
    "ğğ°æ¢µé³ç´ğ°ğ",
    "ğğ°ä¸°ç¾½å­éğ°ğ",
    "ğğ°æ··ä¹±é»é¾ğ°ğ",
    "ğğ°è¿å¤å·¨äººğ°ğ",
    "ğğ°ï¸ç¾½ è ç¥ğ°ğ", 
     "ğğ°ï¸èç©ºå¹»å½±-è¿ğ°ğ", 
     "ğğ°ï¸èç©ºå¹»å½±-çğ°ğ",    
     "ğğ°ï¸ççè-å®å½ğ°ğ",
    "ğğ°ï¸èª å® ä¹ å¬ å¤ ğ°ğ",        
    "ğğ¡è¿ å ä¸» é¡µğ¡ğ",},2018,os.date("ğä½ æ¼äºå½çæ³è¦èå¥å¥¹çä¸ç,èå¥¹çä¸çå´ä¸ç¼ºä½ ğ"))
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
if o2==21 then o = gg.prompt({"èªå·±æ¾ä»£ç "},{[1]=3113},{[1]="number"})[1] o1() end
XGCK=-1 end
function o3()
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ğ°","ğå®å®å½å½ğ","ğï¸ççèğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "å® ç©"},
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
{["name"] = "å® ç©"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="è½éåè¶é¿è·ç¦»"},
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
{["name"]="è½éåè¶é¿è·ç¦»"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,70)
gg.toast("é£è¡ä¸åéåº¦: å¼å¯æå")
 elseif F == 2 then
so=gg.getRangesList('libAppPlayJNI.so')[1].start
py=0xACA17C
setvalue(so+py,16,15)
gg.toast("é£è¡ä¸åéåº¦: å¼å¯æå")
end
end


function c2()
qmnb={
{["memory"]=16384},
{["name"]="è§£é¤ç¦ç¨å±é©å"},
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
r = gg.prompt({"ãè¯·è¾å¥åéªä»£ç ã                                                          3432åç³é¾-3435é£é¼ -3438éºéº-3441éè¡é¸-3446æµ·æ¥-3456ç«-3459å¤©é©¬-3480æäº®-3471é¾-3485é¹¿4503é¹¿çæ¬èº«"}
,{[1]=3485},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "å·æªæ¹å"},
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
gg.alert("ğ§å¼å¯æååå¬å¤å°æ³¡æ²«ï¼æ¿ä¸»ç´æ¥éªéè¿·ä½ ğ§","ğï¸å¼å¯ğï¸ï¸")
qmnb = {
{["memory"] = 4},
{["name"] = "è¸¢æ¿ä¸»å¼å¯æå"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "æå¤´"},
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
{["name"] = "æå¤´"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
t = gg.prompt({"ãè¾å¥å«äººçè¿·ä½ å·ã"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "éèº«å«äºº"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = t, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
 t = gg.prompt({"ãè¾å¥å«äººçè¿·ä½ å·ã"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "éèº«å«äººè§£é¤"},
{["value"] = t, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
end
function b1()
AA1 = gg.prompt({"è¯·è¾å¥ä½ çé«åº¦"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "è¸ç©ºè·³"},
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
ml0 = gg.prompt({"å¯ä»¥è¾å¥-999  -1200 -1500ç­"}
,{[1]=-800},{[1]="number"})[1]
qmnb={
{["memory"]=16384},
{["name"]="æ½è¡åé«"},
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
AA3 = gg.prompt({"è¾å¥å æ°åæ°"}
,{[1]=70},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "äººç©å é"},
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
{["name"] = "è§ææ¨¡å¼"},
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
AA1 = gg.prompt({"è¯·è¾å¥ä½ çé«åº¦"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "ç©¿å¢"},
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
{["name"] = "è§£é¤ç¦è¨"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "ç¯®çæ¨¡å¼"},
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
{["name"] = "ç¯®çæ¨¡å¼"},
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
gg.toast("è¯·éæ©å¼å³")
F=gg.alert("è¯·éæ©ï½å¼ å³ï½", "å¼", "ï¸å³ï¸ï¸")
if F ~= 1 and F ~= 2 then
gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
gg.toast("ä½ æªéæ©ï½å¼ å³ï½")
else
end
if F==1 then
qmnb={
{["memory"]=32768},
{["name"]="ä¸è§éè§"},
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
{["name"]="ä¸è§éè§"},
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
{["name"] = "æ éç©å"},
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
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627144911.lua").content))
gg.clearResults()
end
function b5()
A1 = gg.prompt({"ãè¯·è¾å¥ä½ è¦çåæ°ãæ¹æ500æ¢å¤"}
,{[1]=5000},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "ä¸å¸è§è§"},
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
gg.toast("ååä¸ä¸ªè¡èå")
qmnb = {
{["memory"] = 4},
{["name"] = "ç§åè¡èå"},
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
             "ğ§éç¨åé [ä¸å±]ğ§",
             "ğ§[è§£é¤ç¦ç¨å±é©å]ğ§",
             "ğ§[ç¼è¾å¨åçæ´æ¹]ğ§",	 
	 "ğ§ç©æ³æ¹åé [æ°¸ä¹]ğ§",
	 "ğ§ç¬¬å«æ ¼æ·»å ç¼è¾å¨ğ§",
	 "ğ§èª å® ä¹æ¹ç¼è¾å¨ğ§",
	 "ğ§è½ é åæ¹ç¼è¾å¨ğ§",
	 "   æ·» å  ç© å  ",
	 "   èª å® ä¹ æ·» å  ",
	 "ğ¡è¿ å ä¸» é¡µğ¡",
 }, nil, "ğä½ ç¥éåï¼æå¥½ç¦ğ")
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end 
if SN[4]==true then c10() end
if SN[5]==true then c9() end
if SN[6]==true then c5() end
if SN[7]==true then c7() end
if SN[8]==true then c11() end
if SN[9]==true then c13() end
if SN[10]==true then Main() end end
 FX=0 end
function c13()
as = gg.prompt({"è¾å¥ç©åçä»£ç "}
,{[1]="12005"},{[1]="number"})[1]
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("â ï¸ä¿æç¬¬8æ ¼æ²¡æç©åâ ï¸")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 646713826, ["type"] = 4},
{["lv"] = b,["offset"] = 0x84, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 0x84, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "èªå®ä¹æ·»å "},
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
function c11()
dI=gg.prompt({"",""},{[1] = "ãç©åä»£ç ã15056",[2] = "ãæ°éã200"},{[1] = "number",[2] = "number"})   
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
{["name"] = "æ·»å ç©å"},
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

gg.toast("ç¹å»æ¬æµ®çªæ¢å¤")
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)

qmnb = {
{["memory"] = 4},
{["name"] = "æ·»å ç©å"},
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


function c10()
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "æææ¨¡å¼ååé "},
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
{["name"] = "æææ¨¡å¼ååé å³"},
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
{["name"] = "éå·"},
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
    "ğğ°ç¸è¯æ¡¶ğ°ğ",
    "ğğ°å·æªæ¹åğ°ğ",
    "ğğ°å® ç©çªğ°ğ",
    "ğğ°å¤©æ°æ§å¶å¨ğ°ğ",
    "ğğ°ï¸éåè£ç½®ğ°ğ",    
    "ğğ°ï¸ç©ºå¿æ ğ°ğ",
    "ğğ°èªå®ä¹æ¹åğ°ğ",
    "ğğ°ä¸­å¼æ²åğ°ğ",
    "ğğ°ä¸­å¼æ¡å­ğ°ğ",
    "ğğ°ä¸­å¼é¤æ¡ğ°ğ",
    "ğğ°ä¸­å¼æ´æå°ğ°ğ",   
    "ğğ°ä¸­å¼æ¤å­ğ°ğ",
    "ğğ°ä¸­å¼é©¬æ¡¶ğ°ğ",
    "ğğ°ä¸­å¼æµ´ç¼¸ğ°ğ",
    "ğğ°ä¸­å¼å±é£ğ°ğ",
    "ğğ°ï¸ä¸­å¼ç«ä½ç¯ğ°ğ",    
    "ğğ°ä¸­å¼åç¯ï¸ğ°ğ", 
    "ğğ°ä¸­å¼é¨ï¸ğ°ğ",
    "ğğ°ä¸­å¼çªğ°ğ",
    "ğğ°ï¸ä¸­å¼æ¥¼æ¢¯ğ°ğ",    
    "ğğ°ä¸­å¼å¢ç ğ°ğ", 
   "ğğ°ä¸­å¼å°ç ğ°ğ", 
    "ğğ°ä¸­å¼åç ğ°ğ", 
    "ğğ°ä¸­å¼å´æ ğ°ğ", 
    "ğğç°ä»£åºğğ", 
    "ğğç°ä»£æ²åğğ", 
    "ğğç°ä»£ä¹¦æ¡ğğ", 
    "ğğç°ä»£é¤æ¡ğğ",
    "ğğç°ä»£è¶å ğğ",
    "ğğç°ä»£æ´æå°ğğ",
    "ğğç°ä»£æ¤å­ğğ",
    "ğğç°ä»£é©¬æ¡¶ğğ",
    "ğğç°ä»£æµ´ç¼¸ğğ",
    "ğğç°ä»£è¡£æğğ",
    "ğğç°ä»£æ©±æğğ",
    "ğğç°ä»£åæ ¼æ©±æğğ",
    "ğğç°ä»£ç»åæğğ",
    "ğğç°ä»£å±é£ğğ",
    "ğğç°ä»£ç«ä½ç¯ğğ",
    "ğğç°ä»£åç¯ğğ",
    "ğğç°ä»£å£ç¯ğğ",
    "ğğç°ä»£é¨ğğ",
    "ğğç°ä»£çªğğ",
    "ğğç°ä»£æ¥¼æ¢¯ğğ",
    "ğğç°ä»£å¢ç ğğ",
    "ğğç°ä»£ç ğğ",
    "ğğç°ä»£åç ğğ",
   "ğğç°ä»£å´æ ğğ", 
    "ğâï¸ç«¥è¯åºâï¸ğ",
    "ğâç«¥è¯æ²åï¸âï¸ğ",
    "ğâç«¥è¯ä¹¦æ¡âğ",
    "ğâç«¥è¯æ¡å­ï¸âğ",
    "ğâç«¥è¯è¶å ï¸âğ",
    "ğâï¸ç«¥è¯æ´ææ± âğ",
    "ğâï¸ç«¥è¯æ¤å­âğ",
    "ğâï¸ç«¥è¯é©¬æ¡¶âğ",
    "ğâç«¥è¯æµ´ç¼¸ï¸âğ",
    "ğâç«¥è¯è¡£æï¸âğ",
    "ğâç«¥è¯æ©±æï¸âğ",
    "ğâç«¥è¯åæ ¼æ©±æï¸âğ",
    "ğâç«¥è¯ç®±å­ï¸âğ",
    "ğâç«¥è¯å±é£ï¸âğ",
    "ğâç«¥è¯å°ç¯ï¸âğ",
    "ğâï¸ç«¥è¯åç¯âğ",
    "ğâï¸ç«¥è¯å£ç¯âğ",
    "ğâï¸ç«¥è¯é¨âğ",
    "ğâç«¥è¯çªï¸âğ",
    "ğâï¸ç«¥è¯æ¥¼æ¢¯âğ",
    "ğâç«¥è¯å¢ç ï¸âğ",
    "ğâï¸ç«¥è¯å°ç âğ",
    "ğâï¸ç«¥è¯åç âğ",
    "ğâï¸ç«¥è¯å´æ âğ",
    "ğğç§å¹»åºï¸ğğ",
    "ğğï¸ç§å¹»æ²åğğ",
    "ğğç§å¹»ä¹¦æ¡ğğ",
    "ğğç§å¹»æ¡å­ğğ", 
    "ğğç§å¹»è¶å ğğ",
    "ğğç§å¹»æ´æå°ğğ",
    "ğğç§å¹»æ¤å­ğğ",
    "ğğç§å¹»é©¬æ¡¶ğğ",
    "ğğç§å¹»æµ´ç¼¸ğğ",
    "ğğç§å¹»è¡£æğğ",
    "ğğ¡è¿ å ä¸» é¡µğ¡ğ",},i2,os.date("ğå¼å¯åæå¼ç¼è¾å¨å¨æ¤ç©é£ä¸ªåç±»éæ¾å°åçğ"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"è¾å¥æ¹åä»£ç "},{[1]=4095},{[1]="number"})[1] i1() end
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
{["name"] = "ç¬¬1æ­¥"},
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
{["name"] = "ç©æ³æ¹åé "},
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
{["name"] = "é¦æº¢ç¤é¸¡æ¹ç¼è¾å¨"},
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
as = gg.prompt({"âè¾å¥è¦æ´æ¹ç©åçä»£ç â12005è½éå-12006å·å°é©çª-12008å·å°ç­å­-12550é¦æº¢é¢å-12558é¦æº¢ç¤é¸¡-11001æ¨æ§å¤´"}
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
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
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
gg.toast(qmnbn.."å¼å¯æå\n          å±æ³¨å¥ 1 æ¡æ°æ®")
else 
gg.toast(qmnbn.."å¼å¯å¤±è´¥ï¼è¯·å°è¯éå¯æ¸¸æ")
end
end
end
jiuyan(
{
{4},
{"è½éåæ¹å°å½¢ç¼è¾å¨"}, 
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
gg.toast("â ï¸ä¿æç¬¬8æ ¼æ²¡æç©åâ ï¸")
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
{["name"] = "æ·»å ç¼è¾å¨"},
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
qmnb = { {["memory"] = 4}, {["name"] = "ç¹æ"}, 
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}}
qmxg = { {["value"] = Q1, ["offset"] = 4, ["type"] = 4,["freeze"] = true},}xqmnb(qmnb)end
function QQ3() qmnb = {
{["memory"] = 4},
{["name"] = "å¨ä½"},
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
    "ğğ°ç´«è²æäº®ğ°ğ",
    "ğğ°ç¢§çªç¹æğ°ğ",
    "ğğ°ç»¿è²ç¹æğ°ğ",
    "ğğ°å½©è¹æå°¾ğ°ğ",
    "ğğ°ï¸èè²ç¹æğ°ğ",
    "ğğ°ï¸è±å°æ¥¼ç¹æğ°ğ",
    "ğğ°ï¸å°å¬ä¸»ç¹æğ°ğ",
    "ğğ°ï¸å¶èèç¹æğ°ğ",
    "ğğ°è·³èå¨ä½ğ°ğ",
    "ğğ°æ±åå¨ä½ğ°ğ",
    "ğğ°ç¡è§å¨ä½ğ°ğ",
    "ğğ°ï¸æ¬¢å¼å¨ä½ğ°ğ",    
    "ğğ°æ¼æµ®å¨ä½ï¸ğ°ğ", 
    "ğğ°æ¸ç©ºæ°å¨ä½ï¸ğ°ğ",
    "ğğ°æ é¼»å­å¨ä½ğ°ğ",
    "ğğ°ï¸å®³ç¾å¨ä½ğ°ğ",    
    "ğğ°æ­»äº¡å¨ä½ï¸ğ°ğ", 
   "ğğ°æ¢å¤å¨ä½ï¸ç¹æğ°ğ", 
    "ğğ¡è¿ å ä¸» é¡µğ¡ğ",},2018,os.date("ğæçäººçæåä¸»ï¼ä¸éè¦å«äººçææğ"))
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
	 "ğå­ å¼¹ ç©¿ å¢(æ¿ä¸»)ğ",
	 "ğçå»æªæ ååº§è¿åğ",
	 "ğææµ·çå»å°å¾è¿åğ",
	 "ğä¸ è§ é è§ğ",
	 "ğè¶ è¿ æ» å»ğ",
	 "ğäºº ç© ä¸ è²ğ",
	 "ğå¤© ç©º å é»ğ",
	 "ğé å® é« åº¦ğ",
	 "ğé ç©º æ äººğ",
	 "ğæ¹ å æ°ğ",
	 "ğæª å¼º åğ",
	 "ğ¡è¿ å ä¸» é¡µğ¡",
 }, nil, "ğå«äººè¯´çä»ä¹é½ä¸è¦ç,åªè¦èªå·±ç¸ä¿¡,å°±ä¸å®è¦æåğ")
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
function d11()
pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627249087.lua").content))
gg.clearResults()
end
function d10()
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğæ¹çº¢éğ","ğï¸æ¹èéğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
gg.clearResults()
a = gg.prompt({"è¯·è¾å¥çº¢éåæ°"}
,{[1]=0},{[1]="number"})[1]
b = gg.prompt({"è¾å¥ä½ è¦æ¹çåæ°"}
,{[1]=520},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "æ¹åæ°"},
{["value"] = -1038391570, ["type"] = 4},
{["lv"] = a, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
gg.clearResults()
a = gg.prompt({"è¯·è¾å¥èéåæ°"}
,{[1]=0},{[1]="number"})[1]
b = gg.prompt({"è¾å¥ä½ è¦æ¹çåæ°"}
,{[1]=520},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "æ¹åæ°"},
{["value"] = -1038391570, ["type"] = 4},
{["lv"] = a, ["offset"] = 38, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 38, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function d9()
qmnb = {
{["memory"] = 4},
{["name"] = "éç©ºæäºº"},
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
{["name"] = "éå®é«åº¦"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 800, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("å ä¸è¶è¿æ»å»ç´æ¥ä¹±æ")
end

function d7() 
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "å¤©ç©ºåé»"},
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
{["name"] = "å¤©ç©ºåé»"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "äººç©ä¸è²"},
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
{["name"] = "äººç©ä¸è²"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "å­å¼¹ç©¿å¢"},
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
{["name"] = "å­å¼¹ç©¿å¢"},
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
{["name"] = "çå»æª"},
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
{["name"] = "çå»æª"},
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
gg.toast("è¯·éæ©å¼å³")
F = gg.alert("ğ°è¯·éæ©ï½å¼ å³ï½ğ°","ğå¼ğ","ğï¸å³ğï¸ï¸")
 if  F~=1 and F~=2 then
 gg.toast("ä½ æªéæ©å¼å³é»è®¤åæ¶")
    gg.toast("ğä½ æªéæ©ï½å¼ å³ï½")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 32768},
{["name"] = "ä¸è§éè§"},
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
{["name"] = "ä¸è§éè§"},
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
{["name"] = "è¶è¿æ»å»"},
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
         
 -- []æµè¯
 
 
 --]]
     
]=]
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"è¯·åæç´¢æ­æ²",}
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
g.sel = {"æé³","50"}
end
end
bei()
------
--æç´¢æ­æ²
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--æ­è¯

--æ­æ¾é³ä¹
function play(id,name)
gg.toast("æ­£å¨æ­æ¾é³ä¹ï¼"..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--åæ­¢æ­æ¾
function stop()
gg.toast("æ­£å¨åæ­¢é³ä¹")
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
sn=gg.choice({"æ­æ¾"},nil,"æ­æ²ï¼"..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- å¹éJson Keyçæ­£åè¡¨è¾¾å¼
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
ts="ã"..go1.."ãæ¾å°"..zd.."é¦æ­æ²ï¼å½åæ¾ç¤º"..go3.."é¦"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=ç­æ­æ¦&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--ä¸»é¡µ

function Main6()  SN = gg.choice({
   "ğğ°æç´¢æ­æ²ğğ°ğ",
   "ğğ°æç´¢åè¡¨â¨ğ°ğ",
   "ğğ°æ­æ¾ç­æ­â¶ï¸ğ°ğ",
   "ğğ°ï¸åæ­¢æ­æ¾â¸ğ°ğ",
   "ğğ°ï¸æ¸é¤å»ç»ğ§ğ°ğ",
   "ğğ°ï¸è¿åä¸»é¡µï¸âğ°ğ",
},2018,os.date("ğå½åæ¶é´%Yå¹´%mæ%dæ¥%Hæ¶%Må%Sç§ğ"))
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
"è¾å¥è¦æç´¢çæ­æ²\nå¯å ä¸æ­æåå­",
"è®¾ç½®æ¾ç¤ºæ°é(æ°å­)",
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
gg.alert("è®¿é®ç½ç»å¼å¸¸ï¼éè¯¯ä»£ç ï¼\n\n"..jg.code)
end
if not pcall(inspect) then print("ç½ç»å¼å¸¸ï¼è¯·åè¿æ¥ä¸ç½ç»") os.exit() end
end
XGCK=-1
end
--[[
st=gg.makeRequest("http://www.iyuji.cn/iyuji/s/Vld0dlBoaUdKL3RHbldRMVMvVGlEQT09/1561201677177213").content
_g_g=st:match("ggã(.-)ã")
jq=st:match("qunã(.-)ã")
gg.alert(_g_g)
if jq~="" then jq=string.gsub(jq,"amp;","") gg.alert("æ¬¢è¿å å¥ä¸æ¹äº¤æµç¾¤ï¼ç¾¤èå·ç ï¼\nè¯¥ç¾¤ä¸ºææ¯äº¤æµç¾¤ï¼æ¬¢è¿å¤§å®¶ä¸èµ·äº¤æµè®¨è®º","ç¹å»å ç¾¤") gg.goURL(jq) 
end
--]]

function Exit()
print("åªè¦ææ¢¦å¿é¡»æå") 
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end
if kaiguan =="å³" then 
gg.toast("æå¡å¨å·²å³é­")
sj= os.date("%Y%m%d%H%M%S")-xc    gg.alert("æ¬æ¬¡è¾å©è¿è¡ä½¿ç¨æ¶é¿:"..sj.."ç§") os.exit()
else
gg.toast("èæ¬æ´æ°ä¸­...")
sj= os.date("%Y%m%d%H%M%S")-xc    gg.alert("æ¬æ¬¡è¾å©è¿è¡ä½¿ç¨æ¶é¿:"..sj.."ç§") os.exit()
end
function Exit()
print("æ¢¦çä¸çæ°¸è¿é½æ¯æ¢¦,è¦æ³ä½éªçå®å°±è¯¥èªå·±æ¼")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = 'é¾å¥ç±ä½ ä»¬'
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
