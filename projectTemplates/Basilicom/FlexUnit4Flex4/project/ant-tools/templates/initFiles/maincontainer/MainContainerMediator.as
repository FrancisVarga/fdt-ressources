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
package @namespace@.views.maincontainer
{
	import de.basilicom.core.basMVCS.BasMediator;

	/**
	 * 
	 * Describe here your class
	 *
	 * @includeExample
	 * path to your example
	 *
	 */
	public class MainContainerMediator extends BasMediator
	{
		override protected function mapViewListener() : void
		{
			
		}
			
		override protected function mapContextListener() : void
		{
			addContextListener(MainContainerEvent.CLEAR_ALERT_LAYER, onClearAlertLayer);
			addContextListener(MainContainerEvent.CLEAR_POPUP_LAYER, onClearPopUpLayer);
			addContextListener(MainContainerEvent.SHOW_ALERT_UI, onShowAlertUI);
			addContextListener(MainContainerEvent.SHOW_POPUP_UI, onShowPopUpUI);
		}

		private function onShowPopUpUI(event : MainContainerEvent) : void
		{
			MainContainer(viewComponent).popUpLayer.addElement(event.showUI);
		}

		private function onShowAlertUI(event : MainContainerEvent) : void
		{
			MainContainer(viewComponent).alertLayer.addElement(event.showUI);
		}

		private function onClearPopUpLayer(event : MainContainerEvent) : void
		{
			MainContainer(viewComponent).popUpLayer.removeAllElements();
		}

		private function onClearAlertLayer(event : MainContainerEvent) : void
		{
			MainContainer(viewComponent).alertLayer.removeAllElements();
		}

	}
}
