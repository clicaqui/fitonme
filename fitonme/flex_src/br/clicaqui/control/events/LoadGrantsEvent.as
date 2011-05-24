package br.clicaqui.control.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;
		
	public class LoadGrantsEvent extends CairngormEvent
	{
		static public var EVENT_NAME : String = "loadGrants";
		
		public var login : String = "";
		public var senha : String = "";
		 
		public function LoadGrantsEvent( bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(EVENT_NAME, bubbles, cancelable);
			//this.login = login;
		}
		
		public override function clone(): Event
		{
			return new LoadGrantsEvent( bubbles, cancelable);
		}
		
	}

}