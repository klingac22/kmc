package com.kaltura.kmc.modules.analytics.model.reports
{
	import mx.resources.ResourceManager;
	
	[Bindable]
	public class AggregateHeaders
	{
		public var topContent : Array = [ 'count_plays','sum_time_viewed','avg_time_viewed','count_loads','load_play_ratio']; //,'distinct_plays'
		public var contentDropoff : Array = [ 'count_plays','count_plays_25','count_plays_50','count_plays_75','count_plays_100','play_through_ratio'];
		public var contentInteraction : Array = [ 'count_plays','count_edit','count_viral','count_download','count_report'];
		public var contentContributions : Array = [ 'count_total','count_video','count_audio','count_image','count_mix','count_ugc','count_admin'];
		public var topContrib : Array = [ 'count_total','count_video','count_audio','count_image','count_mix'];
		public var mapOverlay : Array = [ 'count_plays','count_plays_25','count_plays_50','count_plays_75','count_plays_100','play_through_ratio'];
		public var syndicator : Array = [ 'count_plays','sum_time_viewed','avg_time_viewed','count_loads','load_play_ratio']; //,'distinct_plays'
	}
}