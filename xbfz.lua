dl3 = io.open("/storage/emulated/0/.祈神殿", "rb")  if dl3 == nil then else
dl3 = io.open("/storage/emulated/0/.祈神殿","r"):read("*a") end
xb = gg.prompt({"🧸输入你的迷你号🧸"},{[1]=dl3},{[1]="number"})[1]
io.open("/storage/emulated/0/.祈神殿","w"):write(xb):close()
a = io.open("/storage/emulated/0/.祈神殿","r"):read("*a") b=a
gg.toast("当前迷你号:"..b.."")
---------------------------------------------

bqt={"🍬","🧸","🍓","🍁","🎡","🐥","✡","️️️️🍃️","🍀","🧊","⚡",}
function Main()   local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    [1] = sjbq.."𒅒🌿房 主 功 能️️️️️️🌿𒅒"..sjbq,
    [2] = sjbq.."𒅒️️🌿联 机 功 能️️️️️️🌿𒅒"..sjbq,
    [3] = sjbq.."𒅒️️🌿笔 刷 模 式️️️️️️🌿𒅒"..sjbq,
    [4] = sjbq.."𒅒️️️️️️🌿️狙 击 专 区️️️️️️🌿𒅒"..sjbq,
    [5] = sjbq.."𒅒️️️️️️🌿️音 乐 功 能️️️️️️🌿𒅒"..sjbq,
},2018,os.date("🧊当前时间%Y年%m月%d日%H时%M分%S秒🧊"))
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end 
FX1=0 end

function Main1()  
SN = gg.multiChoice({
"🧊第1格无限物品🧊",
"🧊开电脑大房间🧊",
"🧊第一格改坐骑🧊",
"🧊自定义玩家大小🧊",
"🧊自定义地图名字🧊",
"🧊无 敌 秒 杀🧊",
"🧊无 限 脚 印🧊",
"🧊落 地 秒 杀🧊",
"🧊彩蛋枪超快射速🧊",   
"🧊动态自定义发图片🧊",
"🧊解锁华丽变身勋章🧊",           	     		     	              	     	
"🎡返 回 主 页🎡",
 }, nil, "𒅒希望你不要因为廉价的新鲜感,而丢掉陪伴你很久的那个人𒅒")
if SN == nil then else
if SN[1]==true then	 a1() end
if SN[2]==true then	 a2() end
if SN[3]==true then	 a3() end
if SN[4]==true then	 a4() end
if SN[5]==true then	 a5() end
if SN[6]==true then      a6() end
if SN[7]==true then	 a7() end
if SN[8]==true then	 a8() end
if SN[9]==true then	 a9() end
if SN[10]==true then	 a10() end
if SN[11]==true then	 a11() end
if SN[12]==true then	 Main() end end
FX=0 end
function a1()
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

