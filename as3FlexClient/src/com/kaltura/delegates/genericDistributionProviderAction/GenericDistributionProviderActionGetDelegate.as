package com.kaltura.delegates.genericDistributionProviderAction
{
	import flash.utils.getDefinitionByName;

	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;

	public class GenericDistributionProviderActionGetDelegate extends WebDelegateBase
	{
		public function GenericDistributionProviderActionGetDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}
