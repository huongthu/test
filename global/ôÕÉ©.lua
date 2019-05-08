Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


Shijin2mijian=50
Mijian2babao=30
Babao2baiguo=30
Baiguo2shuijing=30
Shuijing2quyuan=3


function main()
	local nNpcIndex = GetLastDiagNpc();
	local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))

	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<npc>��Ҷ�����ɩ. "
	G_TASK:OnMessage("����", tbDailog, "DialogWithNpc")
	tbDailog:Show()
end

function aboutluckyzongzi()
	Talk(1,"","�������������������������ʱ�����������һ���µ�����Ʒ�֣��Թ��˿�������30�������ֵ������Ŀǰ����ССȱ�ݣ�ֻ���ڳ����ӵĵط��������ã�����Ȥ�����ѿ�������һ�¡�")
end


function listen()
	Talk(1,"talk2","�������ԭ��ս�������Ĵ󳼡����������ܣ����������巴�ԣ������������������������У�д�¡���ɧ����ʫƪ����������ƣ���ԭ��ϵ����������³�������д�¾��ʡ���ɳ���󣬱�ʯͶ���޽�������")
end;

function talk2()
	Talk(1,"talk3","�������ԭ���󣬰��հ�ʹ�쳣���׷�ӿ�����޽���ȥƾ����ԭ������ó�Ϊ��ԭ׼���ķ��ŵ�ʳ�ﶪ�����������Ϻз�Ա��ˣ��Ͳ���ȥҧ��ԭ�������ˡ���Ϊ�·���Ϊ������ʳ��������������Ҷ�����������˿���������ӡ�")
end;

function talk3()
	Talk(1,"","������Ժ���ÿ������³��壬���������۾��ɡ������ӵķ��ף��Դ���������ԭ�������Ƕ���ڵ�������")
end

function lucky()
	if (GetExtPoint(6) >= 32768) then	
		Talk(1,"","������㲻����ȡ����Ŵ�ף�")
--		SetExtPoint(6,0)
		WriteLog(date("%H%M%S").."���˺�"..GetAccount().."����ɫ"..GetName().."����ȡ����Ŵ��ʧ�ܣ�״̬�쳣��")
	else
		Say("�������Ҫ��ȡ���ٸ�����Ŵ�ף�",3,"��ȡʮ������Ŵ��/lucky10","��ȡһ������Ŵ��/lucky1","ʲô������/no")
	end
end

function lucky10()
	if (GetExtPoint(6) >= 10) then	
		for i=1,10 do
			AddEventItem(405)			
			PayExtPoint(6,1)
		end
		Msg2Player("��õ�ʮ������Ŵ��")
		WriteLog(date("%H%M%S").."���˺�"..GetAccount().."����ɫ"..GetName().."����ȡ��10������Ŵ�ס�")
	else
		Talk(1,"","������㲻����ȡ��ô������Ŵ�ף�")
	end
end

function lucky1()
	if (GetExtPoint(6) > 0) then
		AddEventItem(405)
		PayExtPoint(6,1)
		Msg2Player("��õ�һ������Ŵ��")
		WriteLog(date("%H%M%S").."���˺�"..GetAccount().."����ɫ"..GetName().."����ȡ��1������Ŵ�ס�")
	else
		Talk(1,"","������㲻����ȡ����Ŵ�ף�")
	end
end

function make()
	i=GetCash()
	if (i>=2000) then
	  Say("������͹٣���һ������Ҫ2000�����ӣ���֪��Ҫ��ʲô���ӣ�",7,"��������/yes1","��������/yes2","��������/yes3","ţ������/yes4","ʲ������/yes5","��������/luckyzongzi","ʲô������/no")
	else
	  Talk(1,"","������͹٣���һ������Ҫ2000�����ӣ����Ǯ���񲻹����ǲ���������������")
	end
end;

function luckyzongzi()
	if ((GetItemCountEx(394)>=1) and (GetItemCountEx(395)>=1) and (GetItemCountEx(396)>=1) and (GetItemCountEx(405)>=1) and (GetItemCountEx(397)>=1) and (GetItemCountEx(398)>=1) and (GetItemCountEx(399)>=1)) then 
		Talk(1,"","����������ˣ��㿴�����������⡣")
	  	DelItemEx(394)
	  	DelItemEx(395)
	  	DelItemEx(396)
	  	DelItemEx(405)
	  	DelItemEx(397)
	  	DelItemEx(398)
	  	DelItemEx(399)
	  	AddItem(6,0,70,1,0,0,0)
	  	Msg2Player("��õ���������")
		WriteLog(date("%H%M%S").."���˺�"..GetAccount().."����ɫ"..GetName().."��������һֻ�������ӡ�")
		Pay(2000)
	else
	  	Talk(1,"","�����������������Ҫ���桢���������ס����⡢��Ҷ��ţ���һ�ݺ�<color=red>һ������Ŵ��<color>����Ĳ��Ϻ��񲻹�����")
	end