function a2()
qmnb = {
{["memory"] = 4},
{["name"] = "40人房间"},
{["value"] = 4759178907335262208, ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 460, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 460, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function a3()
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
      "𒅒🧊曦光绘梦️🧊𒅒", 
      "𒅒🧊️裂空机甲🧊𒅒", 
      "𒅒🧊️星河机甲🧊𒅒", 
      "𒅒🧊环海诺诺🧊𒅒", 
      "𒅒🧊尼东若若🧊𒅒", 
      "𒅒🧊️虚空龙祖🧊𒅒",          
      "𒅒🧊️繁花夜明🧊𒅒", 
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
if o2==23 then o=4526 o4() end
if o2==24 then o=4529 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
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

function a4()
dI=gg.prompt({"","输入大小"},{[1] = a,[2] = "3"},{[1] = "number",[2] = "number"})   
Aa1 = dI[1] Aa2 = dI[2] 
qmnb = {
{["memory"] = 4},
{["name"] = "大小"},
{["value"] = Aa1, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},}
qmxg = {
{["value"] = Aa2, ["offset"] = 0x150, ["type"] = 16},}
xqmnb(qmnb)
gg.clearResults()
end


function a5()
dl4 = io.open("/storage/emulated/0/.地图名", "rb")  if dl4 == nil then else
dl4 = io.open("/storage/emulated/0/.地图名","r"):read("*a") end
dI=gg.prompt({"输入地图作者迷你号","输入更改的名字"},{[1] = "",[2] = dl4},{[1] = "number",[2] = "text"})   
aaa1 = dI[1] Aa2 = dI[2] mnmc=gg.bytes(dI[2])
io.open("/storage/emulated/0/.地图名","w"):write(Aa2):close()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg={}
for i=1,50 do
qmxg[i]={value=mnmc[i]and(mnmc[i]>127 and mnmc[i]-256 or mnmc[i])or 0,offset=7+i,type=1}end
xqmnb(qmnb)
end

function a6()
gg.toast("无敌秒杀开启成功")
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt1 = {0x288F88, 0xBC, 0x24}
local ttt1 = S_Pointer(t, tt1)
local tt2 = {0x288F88, 0xBC, 0x28}
local ttt2 = S_Pointer(t, tt2)
local tt3 = {0x288F88, 0xBC, 0x50}
local ttt3 = S_Pointer(t, tt3)
local tt4 = {0x288F88, 0xBC, 0x118}
local ttt4 = S_Pointer(t, tt4)
gg.setValues({{address = ttt1, flags = 16, value = 1000}})
gg.setValues({{address = ttt2, flags = 16, value = 1000}})
gg.setValues({{address = ttt3, flags = 16, value = 9999}})
gg.setValues({{address = ttt4, flags = 16, value = 999}})
end

function a7()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="无限脚印"},
{["value"]=1748025912,["type"]=4},
{["lv"]=186117201,["offset"]=0xC,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0x1C,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="无限脚印"},
{["value"]=1748025912,["type"]=4},
{["lv"]=186117201,["offset"]=0xC,["type"]=4}
}
qmxg={
{["value"]=200,["offset"]=0x1C,["type"]=16}
}
xqmnb(qmnb)
end
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
{["name"]="一摔就死开"},
{["value"]=671147794,["type"]=4},
{["lv"]=16394628,["offset"]=0x18,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0x14,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="一摔就死关"},
{["value"]=671147794,["type"]=4},
{["lv"]=16394628,["offset"]=0x18,["type"]=4}
}
qmxg={
{["value"]=100,["offset"]=0x14,["type"]=16}
}
xqmnb(qmnb)
end
end

function a9()
F = gg.alert("🔰请选择功能,先开1不然2没效果🔰","🍁彩蛋枪强化1🍁","🍁自定义️子弹2🍁️️")
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

