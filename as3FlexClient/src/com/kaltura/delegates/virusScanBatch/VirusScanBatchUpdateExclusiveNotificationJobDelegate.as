package com.kaltura.delegates.virusScanBatch
{
	import flash.utils.getDefinitionByName;

	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;

	public class VirusScanBatchUpdateExclusiveNotificationJobDelegate extends WebDelegateBase
	{
		public function VirusScanBatchUpdateExclusiveNotificationJobDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}
