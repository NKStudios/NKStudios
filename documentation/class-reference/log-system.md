---
layout: default
title: Documentation - NKStudios
breadcrumbs: LogSystem
---
##Description
You can use `LogSystem` with static method like this:
<pre class="actionscript">
class TestA
{
	private function TestFunction():void
	{
		Log.trace("TestA.TestFunction", "this is a test trace log.");
	}
}
</pre>
See details in [Main Static Function](#main_static_function).

Also, you can also use `LogSystem` with a class's member variable like this:
<pre class="actionscript">
class TestA
{
	private var m_log:Log;<br>
	public function TestA():void
	{
		m_log = new Log(this);
		m_log.trace("TestA", "this is a test trace log.");
	}
}
</pre>
See details in [Main Functions](#main_functions).

**Note**: All log will be write to `Flash Builder Console` by default.

##Module Definition
`import com.tencent.fge.foundation.log.client`

Log config in `plugin.xml` file `<Config> -> <Global> -> <Log />` tag:
* `useConfig="true"` - for using `plugin.xml`'s log config.
* `logTarget="0"` - for using specify the target type
* `so="tnt,7"` - when `outTarget` is `Log.OUT2SO`, this has two param:`name = "tnt"` is the name of the game in the `SLLog, `.`keepDate = 7`, the date of the log saved in local as `SharedObject`.
* `trace="true"` - for open `Log.trace()` log.
* `warn="true"` - for open `Log.warn()` log.
* `error="true"` - for open `Log.error()` log.
* `debug="true"` - for open `Log.debug()` log.
* `exthrow="false"` - for open `Log.exthrow()` log.

##Main Static Function
###Log.initialize(useConfig, outTarget, customOutput, param)
* `useConfig:Boolean` - `true` for using Log config in `plugin.xml`
* `outTarget:int`
* `customOutput:ICustomOutput=null`
* `param:Object=null`

###Log.setLogTarget(outTarget, param)
* `outTarget:int` - specify the target type of the LogSystem.
	* `Log.OUT2IDE = 0` - write log to `Flash Builder Console` use `trace`.
	* `Log.OUT2LC = 1` - write log use `TCP Socket` to `LogServer`.
	* `Log.OUT2API = 2` - call `javascript`'s `API.log` to write log.
	* `Log.OUT2CUSTOM = 3` - write log use `ICustomOutput` interface.
	* `Log.OUT2SO = 4` - write log use `ShareObject`.
* `param:Object=null`

###Log.setXXXEnable(enable)
Here `XXX` has five function name:
* `Log.setTraceEnable(enable)` - enable trace log.
* `Log.setErrorEnable(enable)` - enable error log.
* `Log.setThrowEnable(enable)` - enable throw log.
* `Log.setDebugEnable(enable)` - enable debug log.
* `Log.setWarnEnable(enable)` - enable warn log.

###Log.XXX(funName, ... args)
Here `XXX` has five function name:
* `Log.trace(funName, ... args)` - write trace log with `funName` and `args`.
* `Log.error(funName, ... args)` - write error log with `funName` and `args`.
* `Log.exthrow(funName, ... args)` - write exthrow log with `funName` and `args`.
* `Log.debug(funName, ... args)` - write debug log with `funName` and `args`.
* `Log.warn(funName, ... args)` - write warn log with `funName` and `args`.

###Log.log(logType, clsName, funName, ... args)
Write log with `logType` and `clsName`, `funName`, `args` where `logType` can be:`"Trace"`, `"Error"`, `"Throw"`, `"Debug"`, `"Warn"` and so on.

###Log.getLSOLogList()
###Log.setCustomOut()
###Log.getAllLogList()
###Log.clearConfig()
###Log.loadConfigContent()
###Log.loadConfig()

##Main Functions
###attachClassName(className)
###getClsName()
###getLogCount()
###XXX(funName, ... args)
Here `XXX` has five function name:
* `trace(funName, ... args)` - write trace log with `funName` and `args`.
* `error(funName, ... args)` - write error log with `funName` and `args`.
* `exthrow(funName, ... args)` - write exthrow log with `funName` and `args`.
* `debug(funName, ... args)` - write debug log with `funName` and `args`.
* `warn(funName, ... args)` - write warn log with `funName` and `args`.

###log(logType, clsName, funName, ... args)
Write log with `logType` and `clsName`, `funName`, `args` where `logType` can be:`"Trace"`, `"Error"`, `"Throw"`, `"Debug"`, `"Warn"` and so on.

##Debug Functions
##Utility Functions