end;

function yes1()
	if ((GetItemCountEx(394)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2)) then
	  Talk(1,"","����������ˣ��㿴�����������⡣")
	  DelItemEx(394)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(394)
	  DelItemEx(396)
	  DelItemEx(397)
	  AddItem(1,7,0,1,0,0,0)
	  Pay(2000)
	  Msg2Player("��õ���������")
	else
	  Talk(1,"","�����������������Ҫ���桢���׺���Ҷ�����ݣ���Ĳ��Ϻ��񲻹�����")
	end
end;

function yes2()
	if ((GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2)) then
	  Talk(1,"","����������ˣ��㿴�����������⡣")
	  DelItemEx(395)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(395)
	  DelItemEx(396)
	  DelItemEx(397)
	  AddItem(6,0,60,1,0,0,0)
	  Pay(2000)
	  Msg2Player("��õ���������")
	else
	  Talk(1,"","�����������������Ҫ���������׺���Ҷ�����ݣ���Ĳ��Ϻ��񲻹�����")
	end
end;

function yes3()
	if ((GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(398)>=2)) then 
	  Talk(1,"","����������ˣ��㿴�����������⡣")
	  DelItemEx(395)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(398)
	  DelItemEx(395)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(398)
	  AddItem(6,0,61,1,0,0,0)
	  Pay(2000)
	  Msg2Player("��õ���������")
	else
	  Talk(1,"","�����������������Ҫ���������⡢���׺���Ҷ�����ݣ���Ĳ��Ϻ��񲻹�����")
	end
end;


function yes4()
	if ((GetItemCountEx(394)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(399)>=2)) then 
	  Talk(1,"","����������ˣ��㿴�����������⡣")
	  DelItemEx(394)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(399)
	  DelItemEx(394)
	  DelItemEx(396)
	  DelItemEx(397)
	  DelItemEx(399)
	  AddItem(6,0,62,1,0,0,0)
	  Pay(2000)
	  Msg2Player("��õ�ţ������")
	else
	  Talk(1,"","�������ţ��������Ҫţ�⡢���桢���׺���Ҷ������,��Ĳ��Ϻ��񲻹�����")
	end
end;


function yes5()
	Say("����������͹�˵����ʲ���������洫�������ط�����Ҳû�ж����գ�������������������������̣�˲�����Ҳ��Թ�ң��ɲ��ɣ�",2,"��/yes6","����/no")
end;

function yes6()
	if ((GetItemCountEx(394)>=2) and (GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(398)>=2) and (GetItemCountEx(399)>=2)) then 
	  i=random(1,100)
	  if (i<=30) then	
	    Talk(1,"","����������ˣ��㿴�����������⡣")
	    DelItemEx(394)
	    DelItemEx(394)
	    DelItemEx(395)
	    DelItemEx(395)
	    DelItemEx(396)
	    DelItemEx(396)
	    DelItemEx(397)
	    DelItemEx(397)
	    DelItemEx(398)
	    DelItemEx(398)
	    DelItemEx(399)
	    DelItemEx(399)
	    AddItem(6,1,63,1,0,0,0)
	    Msg2Player("��õ�ʲ������")
	    Pay(2000)
	  else
	    Talk(1,"","�����������˼����������ˡ�")
	    DelItemEx(394)
	    DelItemEx(394)
	    DelItemEx(395)
	    DelItemEx(395)
	    DelItemEx(396)
	    DelItemEx(396)
	    DelItemEx(397)
	    DelItemEx(397)
	    DelItemEx(398)
	    DelItemEx(398)
	    DelItemEx(399)
	    DelItemEx(399)
	    Pay(2000)
	  end
	else
	  Talk(1,"","�������ʲ��������Ҫ���桢���������ס����⡢ţ�����Ҷ�����ݣ���Ĳ��Ϻ��񲻹�����")
	end
end;

