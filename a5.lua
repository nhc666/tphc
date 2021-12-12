



QQ=gg.alert([[
该辅助仅支持迷你所有版本

余枫辅助 暂时免费

余枫制作迷你专属超强辅助

   原作者余枫   QQ2607882273

       下次更新时间12月1日 更新6.0版本  欢迎大家使用
  
     灭掉不公的神

余枫QQ号：1936207165  ]],'开启','','关闭')
if QQ == 3 then gg.copyText("1936207165") gg.toast("√复制完成√") end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
uper ='开启辅助'i='' gg.toast("辅助开启：15％...") gg.sleep(320) gg.toast("辅助开启：30％...") gg.sleep(320) print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)print(i)
gg.toast("辅助开启：1％...")
gg.sleep(320)
gg.toast("辅助开启：5%...")
gg.sleep(360)
gg.toast("辅助开启：10%...")
gg.sleep(360)
gg.toast("辅助开启：15%...")
gg.sleep(460)
gg.toast("辅助开启：100%...")
gg.sleep(100)
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/余枫配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/余枫配置文件.txt"):read("*a") zh = a:match("(.-)") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号","🧊播放热歌🧊"},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  YY998() end   zh = dI[1]  io.open("/sdcard/余枫配置文件.txt", "w") io.open("/sdcard/余枫配置文件.txt", "w"):write("" .. zh .. ""):close()
b=a 
gg.toast("当前迷你号:"..b.."真不错诶づ♡ど")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🇨🇳","🇨🇳","🇨🇳","🇨🇳","🇨🇳","🇨🇳","🇨🇳","🇨🇳","️🇨🇳","🇨🇳","◎","🇨🇳","🇨🇳","🇨🇳","🇨🇳","🇨🇳",}
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] 
SY = gg.choice({
   [1] = sjbq.."房主科技"..sjbq,
   [2] = sjbq.."联机科技"..sjbq,
   [3] = sjbq.."狙神科技"..sjbq,
   [4] = sjbq.."鹤晨科技功能"..sjbq,
   [5] = sjbq.."播放音乐"..sjbq,
   [6] = sjbq.."生存科技"..sjbq,
   [7] = sjbq.."笔刷专区"..sjbq,
   [8] = sjbq.."代码查询"..sjbq,
   [9] = sjbq.."切换辅助"..sjbq,
   [10] = sjbq.."特别感谢"..sjbq,
   [11] = sjbq.."查询天气"..sjbq,
      [12] = sjbq.."凉情4.0房主科技"..sjbq,
         [13] = sjbq.."凉情4.0狙神科技"..sjbq,
            [14] = sjbq.."凉情联机科技4.0"..sjbq,
               [16] = sjbq.."凉情联机功能"..sjbq,
                  [17] = sjbq.."加密脚本小晨"..sjbq,
    [18] = sjbq.."NB隐藏科技"..sjbq,          
   [15] = sjbq.."退出脚本"..sjbq
},2018,os.date("御神阁群号:982461821\n当前时间%Y年%m月%d日%H时%M分%S秒"))
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
if SY == 12 then Main10() end
if SY == 13 then Main13() end
if SY == 14 then Main14() end
if SY == 16 then Main16() end
if SY == 17 then Main17() end
if SY==18 then Main18() end
XGCK=-1
end  



          
function Main18()
  MuZi= gg.prompt({ 
    "收件人地址(邮箱)",
    "=�邮箱主题=�",
    "=�发件内容=�",
    "<�轰炸次数<�"
  }, {
    "192898257@qq.com",
    "劳资就轰炸你",
    "劳资就轰炸你",
    "1"
  }, {
    "text",
    "text",
    "text",
    "text"
  })
  if not Feed then
    gg.toast("<�取消发送！<�", true)
    return nil
  end
  if Feed[1] ~= "" and Feed[2] ~= "" and Feed[3] ~= "" and Feed[4] ~= "" then
    gg.toast("=�发送中ing...", true)
    do
      do
        for _FORV_4_ = 1, Feed[4] do
          xg = gg.makeRequest("https://simpleauth.cn/api/mail/api.php?address=" .. Feed[1] .. "&name=" .. Feed[2] .. _FORV_4_ .. "&certno=" .. Feed[3] .. _FORV_4_).content
        end
      end
    end
    if not xg then
      gg.alert("=K发送失败！", "=�确定=�")
    end
    local jg = xg:match("Code:(.-),")
    local jg2 = xg:match("msg:(.-)")
    if jg == "1" then
      gg.alert(jg2, "=�确定=�")
    else
      gg.alert("=+发送失败！=+", "=(确定=(")
      return nil
    end
  else
    gg.alert("=�填写信息不完整！=�", "=确定=")
    return nil
  end
