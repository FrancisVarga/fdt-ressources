package @namespace@.views.maincontainer
{
	import de.basilicom.core.basMVCS.BasEvent;

	import mx.core.UIComponent;

	import flash.events.Event;

	/**
	 * @author Francis Varga
	 */
	public class MainContainerEvent extends BasEvent
	{
		public static const SHOW_POPUP_UI : String = "de.basilicom.familienministerium.forum.cms.mvcs.views.maincontainer.MainContainerEvent.SHOW_UI";
		public static const CLEAR_POPUP_LAYER : String = "CLEAR_POPUP_LAYER";
		
		public static const SHOW_ALERT_UI : String = "SHOW_ALERT_UI";
		public static const CLEAR_ALERT_LAYER : String = "CLEAR_ALERT_LAYER";
		
		private var _showUI : UIComponent;

		public function MainContainerEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		override public function clone() : Event
		{
			var event : MainContainerEvent = new MainContainerEvent(this.type);
			event.showUI = this.showUI;
			event.data = this.data;
			return event;
		}

		public function setShowUI(value : UIComponent) : MainContainerEvent
		{
			_showUI = value;
			return this;
		}

		public function get showUI() : UIComponent
		{
			return _showUI;
		}

		public function set showUI(showUI : UIComponent) : void
		{
			_showUI = showUI;
		}
	}
}
