package com.kaltura.vo
{
	import com.kaltura.vo.KalturaSynacorDistributionProviderBaseFilter;

	[Bindable]
	public dynamic class KalturaSynacorDistributionProviderFilter extends KalturaSynacorDistributionProviderBaseFilter
	{
		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			return arr;
		}

	}
}