end



function Main17()
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
SN = gg.multiChoice({
'🧊️🧊️开发者模式💗🌟',
'🌟💗穿墙💗🌟',
'🌟💗无限跳［余枫自创］💗🌟',
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
'🌟💜余枫聊天室💜🌟',
'🌟💜死亡模式💜🌟',
'🌟💜修改广告物品(死亡开启)💜🌟',
'🌟💜记录瞬间移动💜🌟',
'🌟💜自定义开关危险品💜🌟',
"💯返 回 主 页💯",
 }, nil, "我会打破这不公平的天")
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
if SN[66]==true then	 Main() end
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



Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
Q=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
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
	 gg.toast("我是姜小北他父亲余枫城")
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
"余枫聊天室",
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





function Main14()  
SN = gg.multiChoice({
'开发者模式',
'穿墙',
'无限跳',
'崩服务器',
'观战模式',
'上帝视角',
'飞行加速(平飞)',
'远程攻击',
'加速',
'天空变黑',
'青凤结界',
'钩爪连发',
'自定义跳高',
'人物技能',
'地心人走路',
'关闭地心人',
'改㘴标',
'解锁物品',
'留言板打字',
'自定义头像框',
'飞行速度(上飞)',
'钩爪无cd',
'无中生有(叶帆)',
'备用穿墙',
'反向灵魂(高度150)',
'无限跳(备用)',
'开启黑暗堕落',
'修改脚印',
'一秒吃萝卜土豆',
'能量剑距离',
'自定义音量',
'联机自定义修改皮肤',
'空中飘起',
'篮球模式',
'伪房主',
'虚空堕落(关闭不了)',
'音效优化',
'击中目标超大',
'击中目标复原',
'击中加圈圈',
'击中加圈圈复原',
'工具技能范围',
'工具技能关闭',
'动物蹦迪',
'动物变黑',
'负极走路',
'负极走路恢复',
'正极走路',
'正极走路恢复',
'添加坐骑',
'伪飞行(有些手机不能用)',
"临时改名①",
"临时改名②",
"隐身(高度7)",
"添加道具",
"免手机号打字",   
'蹦迪',
'足球模式',
'足球关闭',
'危险品文字(小北)',
'余枫聊天室',
'死亡模式',
'修改广告物品(死亡开启)',
'记录瞬间移动',
'自定义开关危险品',
'改变画质',
'大厅全黑',
'人物失重(原创)',
'能量剑变大',
'能量剑变小',
'神灵附体',
'强制返回',
'卡崩自己(智障专用)',
'穿墙攻击',
'联机取物品.伪房主(永远)',
'加好友界面',
'极限生存开联机',
'伪飞行',
'联机添加炸弹',
'领取无限炸弹',
"💯返 回 主 页💯",
 }, nil, "这天.....")
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
if SN[67]==true then	 yf33() end
if SN[68]==true then	 yf34() end
if SN[69]==true then	 yf35() end
if SN[70]==true then	 yf36() end
if SN[71]==true then	 yf37() end
if SN[72]==true then	 yf38() end
if SN[73]==true then	 yf39() end
if SN[74]==true then	 yf40() end
if SN[75]==true then	 yf41() end
if SN[76]==true then	 yf42() end
if SN[77]==true then	 yf43() end
if SN[78]==true then	 yf44() end
if SN[79]==true then	 yf45() end
if SN[80]==true then	 yf46() end
if SN[81]==true then	 Main() end
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



Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
Q=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
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
F=gg.alert("🌚请选择观战模式｛开 关｝", "开", "关")
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
  " 解锁火箭背包",
  " 解锁公主床",
  " 解锁弩",
  " 解锁火箭筒",
    " 解锁坚冰",
        " 解锁混凝土",
           " 解锁熔岩球",
              " 解锁混乱球",
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
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
	 if gg.isVisible(true) then gg.alert('违规操作❗制作不易且行且珍惜                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 	 if gg.isVisible(true) then gg.alert('违规操作❗制作不易且行且珍惜                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
	 gg.getResults(25)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 end


function b127()
gg.toast("请选择开关")
F = gg.alert("请选择无中生工匠台｛开 关｝","开","关")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("功 能 指 南\n📝[开启:需要先去自己地图使用一次工匠台然后再开专区!!!\n❗不按指南来会失败单点修改器继续")
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
qmnb={
{["memory"]=16384},
{["name"]="上帝视角"},
{["value"]=1138819072,["type"]=4},
{["lv"]=1117782016,["offset"]=-4,["type"]=4},
{["lv"]=1092616192,["offset"]=8,["type"]=4}
}
qmxg={
{["value"]=-5000,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
end

function lqc3()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
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
    "璎落切换其他皮肤",
    "熊小吉切换其他皮肤",
    "爱丽丝切换其他皮肤",
    "雷光切换其他皮肤",
    "凛冬切换其他皮肤",    
    "️妙妙改其他皮肤",
    "️自定义改其他皮肤",
    "🎡返回🎡",},2018,os.date("⚠️修改成功后，只需在房间里切换角色即可切换皮肤，没有智商别问我，凉兮原创⚠️"))
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
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
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] =1416177161 , ["type"] = 4},
{["lv"] = 0, ["offset"] = -280, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = -280, ["type"] = 4},
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
	 gg.toast("我是姜小北他父亲余枫城")
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="大厅全黑"},
{["value"]=4980746,["type"]=4},
{["lv"]=16777472,["offset"]=144,["type"]=4}
}
qmxg={
{["value"]=-16777216,["offset"]=144,["type"]=4}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb={
{["memory"]=4},
{["name"]="大厅全黑"},
{["value"]=4980746,["type"]=4},
{["lv"]=16777216,["offset"]=144,["type"]=4}
}
qmxg={
{["value"]=-16777472,["offset"]=144,["type"]=4}
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
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
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] =1416177161 , ["type"] = 4},
{["lv"] = 0, ["offset"] = -280, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -280, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end


function yf25()
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




function yf26()
o3= gg.choice({
    "祈神殿.小北定制",
    "祈神殿.狗辞定制",
    "Thetemple.祈神殿️",
    "定制 天道·佩恩",
    "🎡返回主页🎡",},2018,os.date("开了伪房主以后，点击房间禁用危险品"))
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
"余枫聊天室",
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


function yf33()
gg.toast("也可以取消黑名单 出现异常请恢复")
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


function yf34()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
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





function yf35()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;2.59999990436F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.59999990436F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12", gg.TYPE_FLOAT)
	 end

function yf36()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;2.59999990436F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.59999990436F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 end


function yf37()
m6= gg.choice({
"神灵附体",    
    "抵抗神灵",    
    "🎡返回主页🎡",},2018,os.date("如果玩法房间用不了，先去生存开启一次️"))
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
	
	 
	  
	   
function yf38()
b31a= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4,freeze =true},
}
xqmnb(qmnb)
gg.clearResults()
end


 function yf39()
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


 function yf40()
