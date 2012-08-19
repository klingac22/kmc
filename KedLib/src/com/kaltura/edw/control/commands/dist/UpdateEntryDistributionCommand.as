package com.kaltura.edw.control.commands.dist
{
	import com.kaltura.commands.entryDistribution.EntryDistributionUpdate;
	import com.kaltura.edw.control.commands.KedCommand;
	import com.kaltura.edw.control.events.EntryDistributionEvent;
	import com.kaltura.edw.model.datapacks.DistributionDataPack;
	import com.kaltura.events.KalturaEvent;
	import com.kaltura.kmvc.control.KMvCEvent;
	import com.kaltura.vo.KalturaEntryDistribution;

	public class UpdateEntryDistributionCommand extends KedCommand
	{
		private var _entryDis:KalturaEntryDistribution;
		
		override public function execute(event:KMvCEvent):void {
			_model.increaseLoadCounter();
			_entryDis = (event as EntryDistributionEvent).entryDistribution;
			_entryDis.setUpdatedFieldsOnly(true);
			var update:EntryDistributionUpdate = new EntryDistributionUpdate(_entryDis.id, _entryDis);
			update.addEventListener(KalturaEvent.COMPLETE, result);
			update.addEventListener(KalturaEvent.FAILED, fault);
			
			_client.post(update);
		}
		
		override public function result(data:Object):void {
			_model.decreaseLoadCounter();
			super.result(data);
			var resultEntry:KalturaEntryDistribution = data.data as KalturaEntryDistribution;
			_entryDis =  resultEntry;
			//for data binding
			var ddp:DistributionDataPack = _model.getDataPack(DistributionDataPack) as DistributionDataPack;
			ddp.distributionInfo.entryDistributions = ddp.distributionInfo.entryDistributions.concat();
		}
	}
}