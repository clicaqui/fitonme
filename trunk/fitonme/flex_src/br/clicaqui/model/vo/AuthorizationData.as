package br.clicaqui.model.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="br.clicaqui.security.vo.AuthorizationData")]	
	public class AuthorizationData
	{
		public function AuthorizationData()
		{
		}
		public var username:String;	
		public var roles:Array;

	}
}