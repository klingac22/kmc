package com.kaltura.vo
{
	import com.kaltura.vo.KalturaMetadataProfileBaseFilter;

	[Bindable]
	public dynamic class KalturaMetadataProfileFilter extends KalturaMetadataProfileBaseFilter
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
