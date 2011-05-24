package br.clicaqui.model
{
	
	
	import com.adobe.cairngorm.model.IModelLocator;
	
	import flash.sampler.Sample;
	
	import mx.collections.ArrayCollection;
   
  	[Bindable]
	public class ModelLocator implements IModelLocator
	{
 		
  		
  		// ***********************
  		// Variaveis de Dominio
  		// ************************
  		public var avaliacoes        : ArrayCollection = new ArrayCollection;
  		public var categorias        : ArrayCollection = new ArrayCollection;
  		public var programas        : ArrayCollection = new ArrayCollection; 

  		// ***********************
  		// Variaveis do Usuario
  		// ************************
		public var autenticado 	: Boolean = false;
		public var _userRoles        : Array = new Array;
		public var usuarios        : ArrayCollection = new ArrayCollection;
  		public var _userMetas        : ArrayCollection = new ArrayCollection;
  		public var _userProgramas : ArrayCollection = new ArrayCollection;
		public var _userAvaliacoes : ArrayCollection = new ArrayCollection;
	    // **********************************************************
	    // Singleton methods
	    // **********************************************************
	    
	    /**
	     * This returns and instance of the custom ModelLocator. 
	     * @return ModelLocator
	     */
	    public static function getInstance() : br.clicaqui.model.ModelLocator {
	      
			if ( __modelLocator == null ) {
				__modelLocator = new br.clicaqui.model.ModelLocator(new ConstructorBlock);
			}
	
			return __modelLocator;
		}
     
     	/**
     	 * Default constructor.
     	 * @param block Private class required. 
     	 *              Prevents public, direct instantiation of multiple instances
     	 */
		public function ModelLocator(block:ConstructorBlock) {
       	
			if ( ModelLocator.__modelLocator != null ) {
				throw new Error( "Only one ModelLocator instance should be instantiated" );   
			} 
			br.clicaqui.model.ModelLocator.__modelLocator = this;
		}
  
		// **********************************************************
	    // Singleton attribute
	    // **********************************************************
	    
	    private static var __modelLocator : br.clicaqui.model.ModelLocator = null;


	}
}

// Declared outside package so it can be used 
// to prevent direct construction of ModelLocator instances
class ConstructorBlock {  }