----------
--安宁制作--
----------

--随便拿吧，开源
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function gmnh()
  a = io.open("/sdcard/安宁脚本配置文件.cfg", "rb") if a == nil then else
    a = io.open("/sdcard/安宁脚本配置文件.cfg"):read("*a") zh = a:match("【账号】(.-)【账号】") if a == "" then zh = "" end end
  mm=gg.prompt({"🍁🍓请输入你的迷你号🍓🍁"},{[1] = zh},{[1] = "number"}) zh = mm[1] io.open("/sdcard/安宁脚本配置文件.cfg", "w") io.open("/sdcard/安宁脚本配置文件.cfg", "w"):write("【账号】" .. zh .. "【账号】"):close()
  gg.toast("迷你号数据更新完成！")
end
gmnh()
APP=gg.getTargetInfo()
function Main0()
  SN = gg.choice({
    "🍁🍓房主专区🍓🍁",
    "🍁🍓联机专区🍓🍁",
    "🍁🍓炸图专区🍓🍁",
    "🍁🍓狙击专区🍓🍁",
    "🍁🍓解锁物品🍓🍁",
    "🍁🍓其他功能🍓🍁",
    "🍁🍓播放音乐🍓🍁",
    "🍁🍓切换辅助🍓🍁",
    "🍁🍓辅助设置🍓🍁",
    "🍁🍓退出辅助🍓🍁",
  }, nil, os.date("安宁制作_安宁辅助v7.2\n当前迷你号：".. mm[1] .."\n当前进程:["..APP.activities[1].label.."]  进程版本:["..APP.versionName.."]\n当前时间：%Y年%m月%d日%H时%M分%S秒"))
  if SN==1 then
    Main1()
  end
  if SN==2 then
    Main2()
  end
  if SN==3 then
    Main3()
  end
  if SN==4 then
    Main4()
  end
  if SN==5 then
    Main11()
  end
  if SN==6 then
    Main5()
  end
  if SN==7 then
    Main6()
  end
  if SN==8 then
    qhfz()
  end
  if SN==9 then
    SZ()
  end
  if SN==10 then
    HS7()
  end
  FX1=0
end
function Main1()
  SN = gg.multiChoice({
    "手机开40人房(请打开开房的界面再使用)",
    "无限物品(第一格不要放东西)",
    "无敌秒杀(死亡时开)",
    "改分数",
    "全部人物烧死",
    "武器附魔",
    "工具附魔",
    "能量剑无冷却",
    "第一格物品无限耐久",
    "创造背包(可拿物品)"
  }, nil, "🍁🍓房主专区🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      HS10()
    end
    if SN[2]==true then
      HS12()
    end
    if SN[3]==true then
      HS13()
    end
    if SN[4]==true then
      HS14()
    end
    if SN[5]==true then
      HS15()
    end
    if SN[6]==true then
      HS16()
    end
    if SN[7]==true then
      HS17()
    end
    if SN[8]==true then
      HS18()
    end
    if SN[9]==true then
      HS19()
    end
    if SN[10]==true then
      HS47()
    end
  end
  FX1=0
end
function HS10()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "手机开PC大房间"},
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
function HS12()
  F = gg.alert("🔰请选择复刻第一格物品｛开 关｝🔰","🔵开🔵","🔴关🔴")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
   else
  end
  if F == 1 then
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
  end
  if F == 2 then
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
function HS13()
  gg.clearResults()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "无敌秒杀"},
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
function HS14()
  xd= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",
    "🧊紫队🧊",
  }, nil, "请选择你的队伍")
  if xd==1 then mvi1() end
  if xd==2 then mvi2() end
  if xd==3 then mvi3() end
  if xd==4 then mvi4() end
  if xd==5 then mvi5() end
  if xd==6 then mvi6() end
  if xd==7 then Main0() end
  XGCK=-1 end
