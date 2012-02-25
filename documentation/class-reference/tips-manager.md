---
layout: default
title: Documentation - NKStudios
breadcrumbs: Tips Manager
---
##Synopsis
There have two way to use TipsManager. One add tips for specified object by using `addTipsObject()` mothod. this use default `ITipsSprite` has the type `TipsID.TIPS_TOOL`.
<pre class="actionscript">
public class MallDialog extends UISprite
{
	private var m_tipMgr:TipsManager;
	private var m_btnRestore:SimpleButton;<br>
	override public function init():void
	{
		m_tipMgr = TipsManager.getInstance();
		m_tipMgr.addTipsObject(m_btnRestore, "&lt;font size='12'>Restore Avatar&lt;font>");
	}
}
</pre>

One add tips ui with implements `ITipsSprite` by using `addTipsUI()` mothod. this use your own `ITipsSprite` has the type you define in `com.tencent.tnt.ui.data.TipsID`.

<pre class="actionscript">
//In com.tencent.tnt.component.ComponentManager.as create it.
public function initialize():void
{
	var tipsMgr:TipsManager = TipsManager.getInstance();
	tipsMgr.addTipsUI(TipsID.TIPS_SKILL, getTipsUI(TipsID.TIPS_SKILL));
	tipsMgr.addTipsUI(TipsID.TIPS_TOOL, getTipsUI(TipsID.TIPS_TOOL));
	tipsMgr.setDefaultTipsUI(getTipsUI(TipsID.TIPS_TOOL));
}

public class BaseTipsUI extends UISprite implements ITipsSprite
{
	override public function show():void
	{
	}
	
	override public function hide():void
	{
	}
	
	public function popup(popUpX:int, popUpY:int, wScreen:int, hScreen:int):void
	{
	}
	
	public function setTextTips(_tips:String):void
	{
	}
	
	public function setRichTips(_tips:DisplayObject):void
	{
	}
	
	public function setUserTips(_tips:*):void
	{
	}
}

// In you module, use it like this.
tipsMgr.addTipsObject(m_btnRestore, skillInfo, TipsID.TIPS_SKILL);
</pre>

##TipsManager
###initialize()
* tipsDefaultUI:ITipsSprite=null
* tipsdata:String="tipsdata"
* tipstype:String="tipstype"

###setDefaultTipsUI()
* tipsDefaultUI:ITipsSprite

###addTipsUI()
* tipsName:String
* tipsSprite:ITipsSprite

###removeTipsUI()
* tipsName:String

###addTipsObject()
* target:DisplayObject
* tipsdata:\*
* tipstype:\*=null
###removeTipsObject()
* target:DisplayObject

##ITipsSprite
###popup()
* popUpX:int
* popUpY:int
* wScreen:int
* hScreen:int

###show()
###hide()
###setTextTips()
* tips:String

###setRichTips()
* tips:DisplayObject

###setUserTips()
* tips:\*