function a10()
qmnb = {
{["memory"] = 4},
{["name"] = "动态发图片"},
{["value"] = 4823355202036826112, ["type"] = 32},
{["lv"] = 1123024896, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1094713344, ["offset"] = 0x18, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x34, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},}
qmxg = {
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end

function a11()
qmnb = {
{["memory"] = 4},
{["name"] = "解锁华丽勋章"},
{["value"] = 825242673, ["type"] = 4},
{["lv"] = 60, ["offset"] = 0x50C, ["type"] = 4},
{["lv"] = 220, ["offset"] = 0x510, ["type"] = 4},
{["lv"] = 180, ["offset"] = 0x508, ["type"] = 4},
{["lv"] = 120, ["offset"] = 0x518, ["type"] = 4},
{["lv"] = 2, ["offset"] = 0xD8, ["type"] = 4},
{["lv"] = 120, ["offset"] = 0x514, ["type"] = 4},}

qmxg = {
{["value"] = 121, ["offset"] = -0x54, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function Main2() 
SN = gg.multiChoice({
	 "️️️️🍃️联 机 取 物️️️️🍃",
	 "️️️️🍃️联 机 皮 肤️️️️🍃",
	 "️️️️🍃自定义名字️️️️🍃",
             "️️️️🍃联机头像框️️️️🍃️",
	 "️️️️🍃无限跳[开启]️️️️🍃️",
	 "️️️️🍃人 物 穿 墙️️️️🍃️",
	 "️️️️🍃免手机号打字️️️️🍃",
	 "️️️️🍃️人 物 特 效️️️️🍃",
	 "️️️️🍃人 物 动 作️️️️🍃",
	 "️️️️🍃踢 走 房 主🍃",
	 "️️️️🍃添加火箭背包️️️️🍃",
	 "️️️️🍃️篮 球 模 式🍃️",
	 "️️️️🍃️附 身 别 人🍃️",
	 "️️️️🍃️人 物 加 速️️️️🍃️",
	 "️️️️🍃️手持物品代码🍃️",
	 "️️️️🍃️禁用危险品名称🍃️",
	 "️️️️🍃️伪 房 主 踢 人🍃️",	 
             "️️️️🍃刷怪方块修改鸡🍃️",
             "️️️️🍃小淘气二段跳技能🍃️",
	  "🎡返 回 主 页🎡",
 }, nil, "𒅒认真过、努力过、尽力过、挽留过、最后什么都没有过𒅒")
 if SN == nil then else
if SN[1]==true then b1() end
if SN[2]==true then b2() end
if SN[3]==true then b3() end
if SN[4]==true then b4() end
if SN[5]==true then b5() end
if SN[6]==true then b6() end
if SN[7]==true then b7() end
if SN[8]==true then b8() end
if SN[9]==true then b9() end
if SN[10]==true then b10() end
if SN[11]==true then b11() end
if SN[12]==true then b12() end
if SN[13]==true then b13() end
if SN[14]==true then b14() end
if SN[15]==true then b15() end
if SN[16]==true then b16() end
if SN[17]==true then b17() end 
if SN[18]==true then b18() end 
if SN[19]==true then b19() end
if SN[20]==true then Main() end end
FX=0 end

function b1()
dI=gg.prompt({"输入物品ID","输入物品数量"},{[1] = "15056",[2] = "999"},{[1] = "number",[2] = "number"})   
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
qmnb = {
{["memory"] = 4},
{["name"] = "联机取物1"},
{["value"] = 1124859904, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function b2()
dI=gg.prompt({"输入你正在使用的皮肤的代码;121妙妙","输入你要的皮肤代码,开启后切换角色"},{[1] = "121",[2] = "124"},{[1] = "number",[2] = "number"})   
xb1 = dI[1] Aa2 = dI[2]
io.open("/storage/emulated/0/.皮肤代码", "w"):write(""..xb1.. ".0"):close()
Aa1= io.open("/storage/emulated/0/.皮肤代码","r"):read("*a")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 18260246528, ["type"] = 32},
{["lv"] = 4, ["offset"] = 0xA4, ["type"] = 32},
{["lv"] = Aa1, ["offset"] = -20, ["type"] = 64},
}
qmxg = {{["value"] = Aa2, ["offset"] = -20, ["type"] = 64},}
xqmnb(qmnb)
gg.clearResults()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5126C0, 0x10, 0x64}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = xb1, freeze = true}})
gg.toast("切换角色显示皮肤")
end

function b3()
Mc = io.open("/storage/emulated/0/.临时名字", "rb")  if Mc == nil then else
Mc = io.open("/storage/emulated/0/.临时名字","r"):read("*a") end
local y,f,g=gg.prompt({"设置新昵称"},{Mc},{"text"}),ntr(ntr(gg.getRangesList("libAppPlayJNI.so:bss")[1].start+0x5126c0,16,4),64,4)[1].address,{}
xb2=y[1]
io.open("/storage/emulated/0/.临时名字", "w"):write(""..xb2.. ""):close()
if y then
if y[1]:len()>32 then gg.toast("字数超出")else
local byte=gg.bytes(y[1])
for i=1,32 do
g[#g+1]={address=f+i,flags=1,value=byte[i]and(byte[i]>127 and byte[i]-256 or byte[i])or 0}end
gg.setValues(g)
gg.toast("开启成功")
end
end
end

function b4()
Aa2=gg.prompt({"输入你要的头像框代码"},{[1] = "20281"},{[1] = "number"})[1]
J={[2]=gg.getRangesList("libAppPlayJNI.so:bss")[1].start+0x5126C0}
local tr=ntr(J[2],0x14,4)
io.open("/storage/emulated/0/.头像框", "w"):write(""..tr[1].value..".0"):close()
Aa1= io.open("/storage/emulated/0/.头像框","r"):read("*a")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 13982975566, ["type"] = 32},
{["lv"] = 4716190536682176512, ["offset"] = -4, ["type"] = 32},
{["lv"] = 4651022146422702080, ["offset"] = 0x1FC, ["type"] = 32},
{["lv"] = 13967802368, ["offset"] = 0x200, ["type"] = 32},
{["lv"] = Aa1, ["offset"] = 0x4BC, ["type"] = 64},
}
qmxg = {
{["value"] = Aa2, ["offset"] =0x4BC, ["type"] =64},
}
xqmnb(qmnb)
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5126C0, 0x14}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = Aa2}})
gg.clearResults()
end