function mvi1()
  mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
  local tb2 = {{mn2, -120 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("红队改分-修改完成")
  gg.clearResults()
end
function mvi2()
  mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
  local tb2 = {{mn2, -104 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("蓝队改分-修改完成")
  gg.clearResults()
end
function mvi3()
  mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
  local tb2 = {{mn2, -88 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("绿队改分-修改完成")
  gg.clearResults()
end
function mvi4()
  mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
  local tb2 = {{mn2, -72 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("黄队改分-修改完成")
  gg.clearResults()
end
function mvi5()
  mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
  local tb2 = {{mn2, -56 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("橙队改分-修改完成")
  gg.clearResults()
end
function mvi6()
  mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
  gg.clearResults()
  mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
  local tb2 = {{mn2, -40 }, }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("紫队改分-修改完成")
  gg.clearResults()
end
function HS15()
  F = gg.alert("🔰请选择全员烧死｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
   else
  end
  if F== 1 then
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
   elseif F== 2 then
    gg.clearResults()
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "烧死关闭"},
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
function HS16()
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
function HS17()
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
function HS18()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("能量剑无冷却-修改完成")
  gg.clearResults()
end
function HS19()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "第1格无限耐久"},
    {["value"] = 945804461, ["type"] = 4},
    {["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 20000, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
  }
  xqmnb(qmnb)
end
function HS47()
  F = gg.alert("🔰请选择创造背包｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
   else
  end
  if F== 1 then
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
   elseif F== 2 then
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
function Main2()
  SN = gg.multiChoice({
    "开启空格连跳(修改时请勿移动)",
    "联机聊天(开启后可绕过实名认证进行聊天)",
    "天空变黑",
    "穿墙(记得开启连跳或改创造)",
    "自定义跳高",
    "自定义速度",
    "人物浮空",
    "临时改名",
    "模仿别人说话",
  }, nil, "🍁🍓联机专区🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      HS20()
    end
    if SN[2]==true then
      HS21()
    end
    if SN[3]==true then
      HS24()
    end
    if SN[4]==true then
      HS25()
    end
    if SN[5]==true then
      HS42()
    end
    if SN[6]==true then
      HS43()
    end
    if SN[7]==true then
      HS44()
    end
    if SN[8]==true then
      HS50()
    end
    if SN[9]==true then
      HS51()
    end
  end
  FX1=0
end
function HS20()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
  end
  gg.toast("开启空格连跳-修改完成")
  gg.clearResults()
end
function HS21()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 0}})
  end
  gg.toast("联机聊天-修改完成")
  gg.clearResults()
end
function HS24()
  gg.toast("请选择开关")
  F = gg.alert("🔰请选择天空变黑｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
   else
  end
  if F== 1 then
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
      {["name"] = "天空恢复"},
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
function HS25()
  gg.clearResults() gg.setRanges(262207) gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("180;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -99999}}) end gg.toast("人物穿墙修改成功") gg.clearResults() end
function HS42()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.toast("nil")
  gg.getResults(100)
  v = gg.prompt({i='-1为正常，推荐150'}, {i='150'})
  gg.editAll(v['i'], 16)
  gg.toast("开启成功")
end
function HS43()
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
function HS44()
  gg.toast("请选择开关")
  F = gg.alert("🔰请选择人物浮空｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
  end
  if F== 1 then
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
function HS50()
  mnmz = ":w"
  mnmc = gg.prompt({"请输入要改的名称"}
  ,{[1]=""},{[1]="text"})[1]
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
  gg.getResults(200)
  gg.editAll(":"..mnmc, gg.TYPE_BYTE)
  gg.toast("临时改名-修改完成")
end
function HS51()
  t = gg.prompt({"『输入房主迷你号』"}
  ,{[1]=0},{[1]="number"})[1]
  gg.toast("去复制要模仿的人的迷你号，然后点击悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      s = gg.prompt({"『输入要模仿的人迷你号』"}
      ,{[1]=0},{[1]="number"})[1]
      qmnb = {
        {["memory"] = 4},
        {["name"] = "模仿别人打字"},
        {["value"] =t , ["type"] = 4},
        {["lv"] = mm[1], ["offset"] = -16, ["type"] = 32},
      }
      qmxg = {
        {["value"] = s, ["offset"] = -16,["type"] = 32},
      }
      xqmnb(qmnb)
      gg.clearResults()
      break
    end
  end
end
function Main3()
  SN = gg.multiChoice({
    "全局创造(进纯生存前记得关)",
    "临时玩法改创造(修改完后打开背包再关闭)",
    "纯生存改创造(修改完后打开背包再关闭)",
    "解除禁用危险品",
    "添加地形编辑器(请保持第8格没有物品)",
    "奖杯领自定义(可炸云服)",
    "短剑改黑龙球(创造专用)",
    "能量剑改地形编辑器(记得改创造)",
    "传送卷轴改地形编辑器(记得改创造)",
    "仙人掌改桃木图腾(配合地形编辑器使用)",
    "南瓜改炸药桶(配合地形编辑器使用)",
    "开发者界面(需要先打开过)"
  }, nil, "🍁🍓炸图专区🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      HS27()
    end
    if SN[2]==true then
      HS28()
    end
    if SN[3]==true then
      HS45()
    end
    if SN[4]==true then
      HS29()
    end
    if SN[5]==true then
      HS33()
    end
    if SN[6]==true then
      HS52()
    end
    if SN[7]==true then
      HS30()
    end
    if SN[8]==true then
      HS31()
    end
    if SN[9]==true then
      HS32()
    end
    if SN[10]==true then
      HS34()
    end
    if SN[11]==true then
      HS35()
    end
    if SN[12]==true then
      HS48()
    end
  end
  FX1=0
end
function HS27()
  F = gg.alert("🔰请选择全局创造｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
  if F~=1 and F~=2 then
    gg.toast("📌你未选择｛开 关｝")
  end
  if F== 1 then
    gg.clearResults()
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "全局创造"},
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
   elseif F== 2 then
    gg.clearResults()
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "全局创造关闭"},
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
  end
end
function HS28()
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
function HS45()
  F = gg.alert("请选择纯生存改创造｛开 关｝","开","关️")
  if F~=1 and F~=2 then
    gg.toast("你未选择｛开 关｝")
   else
  end
  if F== 1 then
    fmh = gg.prompt({"请输入房主迷你号"}
    ,{[1]=""},{[1]="number"})[1]
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "纯生存改创造开启"},
      {["value"] = fmh, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1, ["offset"] = -4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
   elseif F== 2 then
    fmh = gg.prompt({"请输入房主迷你号"}
    ,{[1]=""},{[1]="number"})[1]
    gg.clearResults()
    qmnb = {
      {["memory"] = 4},
      {["name"] = "纯生存恢复"},
      {["value"] = fmh, ["type"] = 4},
      {["lv"] = 1, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = -4, ["type"] = 4},
    }
    xqmnb(qmnb)
    gg.clearResults()
  end
end
function HS29()
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "解除禁用危险物品"},
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
function HS33()
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
function HS52()
  jl=gg.prompt({"物品代码：(15056--黑龙球，10500--地形编辑器)","物品数量："},{[1] = "15056",[2] = "512"},{[1] = "number",[2] = "number"})
  Aa2 = jl[1] Aa1 = jl[2]
  qmnb = {
    {["memory"] = 4},
    {["name"] = "开启奖杯按钮"},
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
  qmnb = {
    {["memory"] = 4},
    {["name"] = "修改奖励物品"},
    {["value"] = 11012, ["type"] =4},
    {["lv"] = 2, ["offset"] =-4 , ["type"] = 4},
    {["lv"] = 1, ["offset"] =-8, ["type"] = 4},
    {["lv"] = 2, ["offset"] =-16 , ["type"] = 4},
  }
  qmxg = {
    {["value"] = Aa1, ["offset"] = -0xAC8, ["type"] = 4},
    {["value"] = Aa1, ["offset"] = -0x388, ["type"] = 4},
    {["value"] = Aa1, ["offset"] = 0x758, ["type"] = 4},
    {["value"] = Aa1, ["offset"] = 0x3B8, ["type"] = 4},
    {["value"] = Aa1, ["offset"] = 0x18, ["type"] = 4},

    {["value"] = Aa2, ["offset"] = -0x390, ["type"] = 4},
    {["value"] = Aa2, ["offset"] = -0xAD0, ["type"] = 4},
    {["value"] = Aa2, ["offset"] = 0x750, ["type"] = 4},
    {["value"] = Aa2, ["offset"] = 0x3B0, ["type"] = 4},
    {["value"] = Aa2, ["offset"] = 0x10, ["type"] = 4},
    {["value"] = 0, ["offset"] = -0xADC, ["type"] = 4},
    {["value"] = 0, ["offset"] = -0x39C, ["type"] = 4},
    {["value"] = 0, ["offset"] = 0x4, ["type"] = 4},
    {["value"] = 0, ["offset"] = 0x744, ["type"] = 4},
    {["value"] = 0, ["offset"] = 0x3A4, ["type"] = 4},
  }
  xqmnb(qmnb)
  gg.clearResults()
end
function HS30()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
  end
  gg.toast("短剑改黑龙球-修改完成")
  gg.clearResults()
end
function HS31()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
  end
  gg.toast("能量剑改地形编辑器-修改完成")
  gg.clearResults()
end
function HS32()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("A4320000rD;02000000rD::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("传送卷轴改地形编辑器-修改完成")
  gg.clearResults()
end
function HS34()
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
function HS35()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "南瓜改炸药桶"},
    {["value"] = 42949672960230, ["type"] = 32},
    {["lv"] = 6582127, ["offset"] = 0x64, ["type"] = 32},
  }
  qmxg = {
    {["value"] = 835, ["offset"] = -0x5C, ["type"] = 4, ["freeze"] = true},
  }
  xqmnb(qmnb)
end
function HS48()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "开发者"},
    {["value"] = 1114898432, ["type"] = 4},
    {["lv"] = 92, ["offset"] = -68, ["type"] = 4},
    {["lv"] = 263, ["offset"] = -72, ["type"] = 4},
    {["lv"] = 16777216, ["offset"] = -76, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 16777472, ["offset"] = -76, ["type"] = 4},
  }
  xqmnb(qmnb)
  gg.toast("再次点击修改器悬浮窗自动恢复")
  gg.clearResults()
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      gg.toast("正在恢复中")
      qmnb = {
        {["memory"] = 4},
        {["name"] = "开发者关闭"},
        {["value"] = 1114898432, ["type"] = 4},
        {["lv"] = 92, ["offset"] = -68, ["type"] = 4},
        {["lv"] = 263, ["offset"] = -72, ["type"] = 4},
        {["lv"] = 16777472, ["offset"] = -76, ["type"] = 4},
      }
      qmxg = {
        {["value"] = 16777216, ["offset"] = -76, ["type"] = 4},
      }
      xqmnb(qmnb)
      break
    end
  end
end
function Main4()
  SN = gg.multiChoice({
    "狙击枪连发无后座",
    "超远距离攻击",
  }, nil, "🍁🍓狙击专区🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      HS36()
    end
    if SN[2]==true then
      HS37()
    end
  end
  FX1=0
end
function HS36()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "狙击连发无后座"},
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
function HS37()
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
  gg.toast("超远距离攻击-修改完成")
  gg.clearResults()
end
function Main11()
  SN = gg.multiChoice({
    "解锁火箭背包",
    "解锁火箭筒",
    "解锁弩",
    "解锁大爆竹",
    "解锁弹弓",
    "解锁公主床",
    "解锁豪华木床",
  }, nil, "🍁🍓解锁物品🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      JS1()
    end
    if SN[2]==true then
      JS2()
    end
    if SN[3]==true then
      JS3()
    end
    if SN[4]==true then
      JS4()
    end
    if SN[5]==true then
      JS5()
    end
    if SN[6]==true then
      JS6()
    end
    if SN[7]==true then
      JS7()
    end
  end
  FX1=0
end
function JS1()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁火箭背包-修改完成")
  gg.clearResults()
end
function JS2()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁火箭筒-修改完成")
  gg.clearResults()
end
function JS3()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁弩-修改完成")
  gg.clearResults()
end
function JS4()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12280;59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁大爆竹-修改完成")
  gg.clearResults()
end
function JS5()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("12281;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁弹弓-修改完成")
  gg.clearResults()
end
function JS6()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁公主床-修改完成")
  gg.clearResults()
end
function JS7()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("884;31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
  end
  gg.toast("解锁豪华木床-修改完毕")
  gg.clearResults()
end
function Main5()
  SN = gg.multiChoice({
    "踢房主(让房主的迷你世界闪退)",
    "伪房主",
    "坐标传送(请记住当前高度)",
    "观战模式",
    "无视拉黑(在被拉黑的界面使用)",
    "解除实名认证(在时间到之前使用)",
  }, nil, "🍁🍓其他功能🍓🍁")
  if SN == nil then else
    if SN[1]==true then
      HS38()
    end
    if SN[2]==true then
      HS46()
    end
    if SN[3]==true then
      HS39()
    end
    if SN[4]==true then
      HS40()
    end
    if SN[5]==true then
      HS41()
    end
    if SN[6]==true then
      HS49()
    end
  end
  FX1=0
end
function HS38()
  fmh = gg.prompt({"请输入房主迷你号"}
  ,{[1]=0},{[1]="number"})[1]
  qmnb = {
    {["memory"] = 4},
    {["name"] = "踢房主"},
    {["value"] = mm[1], ["type"] = 4},
    {["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
  qmxg = {
    {["value"] = fmh, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
  }
  xqmnb(qmnb)
end
function HS46()
  fmh= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
  qmnb = {
    {["memory"] = 4},
    {["name"] = "伪房主"},
    {["value"] = fmh, ["type"] = 4},
    {["lv"] = 2, ["offset"] = 44, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 3, ["offset"] = 44, ["type"] = 4},
  }
  xqmnb(qmnb)
  gg.clearResults()
end
function HS39()
  a = gg.prompt({"请输入你现在的高度"}
  ,{[1]=7},{[1]="number"})[1]
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
function HS40()
  F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
  if F ~= 1 and F ~= 2 then
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
      {["name"]="观战模式恢复"},
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

function HS41()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("现在退出地图，点击修改器悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("现在再回到地图，点击修改器悬浮窗")
      while true do
        if gg.isVisible(true) then
          gg.setVisible(false)
          gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          jg=gg.getResults(100)
          sl=gg.getResultCount()
          if sl>100 then sl=100 end
          for i = 1, sl do
            dzy=jg[i].address
            gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
          end
          gg.toast("无视拉黑-修改完成")
          gg.clearResults()
          break
        end
      end
      break
    end
  end
end
function HS49()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("现在打开实名认证窗口，点击修改即悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("现在关闭实名认证窗口，点击修改器悬浮窗")
      while true do
        if gg.isVisible(true) then
          gg.setVisible(false)
          gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          jg=gg.getResults(100)
          sl=gg.getResultCount()
          if sl>100 then sl=100 end
          for i = 1, sl do
            dzy=jg[i].address
            gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
          end
          gg.toast("解除实名认证-修改完成")
          gg.clearResults()
          break
        end
      end
      break
    end
  end
end
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
    g.sel = {"aliez","10"}
  end
end
bei()
function start(name,sl)
  fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
  return fw
end
function play(id,name)
  gg.toast("正在播放音乐："..name,true)
  gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
function stop()
  gg.toast("正在停止音乐")
  for i=1,100 do
    gg.playMusic("stop")
    gg.playMusic("stop")
    gg.playMusic("stop")
  end
end
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
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end
function Main6()
  SN = gg.choice({
    "🍁♥搜索歌曲🔍♥️🍁",
    "🍁♥️搜索列表🌐♥️🍁",
    "🍁♥️播放热歌🗣️♥️🍁",
    "🍁♥️停止播放💤♥️🍁",
    "🍁♥️返回主页️➗♥️🍁",
  },nil,os.date("🍁当前时间%Y年%m月%d日%H时%M分%S秒🍁"))
  if SN==1 then s1() end
  if SN==2 then Play(gqlb,idb) end
  if SN==3 then YY998() end
  if SN==4 then stop() end
  if SN==5 then Main0() end
  FX1=0
end
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
    if not pcall(inspect) then print("网络异常") os.exit() end
  end
  XGCK=-1
end
function HS7()
  os.exit()
end
function SZ()
  SN = gg.choice({
    "🍁♥更改迷你号♥️🍁",
    "🍁♥冻结清理♥🍁",
    "🍁♥️结束目标进程♥️🍁",
    "🍁♥️问题反馈、留言♥️🍁",
  },nil,os.date("🍁当前时间%Y年%m月%d日%H时%M分%S秒🍁"))
  if SN==1 then gmnh() end
  if SN==2 then
    gg.clearList()
    gg.toast("清理完成！")
  end
  if SN==3 then gg.processKill() end
  if SN==4 then fkly() end
  FX1=0
end
function fkly()
  SN = gg.choice({
    "🍁♥复制作者QQ号♥️🍁",
  },nil,os.date("🍁当前时间%Y年%m月%d日%H时%M分%S秒🍁"))
  if SN==1 then gg.copyText("2641811591") end
  FX1=0
end
function qhfz()
  SN = gg.choice({
    "🍁♥CA辅助♥️🍁",
    "🍁♥凉情辅助♥🍁",
    "🍁♥️其他网络脚本♥️🍁"
  },nil,os.date("🍁切换辅助🍁"))
  if SN==1 then
    gg.toast("正在连接CA辅助服务器...")
    print(os.date("%M分%S秒_已切换CA辅助"))
    pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1629878944.png").content))
    os.exit()
  end
  if SN==2 then
    gg.toast("正在连接凉情辅助服务器...")
    print(os.date("%M分%S秒_已切换凉情辅助"))
    pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1633551400.lua").content))
    os.exit()
  end
  if SN==3 then
    jl=gg.prompt({"请输入网络脚本链接："},{[1] = ""},{[1] = "text"})
    gg.toast("正在连接自定义脚本链接...")
    print(os.date("%M分%S秒_已切自定义网络脚本"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end
end
while true do
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end