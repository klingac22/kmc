// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2011  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.kaltura.vo
{
	import com.kaltura.vo.KalturaFlavorParamsOutputListResponse;

	import com.kaltura.vo.KalturaFlavorParams;

	import com.kaltura.vo.KalturaMediaInfoListResponse;

	import com.kaltura.vo.KalturaFileSyncListResponse;

	import com.kaltura.vo.KalturaFlavorAsset;

	import com.kaltura.vo.BaseFlexVo;

	[Bindable]
	public dynamic class KalturaInvestigateFlavorAssetData extends BaseFlexVo
	{
		/**
		 **/
		public var flavorAsset : KalturaFlavorAsset;

		/**
		 **/
		public var fileSyncs : KalturaFileSyncListResponse;

		/**
		 **/
		public var mediaInfos : KalturaMediaInfoListResponse;

		/**
		 **/
		public var flavorParams : KalturaFlavorParams;

		/**
		 **/
		public var flavorParamsOutputs : KalturaFlavorParamsOutputListResponse;

		/** 
		 * a list of attributes which may be updated on this object 
		 **/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}

		/** 
		 * a list of attributes which may only be inserted when initializing this object 
		 **/ 
		public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}
	}
}