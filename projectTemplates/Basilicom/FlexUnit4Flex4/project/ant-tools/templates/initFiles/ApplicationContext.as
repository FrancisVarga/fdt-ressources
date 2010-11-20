/*
 * 
 * <p><b>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++</b></p>
 * <p><b>version:</b> 0.0.1</p>
 * <p><b>author:</b> Francis Varga</p>
 * <p><b>eMail:</b> francis.varga[at]basilicom.de</p>
 * <p><b>create-date:Nov 19, 2010</b></p>
 * 
 * <p><b>homepage:</b><a href="http://www.basilicom.de">http://www.basilicom.de</a></p>
 * <p><b>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++</b></p>
 * 
 * <p><b>Modifiedlist:</b></p>
 *   <b>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++</b>
 *   <p>create: Francis Varga</p>
 *   <p>date:Nov 19, 2010</p> 
 *   <p>description:created class</p>
 *
 */
package @namespace@
{
	import @namespace@.commands.StartupCompleteCommand;
	import @namespace@.views.maincontainer.MainContainer;
	import @namespace@.views.maincontainer.MainContainerMediator;

	import de.basilicom.core.events.BasiEvent;
	import de.basilicom.core.BasContext;

	import flash.display.DisplayObjectContainer;

	/**
	 * 
	 * Describe here your class
	 *
	 * @includeExample
	 * path to your example
	 *
	 */
	public class ApplicationContext extends BasContext
	{
		public function ApplicationContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true)
		{
			super(contextView, autoStartup);
		}

		override public function startup() : void
		{
			initCommands();
			initMediators();
			initInjections();
		}

		override protected function initCommands() : void
		{
			// todo: Add Commands
			commandMap.mapEvent(BasiEvent.RESSOURCE_XML_PARSED, StartupCompleteCommand);
			super.initCommands();
		}
		
		override protected function initInjections() : void
		{
			// todo: Add Model
			
			// todo: Add Services
			
			// todo: Add Singleton
		}

		override protected function initMediators() : void
		{
			
			// todo: Add View
			
			mediatorMap.mapView(MainContainer, MainContainerMediator);
		
			super.initMediators();
		}
	}
}
