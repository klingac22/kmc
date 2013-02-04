package com.kaltura.kmc.modules.analytics.model.reports {

	[Bindable]
	/**
	 * list of column headers by which the report table cannot be ordered. <br>
	 * values should match those returned from server for the report
	 * 
	 * @see com.kaltura.kmc.modules.analytics.model.reports.TableHeaders
	 * 
	 * @author atar.shadmi
	 *
	 */
	public class UnsortableColumnHeaders {
		public var topContent:Array = ['entry_name'];
		public var topContentPerUser:Array = ['user_id', 'name'];
		public var contentDropoff:Array = ['entry_name'];
		public var contentDropoffPerUser:Array = ['user_id', 'name'];
		public var contentInteraction:Array = ['entry_name'];
		public var contentInteractionPerUser:Array = ['user_id', 'name'];
		public var contentContributions:Array = ["entry_media_source_name"];
		public var topContrib:Array = ['name'];
//		public const mapOverlay:Array;
//		public const syndicator:Array;

//		public const publisherBandwidthNStorage:Array;
		public var endUserStorage:Array = ['NAME', 'name', 'total_entries', 'total_storage_mb', 'total_msecs'];
		public var specificEndUserStorage:Array = ['total_entries', 'total_storage_mb', 'total_msecs'];

		public var userEngagement:Array = ['user_id', 'name'];
		public var userEngagementDrilldown:Array = ['count_video', 'entry_name'];

	}
}