function b5()
gg.clearList()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F88, 0xB4, 0xB4}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.toast("无限跳开启成功")
end

function b6()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F88, 0xB4, 0x28}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = -99999}})
gg.toast("穿墙开启成功")
end

function b7()
qmnb = {
{["memory"] = 4},
{["name"] = "免手机号打字"},
{["value"] = 36029363954647044, ["type"] = 32},
{["lv"] = 21474601572, ["offset"] = -4, ["type"] = 32},
{["lv"] = 1083127808, ["offset"] = 0x2C, ["type"] = 4},
{["lv"] = 300.0, ["offset"] = 0x18, ["type"] = 64},
}
qmxg = {
{["value"] = 0, ["offset"] =0x18, ["type"] =64},
}
xqmnb(qmnb)
gg.clearResults()
end
function b8()
gg.clearList()
Aa1=gg.prompt({"输入特效代码11～19"},{[1] = "12"},{[1] = "number"})[1]   
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F88, 0x70, 0x238}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = Aa1, freeze = true}})
gg.toast("特效开启成功")
end
function b9()  
menu9= gg.choice({
    "𒅒🔰跳舞[通用]️🔰𒅒",
    "𒅒🔰抱坐[通用]️🔰𒅒",
    "𒅒🔰睡觉[通用]️🔰𒅒",
    "𒅒🔰️欢呼[定制]️🔰𒅒",    
    "𒅒🔰漂浮[定制]️🔰𒅒", 
    "𒅒🔰摸空气[通用]️️🔰𒅒",
    "𒅒🔰抠鼻子[定制]️🔰𒅒",
    "𒅒🔰️害羞[定制]️🔰𒅒",    
    "𒅒🔰死亡[通用]️️🔰𒅒", 
    "𒅒🔰恢复动作️🔰𒅒", 
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒你拼了命的想要融入她的世界,而她的世界却不缺你𒅒"))
if menu9==1 then Q3=999475 QQ3() end
if menu9==2 then Q3=99999923 QQ3() end
if menu9==3 then Q3=3122 QQ3() end
if menu9==4 then Q3=954418 QQ3() end
if menu9==5 then Q3=42002 QQ3() end
if menu9==6 then Q3=222221442 QQ3() end
if menu9==7 then Q3=2167939 QQ3() end
if menu9==8 then Q3=1606835 QQ3() end
if menu9==9 then Q3=16777217 QQ3() end
if menu9==10 then Q3=0 QQ3() end
if menu9==11 then Main() end
XGCK=-1 end

function QQ3()
qmnb = {
{["memory"] = 4},
{["name"] = "动作"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},}
qmxg = {
{["value"] = Q3, ["offset"] = -0x54, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function b11()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
qmnb = {
{["memory"] = 4},
{["name"] = ""},
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
end end

function b10()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3441, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
gg.toast("现在去召唤第一格坐骑,房主就无了")
J={[2]=gg.getRangesList("libAppPlayJNI.so:bss")[1].start+0x2877B8}
local tr=ntr(ntr(J[2],0x80,4),{0x38},4)
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x2877B8, 0x80, 0x28}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = tr[1].value }})
gg.removeListItems(tr)
gg.sleep(6000)
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x2877B8, 0x80, 0x28}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = a }})
end



