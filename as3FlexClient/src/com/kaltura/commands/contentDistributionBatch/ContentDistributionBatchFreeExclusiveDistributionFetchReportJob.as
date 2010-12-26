package com.kaltura.commands.contentDistributionBatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.contentDistributionBatch.ContentDistributionBatchFreeExclusiveDistributionFetchReportJobDelegate;
	import com.kaltura.net.KalturaCall;

	public class ContentDistributionBatchFreeExclusiveDistributionFetchReportJob extends KalturaCall
	{
		public var filterFields : String;
		public function ContentDistributionBatchFreeExclusiveDistributionFetchReportJob( id : int,lockKey : KalturaExclusiveLockKey,resetExecutionAttempts : Boolean=false )
		{
			service= 'contentdistribution_contentdistributionbatch';
			action= 'freeExclusiveDistributionFetchReportJob';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'resetExecutionAttempts' );
			valueArr.push( resetExecutionAttempts );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new ContentDistributionBatchFreeExclusiveDistributionFetchReportJobDelegate( this , config );
		}
	}
}
