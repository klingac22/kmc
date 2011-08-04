package com.kaltura.kmc.modules.content.model.types
{
	/**
	 * the different "entry types" an entry details window can show 
	 * @author Atar
	 */
	public class EntryDetailsWindowState {
		
		/**
		 * normal entry drilldown 
		 */		
		public static const NORMAL_ENTRY:String = "normal_entry";
		
		/**
		 * drilldown to a new entry, when closing the window without "save"
		 * the user will be asked if they want to save the entry 
		 */		
		public static const NEW_ENTRY:String = "new_entry";
		
		/**
		 * drilldown to media replacement entry 
		 * (entry that was created as result of  
		 * media replacement of another entry) 
		 */		
		public static const REPLACEMENT_ENTRY:String = "replacement_entry";
		
		/**
		 * drilldown to an entry that a clip was created from.
		 */		
		public static const ROOT_ENTRY:String = "root_entry";
		
	}
}