function b12()
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 0x260, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function b13()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
ba2=gg.prompt({"输入对方迷你号"},{[1] = ""},{[1] = "number"})[1]   
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},
{["lv"] = -1, ["offset"] = -0x4C, ["type"] = 4},}
qmxg = {
{["value"] = ba2, ["offset"] = 0, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人"},
{["value"] = ba2, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},
{["lv"] = -1, ["offset"] = -0x4C, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end
end

function b14()
gg.clearList()
Aa3=gg.prompt({"输入速度"},{[1] = "60"},{[1] = "number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "人物加速"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -0x48, ["type"] = 4},}
qmxg = {
{["value"] = Aa3, ["offset"] = -0x2C, ["type"] = 16, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end


function b15()
J={[2]=gg.getRangesList("libAppPlayJNI.so:bss")[1].start+0x288F88}
local tr=ntr(ntr(J[2],0x140,4),{0x6AC},4)
bs=tr[1].value
gg.alert("当前您手中的物品代码为:"..bs.."","确认️️")
gg.removeListItems(tr)
end


function b16()
mnmc = gg.bytes(gg.prompt({"更改的昵称"},{[1]=""},{[1]="text"})[1])
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x28A244, 0x60}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 4}})
qmnb = {
{["memory"] = 4},
{["name"] = "危险品名称"},
{["value"] = -1733433962, ["type"] = 4},
{["lv"] = 10723814, ["offset"] = 4, ["type"] = 4},
}
qmxg={}
for i=1,50 do
qmxg[i]={value=mnmc[i]and(mnmc[i]>127 and mnmc[i]-256 or mnmc[i])or 0,offset=11+i,type=1}end
xqmnb(qmnb)
for i=1,50 do
qmxg[i]={value=mnmc[i]and(mnmc[i]>127 and mnmc[i]-256 or mnmc[i])or 0,offset=67+i,type=1}end
xqmnb(qmnb)
end


function b17()
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = -0x5D8, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function b18()
r = gg.prompt({"『请输入坐骑代码』                                                          3432化石龙-3435飞鼠-3438麒麟-3441陆行鸟-3446海报-3456猫-3459天马-3480月亮-3471龙-3485鹿4503鹿王本身"}
,{[1]=4503},{[1]="number"})[1]
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

function b19()
qmnb = {
{["memory"] = 4},
{["name"] = "二段跳"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}}
qmxg = {{["value"] = 42, ["offset"] = -292, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end


function Main3() 
SN = gg.multiChoice({
             "🧊玩 法 改 编 辑🧊",
	 "🧊生 存 改 创 造🧊",
             "🧊编辑器南瓜自定义🧊",	 
	 "🧊第八格添加编辑器🧊",
	 "🧊自 定 义改编辑器🧊",
	 "🧊能 量 剑改编辑器🧊",
	 "🎡返 回 主 页🎡",
 }, nil, "𒅒我好像在放弃你，又好像...在等你𒅒")
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end 
if SN[4]==true then c4() end
if SN[5]==true then c5() end
if SN[6]==true then c6() end
if SN[7]==true then Main() end end
 FX=0 end
 function c1()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x28A244, 0x60}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 4}})
gg.toast("开启成功")
end
 function c2()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x28A244, 0x60}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})
gg.toast("开启成功")
end

function c3()
i=gg.prompt({"输入方块代码"},{[1]=4095},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "道具"},
{["value"] = 42949672960230, ["type"] = 32},
{["lv"] = 6582127, ["offset"] = 0x64, ["type"] = 32},
}
qmxg = {
{["value"] = i, ["offset"] = -0x5C, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function c4()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x288F88, 0xBC, 0xCC, 0x8, 0xC, 0x410}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 945804463}})
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
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=945804463,["type"]=4},
{["lv"]=1007,["offset"]=-4,["type"]=4},
}
qmxg={
{["value"]=tt,["offset"]=0x74,["type"]=4}
} xqmnb(qmnb)
gg.clearResults()
end end


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
gg.clearResults()
end
function c6()
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
gg.clearResults()
end


