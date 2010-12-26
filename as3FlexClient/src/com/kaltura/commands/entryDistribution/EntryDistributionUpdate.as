package com.kaltura.commands.entryDistribution
{
	import com.kaltura.vo.KalturaEntryDistribution;
	import com.kaltura.delegates.entryDistribution.EntryDistributionUpdateDelegate;
	import com.kaltura.net.KalturaCall;

	public class EntryDistributionUpdate extends KalturaCall
	{
		public var filterFields : String;
		public function EntryDistributionUpdate( id : int,entryDistribution : KalturaEntryDistribution )
		{
			service= 'contentdistribution_entrydistribution';
			action= 'update';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(entryDistribution,'entryDistribution');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new EntryDistributionUpdateDelegate( this , config );
		}
	}
}
