---
layout: default
title: Documentation - NKStudios
breadcrumbs: Sound Manager
---
##Description
Here has two type `SoundManager` instance:
* `SoundManagerName.BGM` - use for background sound.
* `SoundManagerName.SFX` - use for fx sound.

`SoundManager` initialize like this:
<pre class="actionscript">
SoundManager.getSoundManager(SoundManagerName.SFX)
SoundManager.getSoundManager(SoundManagerName.SFX)
</pre>

<pre class="actionscript">
import com.tencent.fge.engine.sound.SoundManager;
import com.tencent.fge.engine.sound.SoundPlayer;
import com.tencent.tnt.sound.SoundManagerName;<br>
class TestA
{
	private var m_sndGameOver:SoundPlayer;<br>
	private function initialize():void
	{
		m_sndGameOver = SoundManager.createSound(SoundManagerName.SFX);
		m_sndGameOver.url = "assets/battle/ui/gameover.mp3";
		m_sndGameOver.load();
	}<br>
	public function playGameOver():void
	{
		m_sndGameOver.play();
	}<br>
	public function destroy():void
	{
		if (m_sndPlayer)
		{
			SoundManager.cleanSound(SoundManagerName.SFX, m_sndGameOver);
			m_sndGameOver = null;
		}
	}
}
</pre>

##Main Static Function
###getSoundManager()
###createSound()
###playSound()
###stopSound()
###cleanSound()
###cleanAll()
###setVolume()
###getVolume()

##Main Function
###getSoundManager()
###createSound()
###playSound()
###stopSound()
###cleanSound()
###cleanAll()
###setVolume()
###getVolume()