package @namespace@.commands 
{	
	/**
	 *
	 * Defines the associated <code>Command</code> implementation for 
	 * the user gesture.
	 *
	 * <p>
	 * Commands are stateless, short-lived objects used to perform a single unit of work within an application. 
	 * Commands are appropriate for communication between application tiers and are able to send 
	 * system events that will either launch other Commands or be received by a Mediator to perform 
	 * work on a View Component in response to the event. Commands are an excellent place to encapsulate 
	 * the business logic of your application.
	 * </p>
	 *
	 * @see org.robotlegs.mvcs.Command
	 *
	 */
	public final class @gesture@Command extends BasCommand 
	{
		
		import de.basilicom.core.basMVCS.BasCommand;
		
		/**
		 *
		 * Method handle the logic for <code>@gesture@Command</code>
		 *
		 */        
		override public function execute():void    
		{			
		
		}
	}
}