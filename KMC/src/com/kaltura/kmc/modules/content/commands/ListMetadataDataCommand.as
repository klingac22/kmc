package com.kaltura.kmc.modules.content.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.kaltura.commands.metadata.MetadataList;
	import com.kaltura.events.KalturaEvent;
	import com.kaltura.kmc.modules.content.model.FilterModel;
	import com.kaltura.kmc.modules.content.utils.FormBuilder;
	import com.kaltura.kmc.modules.content.vo.EntryMetadataDataVO;
	import com.kaltura.types.KalturaMetadataOrderBy;
	import com.kaltura.vo.KMCMetadataProfileVO;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.vo.KalturaMetadata;
	import com.kaltura.vo.KalturaMetadataFilter;
	import com.kaltura.vo.KalturaMetadataListResponse;
	
	import mx.collections.ArrayCollection;
	
	/**
	 * This class sends a metadata data list request to the server and handles the response 
	 * @author Michal
	 * 
	 */	
	public class ListMetadataDataCommand extends KalturaCommand
	{
		
		/**
		 * This command requests the server for the latest valid metadata data, that suits
		 * the current profile id and current profile version
		 * @param event the event that triggered this command
		 * 
		 */		
		override public function execute(event:CairngormEvent):void
		{
			if (!_model.filterModel.metadataProfiles || !_model.entryDetailsModel.selectedEntry.id)
				return;
				
			var filter:KalturaMetadataFilter = new KalturaMetadataFilter();
			filter.objectIdEqual = _model.entryDetailsModel.selectedEntry.id;	
			var pager:KalturaFilterPager = new KalturaFilterPager();
		
			var listMetadataData:MetadataList = new MetadataList(filter, pager);
			listMetadataData.addEventListener(KalturaEvent.COMPLETE, result);
			listMetadataData.addEventListener(KalturaEvent.FAILED, fault);
			
			_model.context.kc.post(listMetadataData);
		}
		
		/**
		 * This function handles the response returned from the server 
		 * @param data the data returned from the server
		 * 
		 */		
		override public function result(data:Object):void
		{
			super.result(data);
			_model.entryDetailsModel.metadataInfoArray = new ArrayCollection;
			
			var metadataObjects:Array = (data.data as KalturaMetadataListResponse).objects;
			var filterModel:FilterModel = _model.filterModel;
			
			//go over all profiles and match to the metadata data
			for (var i:int = 0; i<filterModel.metadataProfiles.length; i++) {
				var entryMetadata:EntryMetadataDataVO = new EntryMetadataDataVO(); 
				_model.entryDetailsModel.metadataInfoArray.addItem(entryMetadata);
				
				// get the form builder that matches this profile:
				var formBuilder:FormBuilder = filterModel.formBuilders[i] as FormBuilder;
				formBuilder.metadataInfo = entryMetadata;
				
				// add the KalturaMetadata of this profile to the EntryMetadataDataVO
				var profileId:int = (filterModel.metadataProfiles[i] as KMCMetadataProfileVO).profile.id;
				for each (var metadata:KalturaMetadata in metadataObjects) {
					if (metadata.metadataProfileId == profileId) {
						entryMetadata.metadata = metadata;
						break;
					}
				}
				
				formBuilder.updateMultiTags();
			}
		}
	}
}