package com.kaltura.commands.filesyncImportBatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.filesyncImportBatch.FilesyncImportBatchFreeExclusiveStorageDeleteJobDelegate;
	import com.kaltura.net.KalturaCall;

	public class FilesyncImportBatchFreeExclusiveStorageDeleteJob extends KalturaCall
	{
		public var filterFields : String;
		public function FilesyncImportBatchFreeExclusiveStorageDeleteJob( id : int,lockKey : KalturaExclusiveLockKey,resetExecutionAttempts : Boolean=false )
		{
			service= 'multicenters_filesyncimportbatch';
			action= 'freeExclusiveStorageDeleteJob';

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
			delegate = new FilesyncImportBatchFreeExclusiveStorageDeleteJobDelegate( this , config );
		}
	}
}