function skill()
	i=GetCash()
	if (i>=1000) then
	  if (GetItemCountEx(394) >= 1) then
	  		SetTaskTemp(51,394)
	  elseif (GetItemCountEx(395) >= 1) then
	  		SetTaskTemp(51,395)
	  elseif (GetItemCountEx(396) >= 1) then
	  		SetTaskTemp(51,396)
	  elseif (GetItemCountEx(397) >= 1) then
	  		SetTaskTemp(51,397)
	  elseif (GetItemCountEx(398) >= 1) then
	  		SetTaskTemp(51,398)
	  elseif (GetItemCountEx(399) >= 1) then
	  		SetTaskTemp(51,399)
	  end
	  Say("����������Ͼ���Ϊ�ʹ�����Ʒ���յģ������������Ӷ����˼���ζ��ֻ�������յ������ʧ���ò���ˣ������ϵĻ����ҿ��԰������е�ʲ�����ӵ��Ƴɴ�˵�еĹ�Ʒ���գ�ֻ����1000���ӡ���֪��Ҫ�ӹ�ʲô�����أ�",6,"�۽�ʲ������/yes7","�˱�ʲ������/yes8","�ٹ�ʲ������/yes9","ˮ��ʲ������/yes10","��ԭʲ������/yes11","ʲô������/no")
	else
	  Talk(1,"","������͹٣��ӹ�һ������Ҫ1000�����ӣ����Ǯ���񲻹��������´������ɡ�")
	end
end;

function yes7()
	flag=nil
	local temp=Shijin2mijian
	if ((HaveCommonItem(6,1,63)>0) and (GetTaskTemp(51) > 0)) then 
		if(GetItemCountEx(404)>0) then
			flag=1
			temp=Shijin2mijian+10
		end
		Talk(1,"","���Ե�Ƭ�̡�")
	    	DelItemEx(GetTaskTemp(51))
	  	i=random(1,100)
	  	if (i<=temp) then	
	    		Talk(1,"","������洫�����չ�Ȼû���������������۽�ʲ�������ˣ�")
	    		DelCommonItem(6,1,63)
	    		AddItem(6,1,64,1,0,0,0)
	    		Pay(1000)
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ��۽�ʲ������")
	  	else
	    		Talk(1,"","�����ʧ���ˣ���ô�õ����ӱ����Ͳ��������������ģ�ֻ�ܻ��������ʲ�������ˡ�")
	    		Pay(1000)
	    		Msg2Player("��õ�ʲ������")
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	  	end
	else
	  	Talk(1,"","��������۽�ʲ��������Ҫһ��ʲ�����Ӻ�����һ�����Ӳ��ϣ���Ĳ��Ϻ��񲻹�����")
	end
end;

function yes8()
	flag=nil
	local temp=Mijian2babao
	if ((HaveCommonItem(6,1,64)>0) and (GetTaskTemp(51) > 0)) then 
		if(GetItemCountEx(404)>0) then
			flag=1
			temp=Mijian2babao+20
		end
	  	Talk(1,"","���Ե�Ƭ�̡�")
	    	DelItemEx(GetTaskTemp(51))
	  	i=random(1,100)
	  	if (i<=temp) then	
	    		Talk(1,"","������洫�����չ�Ȼû���������������˱�ʲ�������ˣ�")
	    		DelCommonItem(6,1,64)
	    		AddItem(6,1,65,1,0,0,0)
	    		Pay(1000)
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ��˱�ʲ������")
  	  	else
	    		Talk(1,"","�����ʧ���ˣ���ô�õ����ӱ����Ͳ��������������ģ�ֻ�ܻ��������ʲ�������ˡ�")
	    		DelCommonItem(6,1,64)
	    		AddItem(6,1,63,1,0,0,0)
	    		Pay(1000)
	    		Msg2Player("��õ�ʲ������")
	    		if(flag) then
	    			DelItemEx(404)
	    		end
  	  	end
	else
	  	Talk(1,"","��������˱�ʲ��������Ҫһ���۽�ʲ�����Ӻ�����һ�����Ӳ��ϣ���Ĳ��Ϻ��񲻹�����")
	end
end;


