package com.kaltura.delegates.virusScanBatch
{
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	import flash.utils.getDefinitionByName;

	public class VirusScanBatchAddMediaInfoDelegate extends WebDelegateBase
	{
		public function VirusScanBatchAddMediaInfoDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}
