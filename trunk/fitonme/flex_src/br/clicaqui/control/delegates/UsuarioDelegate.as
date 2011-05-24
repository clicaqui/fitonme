package br.clicaqui.control.delegates
{

	
	import br.clicaqui.model.vo.AuthorizationData;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	public class UsuarioDelegate
	{
		public function UsuarioDelegate( responder : IResponder )
		{
			__responder = responder;
		}

		public function loadGrants():void {
			var handlers : IResponder = new mx.rpc.Responder(onResults_loadGrants,null);
			var token    : AsyncToken = service.getUserDetails();
			
			    token.addResponder(handlers);
		}
		

		/*PRIVATE HANDLES METHOD*/
		private function onResults_loadGrants(event:ResultEvent):void {
			var result : AuthorizationData = event.result as AuthorizationData;
			// Notify caller with Products [NOT the ResultEvent)	
			__responder.result(result);
			
			
		}
	
		
		private function get service():RemoteObject {
			if (__service == null) {
				__service = ServiceLocator.getInstance().getRemoteObject("secureService");
			}
			
			return __service; 
		}
		
		private var __service   : RemoteObject = null;
		private var __responder : IResponder  = null;

	}
}