function yes9()
	flag=nil
	local temp=Babao2baiguo
	if ((HaveCommonItem(6,1,65)>0) and (GetTaskTemp(51) > 0)) then 
		if(GetItemCountEx(404)>0) then
			flag=1
			temp=Babao2baiguo+10
		end
	  	Talk(1,"","���Ե�Ƭ�̡�")
	    	DelItemEx(GetTaskTemp(51))
	  	i=random(1,100)
	  	if (i<=temp) then	
	    		Talk(1,"","������洫�����չ�Ȼû���������������ٹ�ʲ�������ˣ�")
	    		DelCommonItem(6,1,65)
	    		AddItem(6,1,66,1,0,0,0)
	    		Pay(1000)
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ��ٹ�ʲ������")
	  	else
	    		Talk(1,"","�����ʧ���ˣ���ô�õ����ӱ����Ͳ��������������ģ�ֻ�ܻ��������ʲ�������ˡ�")
	    		DelCommonItem(6,1,65)
	    		AddItem(6,1,63,1,0,0,0)
	    		Pay(1000)
	    		Msg2Player("��õ�ʲ������")
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	  	end
	else
	  	Talk(1,"","��������ٹ�ʲ��������Ҫһ�ݰ˱�ʲ�����Ӻ�����һ�����Ӳ��ϣ���Ĳ��Ϻ��񲻹�����")
	end
end;

function yes10()
	flag=nil
	local temp=Baiguo2shuijing
	if ((HaveCommonItem(6,1,66)>0) and (GetTaskTemp(51) > 0)) then 
		if(GetItemCountEx(404)>0) then
			flag=1
			temp=Baiguo2shuijing+5
		end
	  	Talk(1,"","���Ե�Ƭ�̡�")
	    	DelItemEx(GetTaskTemp(51))
	  	i=random(1,100)
	  	if (i<=temp) then	
	    		Talk(1,"","������洫�����չ�Ȼû��������������ˮ��ʲ�������ˣ�")
	    		DelItemEx(398)
	    		DelItemEx(399)
	    		DelCommonItem(6,1,66)
	    		AddItem(6,1,67,1,0,0,0)
	    		Pay(1000)
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ�ˮ��ʲ������")
	  	else
	    		Talk(1,"","�����ʧ���ˣ���ô�õ����ӱ����Ͳ��������������ģ�ֻ�ܻ��������ʲ�������ˡ�")
	    		DelCommonItem(6,1,66)
	    		AddItem(6,1,63,1,0,0,0)
	    		Pay(1000)
	    		if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ�ʲ������")
	  	end
	else
	  	Talk(1,"","�������ˮ��ʲ��������Ҫһ�ݰٹ�ʲ�����Ӻ�����һ�����Ӳ��ϣ���Ĳ��Ϻ��񲻹�����")
	end
end;



function yes11()
	flag=nil
	local temp=Shuijing2quyuan
	if ((HaveCommonItem(6,1,67)>0) and (GetTaskTemp(51) > 0)) then 
		if (GetItemCountEx(404)>0) then
			flag = 1
			temp = Shuijing2quyuan + 3
		end
		Talk(1,"","���Ե�Ƭ�̡�")
	   	DelItemEx(GetTaskTemp(51)) 
	  	i = random(1,100)
	  	if (i<=temp) then	
	   		Talk(1,"","��������Ǵ�˵�е���ԭʲ������ѽ��������ʵ�������ϵ���������������ˣ�")
		        DelCommonItem(6,1,67)
		        sel=AddItem(6,1,68,1,0,0,0)
		        time=GetItemGenTime(sel)
		        name=GetName()
	   	 	Pay(1000)
	   	 	if(flag) then
	    			DelItemEx(404)
	    		end
	    		Msg2Player("��õ���ԭʲ������")
	    		n = GetGlbValue(1)+1
	    		SetGlbValue(1,n)
				WriteLog(date("%H%M%S").."���˺�"..GetAccount().."����ɫ"..GetName().."�������ɹ�һֻ��ԭ���ӣ�������ԭʲ�����ӵĸ���Ϊ"..n.."ֻ��")
    			AddGlobalNews("��������ߴ��һ������Ϣ����˵�е���ԭ�����Ѿ�������������ˣ���Ҽ���Ŭ������")
		else
			Talk(1,"","�����ʧ���ˣ���ô�õ����ӱ����Ͳ��������������ģ�ֻ�ܻ��������ʲ�������ˡ�")
			DelCommonItem(6,1,67)
			AddItem(6,1,63,1,0,0,0)
			Pay(1000)
			if(flag) then
	    			DelItemEx(404)
	    		end
			Msg2Player("��õ�ʲ������")
		end
	else
		Talk(1,"","���������ԭʲ��������Ҫһ��ˮ��ʲ�����Ӻ�����һ�����Ӳ��ϣ���Ĳ��Ϻ��񲻹�����")
	end
end


function quyuan()
	Talk(1,"","�������ԭ�ط������������������鼮����������˼ӹ�ʲ�����ӵĲ������ţ���ϧ����ʧ���ڳ������ˣ����ǻ������ȥ���ҿ���Ӧ�û����ջ�ġ�")
end;

function no()
end;