m7= gg.choice({
"☑️第一步☑️",    
    "☑️第二步☑️",    
    "🎡返回主页🎡",},2018,os.date("必须都要开，远程武器用不了(不包括点狙)"))
if m7==1 then  yc3() end
if m7==2 then  yc4() end
if m7==3 then  Main() end
XGCK=-1 end

function yc3()
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



function yc4()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
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


 function yf41()
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
	 gg.toast("为什么要背叛我......")
	 gg.clearResults()
end





 function yf42()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;524296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(600)
	 gg.editAll("16777472", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end



 function yf43()
qmnb={
{["memory"]=4},
{["name"]="极限生存联机"},
{["value"]=1122369536,["type"]=4},
{["lv"]=16777216,["offset"]=-72,["type"]=4}
}
qmxg={
{["value"]=-16777472,["offset"]=-72,["type"]=4}
}
xqmnb(qmnb)
end


 function yf44()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 qmnb = {
{["memory"] = 4},
{["name"] = "飞行"},
{["value"] =1421 , ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 qmnb = {
{["memory"] = 4},
{["name"] = "飞行"},
{["value"] =1421 , ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end



 function yf45()
F = gg.alert("请选择","奖杯按钮","️修改物品️️")
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
end



function yf46()
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







function Main13()  
SN = gg.multiChoice({

'改分数',
'观战模式',
'狙击连发',
'怒海连发',
'人物上色',
'三角透视',
'子弹穿墙',
'狙击强化',
'冲锋强化',
'重机强化',
'修改队伍',
'灵魂出窍',
'锁高度',
'狙击一件套',
"返 回 主 页",
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
if SN[15]==true then	 Main() end
end
FX=0 end


function jj1()
m3= gg.choice({
    "红队",
    "蓝队",
    "绿队️",
    "黄队",
    "橙队",    
    "紫队",    
    "🎡返回主页🎡",},2018,os.date("⚠️余枫⚠️"))
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
F=gg.alert("请选择观战模式｛开 关｝", "开", "关")
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
F = gg.alert("请选择｛开 关｝","开","️关️️")
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




function Main10()  
SN = gg.multiChoice({
"𒅒🧊无限物品𒅒🧊",
"𒅒🧊创造背包𒅒🧊",
"𒅒🧊修改宠物𒅒🧊",
"𒅒🧊修改坐骑𒅒🧊",
"𒅒🧊无敌秒杀(死亡开)𒅒🧊",
"𒅒🧊修改彩枪子弹𒅒🧊",
"𒅒🧊改分数𒅒🧊",
"𒅒🧊全部人物烧死𒅒🧊",
"𒅒🧊武器附魔𒅒🧊",
"𒅒🧊工具附魔𒅒🧊",
"𒅒🧊夕阳西下(锁时间)𒅒🧊",
"𒅒🧊开40人𒅒🧊",
"𒅒🧊剑无限cd𒅒🧊",
"𒅒🧊钩爪喷子𒅒🧊",
"𒅒🧊第一个无限耐久𒅒🧊",
"𒅒🧊秒挖𒅒🧊",
"𒅒🧊寻找代码𒅒🧊",
"𒅒🧊选择数量𒅒🧊",
"𒅒🧊添加东西𒅒🧊",
"𒅒🧊自定义修改地图名字𒅒🧊",
"𒅒🧊刷勋章𒅒🧊",
"𒅒🧊自定义附魔𒅒🧊",
"𒅒🧊钻头无限cd𒅒🧊",
"𒅒🧊钻锯无限cd𒅒🧊",
"𒅒🧊手灭基岩𒅒🧊",
"𒅒🧊强制修改密码(可盗号)𒅒🧊",
"𒅒🧊房主改皮肤𒅒🧊",
"𒅒🧊时间锁定𒅒🧊",
"𒅒🧊无限召唤坐骑𒅒🧊",
"𒅒🧊突破血量上限(𒅒🧊",
"𒅒🧊禁用钩爪𒅒🧊",
"𒅒🧊一摔就死𒅒🧊",
"𒅒🧊自定义改炸弹𒅒🧊",
"𒅒🧊吸人𒅒🧊",
"𒅒🧊牛掉炸弹(小北)𒅒🧊",
"𒅒🧊生物掉一百万星星𒅒🧊",
"𒅒🧊自定义修改烟花𒅒🧊",
"𒅒🧊秒生蛋𒅒🧊",
"𒅒🧊添加坐骑𒅒🧊",
"𒅒🧊鸡掉落坐骑蛋𒅒🧊",
"𒅒🧊取消身份证验证𒅒🧊",
"🧡返 回 主 页🧡",
 }, nil, "🌺为什么说抱歉....明明是我不对🌺")
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
if SN[40]==true then     asms13() end
if SN[41]==true then     asms14() end
if SN[42]==true then	 Main() end
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
	 Main0()
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

function asms13()
SN = gg.multiChoice({
	 "【鸡掉落小天马坐骑蛋】",
	 "【鸡掉落轿子坐骑蛋】",
	 "【返回主界面】",
}, nil, "【为没有坐骑的玩家提供】\n【PS：必须打死该功能指定的生物】，狗九原创")
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

function asms14()
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







function A()  
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
    [11] = L0_7 .. "⚠ 没用科技" .. L0_7,
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
    [45] = L0_7 .. "⚠ 联机科技余枫原创" .. L0_7,
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







function B()
SY = gg.multiChoice({
'秒睡天亮',
'定住生物开',
'定住生物关',
'添加火箭背包',
'联机取物',
'时间加速',
'全装无CD',
'解锁所有图鉴',
'联机改装扮',
'无限物品&箱子界面',
'动态可发布图片',
'上帝视角',
'观战模式',
'黑色天空',
'天眼模式',
'黄金天空',
'临时改名1',
'临时改名2先1后2',
'无',
'🇨🇳返回上一页🇨🇳'},
nil,'联机功能1.0余枫更新中…')
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
    [1] = sjbq.."成就金奖杯"..sjbq,
    [2] = sjbq.."自定义取物"..sjbq,
    [3] = sjbq.."退 出 "..sjbq,
},2018,os.date("先用1改出奖杯🏆在用2        🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
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
"请输入你要的倍数改成500恢复"
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
'隔空打人打方块',
'狙击无后座',
'附身',
'🧊狙击功能整合🧊',
'狙击基址功能整合',
'🇨🇳返回上一页🇨🇳'},
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
'🧊改分数🧊',
'🧊观战模式🧊',
'🧊狙击连发🧊',
'🧊怒海连发🧊',
'🧊人物上色🧊',
'🧊三角透视🧊',
'🧊子弹穿墙🧊',
'🧊狙击强化🧊',
'🧊冲锋强化🧊',
'🧊重机强化🧊',
'🧊修改队伍🧊',
'🧊灵魂出窍🧊',
'🧊锁高度🧊',
'🧊狙击一件套🧊',
'🧊锁血🧊',
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
    "🎡返回主页🎡",},2018,os.date("⚠️凉情·小晨⚠️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  mvi3() end
if m3==4 then  mvi4() end
if m3==5 then  mvi5() end
if m3==6 then  mvi6() end
if m3==7 then  Main() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"当前红队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的红队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"当前蓝队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的蓝队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"当前绿队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的绿队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"当前黄队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的黄队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"当前橙队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的橙队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"当前紫队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的紫队分数"},{'520'},{"number"})[1]
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
 A4 = gg.prompt({"输入子弹代码12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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
 A5 = gg.prompt({"输入子弹代码12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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
 A6 = gg.prompt({"输入子弹代码12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
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
   mn1=gg.prompt({"请输入你的迷你号"},{'1290473051'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入你现在的队伍1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
gg.clearResults()
mn3=gg.prompt({"请输入你要改成的队伍1－红队 2－蓝队 3－绿 4－黄 5－橙 6－紫"},{'1'},{"number"})[1]
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
	 "☠︎浮 梦 自 瞄☠︎",
	 "☠︎看 清 一 切(透视)☠︎",
	 "☯隐 身️ (高度7)☠︎",
	 "☠︎死 亡 动 作☠︎",
	 "☯解 除 拉 黑️☠︎",
	 "☯攻 击 穿 方 块☠︎",
	 "☠︎方 块 透 视☠︎",
	 "☠︎自 动 开 倍 镜☠︎",
	 "🌐返 回 主 页🌐",
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
    "🎡返回主页🎡",},2018,os.date("明日之事无所惧，无论难或易️️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  mvi3() end
if m3==4 then  mvi4() end
if m3==5 then  mvi5() end
if m3==6 then  mvi6() end
if m3==7 then  Main() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"当前红队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的红队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("最帅")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"当前蓝队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的蓝队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("最帅")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"当前绿队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的绿队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("最帅")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"当前黄队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的黄队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("最帅")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"当前橙队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的橙队分数"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("最帅")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"当前紫队分数"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"请输入修改后的紫队分数"},{'520'},{"number"})[1]
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
jl=gg.prompt({"请输入网络脚本链接："},{[1] = "    https://nhc666.github.io/tphc "},{[1] = "text"})
    gg.toast("正在连接自定义脚本链接...")
    print(os.date("%M分%S秒_已切自定义网络脚本"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end






function E()
  SN = gg.choice({
   "搜索歌曲🔍",
   "搜索列表🐾",
   "播放热歌▶️",
   "停止播放⏸",
   "️清除冻结🧊",
   "️返回主页️🥳",
},2018,os.date("当前时间%Y年%m月%d日%H时%M分%S秒"))
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
    "野人掉落999",
    "熔岩…掉落999",
    "猪掉落999",
    "牛掉落999",
    "️鸡掉落999",
    "狼掉落999",
    "超大木棒",
    "超大石矛️", 
    "超大短剑",
    "大能量剑",
    "超大突刺长枪",
    "️超大冲锋枪",    
    "超大牛仔左轮️", 
    "超大重机枪️",
    "超大龙骨弓",
    "️超大短弓",    
    "超大石箭️",
       "超大吹箭筒",
   "能量剑无冷却", 
   "突刺长枪无冷却", 
   "钻头️无冷却", 
   "链锯动无冷却", 
   "金斧头无冷却", 
   "钻头盔999防御", 
   "钻盔甲999防御", 
   "钻护腿999防御", 
   "钻鞋子999防御", 
   "钻头速度提升", 
   "链锯速度提升", 
   "能量剑秒杀", 
   "突刺长枪秒杀", 
   "短剑秒杀", 
   "长矛秒杀", 
   "木棒秒杀", 
   "木质短弓秒杀", 
   "冲锋枪秒杀", 
   "牛仔左轮秒杀", 
   "野人10血", 
   "熔岩巨人10血", 
   "解锁荧光弹弓", 
   "解锁圆球炸弹", 
   "解锁冰锥", 
   "解锁熔岩球", 
   "解锁脉冲弓", 
   "解锁黑龙熔岩球", 
   "解锁混乱熔岩球", 
   "解锁反光镜", 
   "解锁火箭背包", 
   "解锁公主床", 
   "解锁坚冰", 
   "解锁钢板", 
   "🌵解锁金铁门", 
   "解锁白杨木门", 
    "返 回 主 页",},2018,os.date("需要指定的才能用，有些房间用不了—白酒九功能"))
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
    "注意事项[下面]",
    "代码有点少",
    "求谅解",
    "代码在上面",
    "️没那么多时间更",
   "以上为留言 !", 
    "返 回 主 页",},2018,os.date("生物代码:13105-野人猎手13107-大眼蛛13108-地穴蜘蛛13109-爆爆蛋13110-萌眼叮叮13111-萌眼咚咚13117-史萌萌13120-屠夫13121-稻草人13122-恶霸屠夫13123-出气外星人13130-熔岩巨人13131-硫磺弓手13400-鸡13401-牛13402-猪13403-羊13404-马13407-狼13408-狗13409-企鹅13411-野生鸵鸟13412-野生冰熊13413-野生速龙13414-野生团子13415-团子13416-野生熊猫13417-熊猫13418-蜜蜂13419-萤火虫13420-足球13421-飞鸡13423-战斗鸡13424-尖叫鸡13425-篮球】修改子弹用:【[投射物]11586-平凡法球】【[投射物]11587-炽烈法球】【[投射物]11588-雷电法球】【[投射物]11589-淬毒法球】【[投射物]11590-复苏法球】彩字代码:1:粉红色#cff0aff2.红色#cFF00003.绿色#c00FF004.蓝色#c0000FF5.牡丹红#cFF00FF6.青色#c00FFFF  7.黄色#cFFFF008.黑色#c000000 9.海蓝#c70DB93 10.巧克力色#c5C3317 11.蓝紫色#c9F5F9F 12.黄铜色#cB5A642 13.亮金色#cD9D919 14.棕色#cA67D3D 15.青铜色#c8C7853 16.青铜色2号#cA67D3D 17.士官服蓝色#c5F9F9F18.冷铜色#cD98719 19.铜色#cB87333 20.珊瑚红#cFF7F00 21.紫蓝色#c42426F 22.深绿#c2F4F2F 23.深铜绿色#c4A766E 24.深橄榄绿#c4F4F2F "))
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
             "玩法改创造(永远)",
             "解禁危险品",
             "生存改创造(永远)",	 
	 "家园道具(编辑器内)",
	 "第八格添加编辑器",
	 "自定义改编辑",
	 "能量剑改编辑器",
	 "炸云服",
	  "创造炸图",
	   "通用创造",
	     "新家园道具(原创)",
	 "🍊返 回 主 页🍊",
 }, nil, "愿你能熬得过万丈孤独，藏得下星辰大海")
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
    "🔰炸药桶🔰",
    "🔰刷怪方块🔰",
    "🔰宠物窝🔰",
    "🔰天气控制器🔰",
    "🔰️重力装置🔰",    
    "🔰️空心树🔰",
    "🔰自定义方块🔰",
    "🔰中式沙发🔰",
    "🔰中式桌子🔰",
    "🔰中式餐桌🔰",
    "🔰中式洗手台🔰",   
    "🔰中式椅子🔰",
    "🔰中式马桶🔰",
    "🔰中式浴缸🔰",
    "🔰中式屏风🔰",
    "🔰️中式立体灯🔰",    
    "🔰中式吊灯️🔰", 
    "🔰中式门️🔰",
    "🔰中式窗🔰",
    "🔰️中式楼梯🔰",    
    "🔰中式墙砖🔰", 
   "🔰中式地砖🔰", 
    "🔰中式半砖🔰", 
    "🔰中式围栏🔰", 
    "现代床", 
    "现代沙发", 
    "现代书桌", 
    "现代餐桌",
    "现代茶几",
    "现代洗手台",
    "现代椅子",
    "现代马桶",
    "现代浴缸",
    "现代衣柜",
    "现代橱柜",
    "现代半格橱柜",
    "现代组合柜",
    "现代屏风",
    "现代立体灯",
    "现代吊灯",
    "现代壁灯",
    "现代门",
    "现代窗",
    "现代楼梯",
    "现代墙砖",
    "现代砖",
    "现代半砖",
   "现代围栏", 
    "童话床",
    "童话沙发️",
    "童话书桌",
    "童话桌子️",
    "童话茶几️",
    "童话洗手池",
    "童话椅子",
    "童话马桶",
    "童话浴缸️",
    "童话衣柜️",
    "童话橱柜️",
    "童话半格橱柜️",
    "童话箱子️",
    "童话屏风️",
    "童话台灯️",
    "童话吊灯",
    "童话壁灯",
    "童话门",
    "童话窗️",
    "童话楼梯",
    "童话墙砖️",
    "童话地砖",
    "童话半砖",
    "童话围栏",
    "🎋科幻床️🎋",
    "🎋️科幻沙发🎋",
    "🎋科幻书桌🎋",
    "🎋科幻桌子🎋", 
    "🎋科幻茶几🎋",
    "🎋科幻洗手台🎋",
    "🎋科幻椅子🎋",
    "🎋科幻马桶🎋",
    "🎋科幻浴缸🎋",
    "🎋科幻衣柜🎋",
    "🎡返 回 主 页🎡",},i2,os.date("姜小北原创"))
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
  "胡杩茶机",
    "胡杩登子",
    "西域沙发",
    "西域书桌",
    "西域餐桌",
    "西域茶机",
    "西域洗手台",
    "西域登子",
    "西域马桶",
    "西域浴缸",
    "西域衣柜",
   "西域厨柜", 
    "西域半柜",
    "西域组合柜",
    "西域屏风",
    "西域立体灯",
    "西域吊灯️",
    "西域壁灯",
    "西域门",
    "西域窗",
    "西域楼梯",
    "西域墙砖",
    "西域砖️",
    "西域半砖",
    "西域围栏",
    "西域地毯",
    "骆驼墙砖",
    "莲花壁画",
    "飞天少女壁画",
    "坐骑蛋1",
    "坐骑蛋2",
    "坐骑蛋3",
    "坐骑蛋4",
    "坐骑蛋5",
    "坐骑蛋6",
    "坐骑蛋7",
  "🎡返 回 主 页🎡",},i2,os.date("哈哈。。。。我好后悔丢了你....."))
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
    [1] = sjbq.."切换龙哥脚本??"..sjbq,
    [2] = sjbq.."切换墨凉最新版脚本"..sjbq,
    [3] = sjbq.."切换凉情脚本"..sjbq,
    [4] = sjbq.."️切换柯南脚本"..sjbq,
    [5] = sjbq.."️切换小可脚本"..sjbq,
    [6] = sjbq.."️切换黑死脚本"..sjbq,
    [7] = sjbq.."️切换小北脚本"..sjbq,   
    [8] = sjbq.."️切换傲傲脚本"..sjbq,
    [9] = sjbq.."️切换帅莺脚本"..sjbq,
   [10] = sjbq.."️切换CA脚本  "..sjbq,  
   [11] = sjbq.."️切换XE脚本  "..sjbq,  
   [12] = sjbq.."️切换天月脚本"..sjbq, 
   [13] = sjbq.."切换小晨脚本"..sjbq,
   [14] = sjbq.."自定义切换  "..sjbq,
   [15] = sjbq.."切换凉兮脚本"..sjbq,
   [16] = sjbq.."切换傲傲脚本"..sjbq,
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
gg.toast("正在连接墨 凉⚠服务器...")
    print(os.date("%M分%S秒_已切换墨 凉⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/ee5d98a907394abac09fb1a17d029b60.lua").content))
end

function poiu1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1633407907.lua").content))
end

function lopty1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
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
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/243eb30181c84be5f6f31519b6590840.lua").content))
end
function lop2()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/9314adfd95e2bf3417942c4100e0ff3b.lua").content))
end
function kiox1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/317ff7a31aa8752a85c8e4b25b1245d5.lua").content))
end
function me1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/298538f6e0c3b13b60a91c5409b15b33.lua").content))
end
function op1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/ea42e09d9c0bb2615afacadf4b1b71b7.lua").content))
end
function xmn()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/149fce4b4adad850ea9b0cace7b9a0ea.lua").content))
end
function mki()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/61d115c3ad11825ce9a1118f2a68e3d6.lua").content))
end
function xmnj1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/616115293e3059796748ec184dd147bd.lua").content))
end
function bhu1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/fa88878d0ff25ab7928597232f653972.lua").content))
end
function Mmn1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/9081e66a6a4944a4506260db87fb984a.lua").content))
end
function klo1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换余枫⚠"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/7d9d68203480dce80b4ddf2f6e81936c.lua").content))
end
function nm1()
gg.toast("正在连接余枫⚠服务器...")
    print(os.date("%M分%S秒_已切换"))
     pcall(load(gg.makeRequest("https://98xfank.cn/down.php/75df25a29506d45abe42d5454cc490b8.lua").content))
end



function Main8()
SY1 = gg.choice({
'❤独白❤',
'❤秒回❤',
'❤风骚❤',
'❤小帅❤',
'❤天宇❤',
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
print("   余枫5.0为你退出脚本成功                                                                                        ")
os.exit() end 






function HOME()
lw=1
Main()
end



cs = '余枫殿'
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