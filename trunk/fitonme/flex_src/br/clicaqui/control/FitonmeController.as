package br.clicaqui.control
{

   
   import com.adobe.cairngorm.control.FrontController;
   import br.clicaqui.control.command.UsuarioCommand;
   import br.clicaqui.control.events.LoadGrantsEvent;

   public class FitonmeController extends FrontController
   {
      private static var UUID : String = "24b6b6ff-6c36-47bc-9cab-78c1434afb0e";

      public function FitonmeController()
      {
         initialiseCommands();
      }

      private function initialiseCommands() : void
      {
		 addCommand( LoadGrantsEvent.EVENT_NAME, UsuarioCommand );

      }
   }
}