function Main4() 
SN = gg.multiChoice({
	 "️️🎊子 弹 穿 墙(房主)️️🎊",
	 "️️🎊狙击枪无后座连发️️🎊",
	 "️️🎊点 狙 穿 墙️️🎊",
	 "️️🎊三 角 透 视️️🎊",
	 "️️🎊天 空 变 黑️️🎊",
	 "🎡返 回 主 页🎡",
 }, nil, "𒅒错过了就错过了,我不遗憾,也不期待圆满𒅒")
 if SN == nil then else
if SN[1]==true then d1() end
if SN[2]==true then d2() end
if SN[3]==true then d3() end
if SN[4]==true then d4() end
if SN[5]==true then d5() end
if SN[6]==true then Main() end end
FX1=0 end

function d1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="子弹穿墙开"},
{["value"]=-1085479181,["type"]=4},
{["lv"]=872411215,["offset"]=0x10,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0x1C,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="子弹穿墙关"},
{["value"]=-1085479181,["type"]=4},
{["lv"]=872411215,["offset"]=0x10,["type"]=4}
}
qmxg={
{["value"]=100,["offset"]=0x1C,["type"]=16}
}
xqmnb(qmnb)
end
end
function d2()
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
 gg.clearResults()
end

function d3()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="点狙穿墙开"},
{["value"]=-1085479181,["type"]=4},
{["lv"]=872411215,["offset"]=0x10,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0x1C,["type"]=16},
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="点狙穿墙关"},
{["value"]=-1085479181,["type"]=4},
{["lv"]=872411215,["offset"]=0x10,["type"]=4}
}
qmxg={
{["value"]=100,["offset"]=0x1C,["type"]=16},
}
xqmnb(qmnb)
end
end

function d4()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="透视开"},
{["value"]=1699951665,["type"]=4},
{["lv"]=196608,["offset"]=0x14,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=0x1C,["type"]=4},
{["value"]=0,["offset"]=0x20,["type"]=4},
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="透视关"},
{["value"]=1699951665,["type"]=4},
{["lv"]=196608,["offset"]=0x14,["type"]=4}
}
qmxg={
{["value"]=65538,["offset"]=0x1C,["type"]=4},
{["value"]=65536,["offset"]=0x20,["type"]=4},
}
xqmnb(qmnb)
end
end
function d5() 
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

function Main5()  SN = gg.choice({
   "𒅒🔰搜索歌曲🔍🔰𒅒",
   "𒅒🔰搜索列表✨🔰𒅒",
   "𒅒🔰播放热歌▶️🔰𒅒",
   "𒅒🔰️停止播放⏸🔰𒅒",
   "𒅒🔰️返回主页️❌🔰𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main() end
XGCK=-6
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

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function setvalue(address,flags,value) PS("修改地址数值(地址,数值类型,要修改的值)") local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
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
function PS() end function setvalue(address,flags,value) PS("修改地址数值(地址,数值类型,要修改的值)") local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function ntr(add,off,fla,set,fr)if type(add)~="table"then add={{address=add}}end
if #add==0 or not add[1].address then return end
if type(fla)~="table"then fla={fla}end
if type(off)~="table"then off={off}end
if type(set)~="table"then set={set}end
if type(fr)~="table"then fr={fr}end
local dj for i,v in pairs(fr)do
if v then dj=1 break end end
local a,b=gg.getValues({[1]={address=add[1].address,flags=4}})[1].value,{}
for i,v in ipairs(off)do
b[i]={flags=fla[i]or fla[1],freeze=fr[i]}
b[i].address=(a<0)and a+4294967296+v or a+v
b[i].value=set[i]or set[1]
if b[i].address<9999 then b[i]=nil end end
local se=gg.getValues(b)
if #se==0 then return end
if #fr~=0 then gg.addListItems(b)end
if #set~=0 then if not dj then gg.removeListItems(b)end gg.setValues(b)end
return se end


while true do if gg.isVisible(true) then FX1 = nil gg.setVisible(false) end
if FX1 == nil then  Main()  end  end
