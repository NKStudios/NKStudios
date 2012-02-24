---
layout: default
title: Documentation - NKStudios
breadcrumbs: Menu Manager
---
##Synopsis
<pre class="actionscript">
import com.tencent.fge.engine.ui.menu.MenuManager;
import com.tencent.fge.engine.ui.menu.Menu;
import com.tencent.tnt.ui.data.MenuID;<br>
public class PanelMenu
{
    private var m_menu:Menu;
    private var m_mgrMenu:MenuManager;
    
    public function initialize(menuMgr:MenuManager):void
	{
        m_mgrMenu = menuMgr;
        m_menu = m_mgrMenu.createMenu(MenuID.MENU_PLAYER_BATTLE);
        m_menu.addMenuItem("openUserPanel", "View Profile", 1, null);
        m_menu.addMenuItem("addFriend", "Add Friend", 2, null);
        m_menu.addMenuItem("setChatWidth", "Chat With", 3, null);
        m_menu.setMenuItemEnable("addFriend", true);
    }
	
    public function show(stageX:int, stageY:int, seatIndex:Object):void
	{
        m_menu.hide();
        m_menu.popup(stageX, stageY, seatIndex, onMenuItemClicked);
    }

	private function onMenuItemClicked(menuEvent:MenuEvent):void
	{
		switch (menuEvent.id)
		{
			case "openUserPanel":
				// do something when click "View Profile".
				break;
				
			case "addFriend":
				// do something
				break;
				
			case "setChatWidth":
				// do something
				break;
	}
	
    public function finalize():void
	{
        m_mgrMenu.releaseMenu("PlayerMenu");
        m_mgrMenu = null;
    }
}
</pre>

##Menu Manager
###initialize()
* menuConfig:MenuConfig=null - as default menu config.

###createMenu()
* menuName:String - the unique menu id name.
* menuConfig:MenuConfig=null

###releaseMenu()
* menuName:String

###addMenu()
* menu:Menu

###removeMenu()
* menu:Menu

###getMenu()
* menuName:String


##Menu
###create()
* stage:DisplayObjectContainer
* container:DisplayObjectContainer
* menuName:String
* menuConfig:MenuConfig=null

###release()
###setTextFormat()
* textFormat1:TextFormat
* textFormat2:TextFormat
* textFormat3:TextFormat
* textFormat4:TextFormat

###setTexture()
* texListBg:Class
* texItemBg1:Class
* texItemBg2:Class
* texItemBg3:Class
* texItemBg4:Class
* texItemIconChild:Class

###setContainerSize()
* width:Number
* height:Number

###addMenuItem()
* itemName:String
* label:\*
* priority:int
* listener:Function

###removeMenuItem()
* itemName:String

###getMenuItem()
* itemName:String

###setMenuItemState()
* itemName:String
* state:int

###setMenuItemEnable()
* itemName:String
* enable:Boolean

###get hasPopup()
###popup()
* x:Number
* y:Number
* menuTarget:Object=null
* listener:Function=null

###hide()

##MenuEvent
* `menuTarget`:Object = null
* `id`:String = ""
* `item`:MenuItem
* `label`:\*
* `menu`:Menu
* `userdata`:\*
