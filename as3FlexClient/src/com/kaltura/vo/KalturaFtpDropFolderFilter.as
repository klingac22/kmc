package com.kaltura.vo
{
	import com.kaltura.vo.KalturaFtpDropFolderBaseFilter;

	[Bindable]
	public dynamic class KalturaFtpDropFolderFilter extends KalturaFtpDropFolderBaseFilter
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
