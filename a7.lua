wljbht = "https://api.iflynote.com/notes/share/doc/shareFileDetail?fid=1uUSi"
  BX = gg.makeRequest(wljbht).content 
  sjb='"'
  tpnb=","
    qwtjqdcs = BX:match("pv"..sjb..":(.-)"..tpnb..""..sjb.."words")
    wocnbb = BX:match("（公告）(.-)（公告）")
    nmb = BX:match("最后更新时间 (.-) 最后更新时间")
    gg.alert("苏维埃辅助总共被启动：" .. qwtjqdcs .. "次")
--天跑/苏维埃 配置区，辅助开启
     function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n 共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
 function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end 
 function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败ༀ') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '情书丢失ༀ') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '封情书') else gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败，情书不见了ༀ') end end end end --[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end --[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "丢失情书") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功接受情书" .. xgsl .. "封") else gg.toast(qmnb[2]["name"] .. "爱失败了") end end end end
function BX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启成功，注入3条数据!")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 3 条数据")else gg.toast(qmnbn.."开启失败，共注入3条数据!8")end end end

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
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

-----------防破区-----------
--[[防 LOAD]]for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end
--[[防  -LOG]]timeo=os.clock() logo=debug.traceback(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logt=debug.getinfo(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logs=load('return gg.searchNumber(((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(999)):rep(999))') logf=debug.getinfo(logs).func() times=os.clock() if times-timeo>0.5 or times-timeo<0.01 then  os.exit()  while true do  end end
--[[防反编译]]Supermem = {} local Y = Y for i, v in ipairs(Supermem) do  if ipairs(M .. v .. "防反编译") == 1 then break end end g={} for index,value in pairs(g) do return value end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end  local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local temp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(temp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end if ends==0 and #temp~=0 then table.insert(result,temp) temp={} end else if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end
-----------------防破区------------------------

QQ=gg.alert([[
作者天跑禁止二改，倒卖，我的目的是为了做击败迷你，作者QQ:1764875582，迅速泛滥❗
  ]],'开启','','复制QQ')
if QQ == 3 then gg.copyText("1764875582)") gg.toast("√复制完成√") end

QQ=gg.alert([[
作者天跑禁止二改，倒卖❗❗
  ]],'开启','','复制群号️')
if QQ == 3 then gg.copyText("561445774") gg.toast("√复制完成√") end

function CSH()
BX(
{
{4},
{"初始化防闪退"}, 
{16437843, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{1637777, 0, gg.TYPE_DWORD, false},
}
)
gg.clearResults()
gg.toast("检索数据中..............")
gg.sleep(690)
BX(
{
{4},
{"初始化修改帧数去除验证"}, 
{124873485, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{17555548, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()	 
end 


a = io.open("/sdcard/苏维埃.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/苏维埃.txt"):read("*a") zh = a:match("账号(.-)账号") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号","开启初始化（必开）"},{[1] = zh,[2] = true},{[1] = "text",[2] = "checkbox"}) if dI[2] ==true then  CSH() end   zh = dI[1]  io.open("/sdcard/苏维埃.txt", "w") io.open("/sdcard/苏维埃.txt", "w"):write("账号" .. zh .. "账号"):close()
gg.toast("当前迷你号:"..zh.."，一起去旅游了，点击辅助悬浮窗继续")

APP=gg.getTargetInfo()
function Main0()
menu1 = gg.choice({
'炸图区',
'恶心区',
'PVP区',
'帮助区',
'音乐区',
'切换区',
'设置区',
'退出',
}, nil, "御神阁群号:982461821\n当前迷你号:"..zh.."\n当前应用:["..APP.activities[1].label.."]  版本:["..APP.versionName.."]\n苏维埃炸图辅助总共启动: ".. qwtjqdcs .. "次")

if menu1 == 1 then A() end
if menu1 == 2 then B() end
if menu1 == 3 then E() end
if menu1 == 4 then C() end
if menu1 == 5 then YYLJNB() end
if menu1 == 6 then Z() end
if menu1 == 7 then FZSZ() end
if menu1 == 8 then Exit() end
XGCK=0
end

function A()
menu1 = gg.choice({
'生存炸图',
'创造炸图',
'云服炸图',
'next恶心区',
'返回主页',
}, nil, "奥利给")

if menu1 == 1 then SCZT() end
if menu1 == 2 then CZZT() end
if menu1 == 3 then YFZT() end
if menu1 == 4 then B() end
if menu1 == 6 then Main0() end
XGCK=0
end



function CZZT()
SN = gg.multiChoice({
     "改模式",
	 "短剑改熔岩黑龙球",
	 "突刺长枪改毁图生物（配合高频发射器使用）",
	 "石矛改黑龙火球",
	 "牛蛋改岩浆（无视禁止）",
	 "木棒改物理方块(利用变速使地图崩溃)",
	 "石斧改火🔥",
	 "开始物品栏改炸图套装",
	 "返回主页",
}, nil, "咳咳")
if SN[1]==true then
	 A1()
end
if SN[2]==true then
	 A2()
end
if SN[3]==true then
  A3()
end
if SN[4]==true then
	 A4()
end
if SN[5]==true then
	 A5()
end
if SN[6]==true then
  A6()
end
if SN[7]== true then
  A7()
end
if SN[8]== true then
  A8()
end
if SN[9]== true then
  A()
end
FX1=0
end

function SCZT()
SN = gg.multiChoice({
     "改模式",
	 "第八格编辑器",
	 "物品改编辑器",
	 "石矛改黑龙火球",
	 "牛蛋改岩浆（无视禁止）",
	 "木棒改物理方块(利用变速使地图崩溃)",
	 "石斧改火🔥",
	 "开始物品栏改炸图套装",
	 "返回主页",
}, nil, "咳咳")
if SN[1]==true then
	 zt1()
end
if SN[2]==true then
	 zt2()
end
if SN[3]==true then
  zt3()
end
if SN[4]==true then
	 zt4()
end
if SN[5]==true then
	 zt5()
end
if SN[6]==true then
  zt6()
end
if SN[7]== true then
  zt7()
end
if SN[8]== true then
  zt8()
end
if SN[9]== true then
  A()
end
FX1=0
end








function FZSZ()
  SN = gg.choice({
    "更改迷你号",
    "冻结清理",
    "结束目标进程",
    "问题反馈、留言",
  },nil,os.date("当前时间%Y年%m月%d日%H时%M分%S秒"))
  if SN==1 then mnh() end
  if SN==2 then
    gg.clearList()
    gg.toast("清理完成！")
  end
  if SN==3 then gg.processKill() end
  if SN==4 then fkly() end
  FX1=0
end
function fkly()
gg.copyText("bbs.madakeji.top")
gg.toast("复制成功，去浏览器粘贴吧")
end

function mnh()
a = io.open("/sdcard/苏维埃.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/苏维埃.txt"):read("*a") zh = a:match("账号(.-)账号") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号","开启初始化（必开）"},{[1] = zh,[2] = true},{[1] = "text",[2] = "checkbox"}) if dI[2] ==true then  CSH() end   zh = dI[1]  io.open("/sdcard/苏维埃.txt", "w") io.open("/sdcard/苏维埃.txt", "w"):write("账号" .. zh .. "账号"):close()
gg.toast("当修改的迷你号为:"..zh.."，改好就去炸图吧")
end


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
     Main0()
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
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("206", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("206",DOWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("15525", DOWORD)
gg.toast("炸图4件套1开启成功")
gg.clearResults()
A9()
 end
end

function A9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("207", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("207",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("10500", DWORD)
gg.toast("炸图4件套2开启成功")
gg.clearResults()
A10()
 end
end

function A10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("104", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("104",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1056", DWORD)
gg.toast("炸图4件套3开启成功")
gg.clearResults()
A11()
 end
end

function A11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("123", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("123",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("13502", DWORD)
gg.toast("炸图4件套4开启成功")
gg.clearResults()
Main0()
 end
end


function zt1()
mn2 = gg.prompt({"输入模式代码，0生存，1创造，2极限生存，3创造生存，4玩法创造，5玩法生存:"},
{[1]=4--[[编辑框文字]]},
{[1]="number"})[1]
gg.setRanges(4)
local dataType = 32
local tb1 = {{4294973296, 0},}
local tb2 = {{mn2, -0xF8,true}, }
SearchWrite(tb1, tb2,  dataType)
end

function zt2()  
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
{["lv"] = 1006, ["offset"] = -0xD0, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x1A0, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x270, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x340, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x410, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x4E0, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x5B0, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function zt3()
as = gg.prompt({"→输入要更改物品的代码←12005能量剑-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头"}
,{[1]="12005"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end

function zt4()  
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
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
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
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






































while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main0()  end  end