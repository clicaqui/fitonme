package br.clicaqui.control.command
{
	import br.clicaqui.control.delegates.UsuarioDelegate;
	import br.clicaqui.control.events.*;
	import br.clicaqui.model.ModelLocator;
	import br.clicaqui.model.vo.AuthorizationData;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
		
	public class UsuarioCommand implements ICommand, IResponder
	{
	  public function execute( event : CairngormEvent ) : void
	  {
	  		switch(event.type) {
				case LoadGrantsEvent.EVENT_NAME   	:    	loadGrants(event as LoadGrantsEvent);		break;
				default 							:		break;
			}
 	
	  }
	  private function loadGrants(event:LoadGrantsEvent):void {
			var handlers : IResponder = new mx.rpc.Responder(onResults_loadGrants,fault);
			getDelegate(handlers).loadGrants();
	  }

	  
		// *************************************************************
		// Private Event Handlers
		// *************************************************************
		private function onResults_loadGrants(data:Object):void {

			//__model.CURRENT_VIEW = "home";
			__model._userRoles = (data as AuthorizationData).roles;
			__model.usuario = (data as AuthorizationData).username;
			//__model.autenticado = true;

		}	  

		// *************************************************************
		// IResponder Interface Method stubs
		// *************************************************************
		
		// Stubs required for IResponder interface; need as Delegate constructor argument
		public function fault(info  :  Object)  :  void {	Alert.show(info.toString());		}
		public function result(data :  Object)  :  void {   /* no longer used */ 				}


		// *************************************************************
		// Private Utility methods and Attributes
		// *************************************************************

		/**
		  * Convenience method to create instance of CatalogDelegate
		  * @param handler Handlers for CatalogDelegate asynchronous notifications
		  */
		private function getDelegate(handler:IResponder):UsuarioDelegate {
			return (new UsuarioDelegate(handler));
		}
		
		/**
		  * Alias to the singleton instance
		  */
		private var __model : ModelLocator = ModelLocator.getInstance();

	}
}