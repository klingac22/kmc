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
	import com.kaltura.vo.BaseFlexVo;

	[Bindable]
	public dynamic class KalturaStatsEvent extends BaseFlexVo
	{
		/**
		 **/
		public var clientVer : String = null;

		/**
		 * @see com.kaltura.types.KalturaStatsEventType
		 **/
		public var eventType : int = int.MIN_VALUE;

		/**
		 * the client's timestamp of this event
		 * 
		 **/
		public var eventTimestamp : Number = Number.NEGATIVE_INFINITY;

		/**
		 * a unique string generated by the client that will represent the client-side session: the primary component will pass it on to other components that sprout from it
		 * 
		 **/
		public var sessionId : String = null;

		/**
		 **/
		public var partnerId : int = int.MIN_VALUE;

		/**
		 **/
		public var entryId : String = null;

		/**
		 * the UV cookie - creates in the operational system and should be passed on ofr every event
		 * 
		 **/
		public var uniqueViewer : String = null;

		/**
		 **/
		public var widgetId : String = null;

		/**
		 **/
		public var uiconfId : int = int.MIN_VALUE;

		/**
		 * the partner's user id
		 * 
		 **/
		public var userId : String = null;

		/**
		 * the timestamp along the video when the event happend
		 * 
		 **/
		public var currentPoint : int = int.MIN_VALUE;

		/**
		 * the duration of the video in milliseconds - will make it much faster than quering the db for each entry
		 * 
		 **/
		public var duration : int = int.MIN_VALUE;

		/**
		 * will be retrieved from the request of the user
		 * 
		 **/
		public var userIp : String = null;

		/**
		 * the time in milliseconds the event took
		 * 
		 **/
		public var processDuration : int = int.MIN_VALUE;

		/**
		 * the id of the GUI control - will be used in the future to better understand what the user clicked
		 * 
		 **/
		public var controlId : String = null;

		/**
		 * true if the user ever used seek in this session
		 * 
		 * @see com.kaltura.types.kalturaBoolean
		 **/
		public var seek : Boolean;

		/**
		 * timestamp of the new point on the timeline of the video after the user seeks
		 * 
		 **/
		public var newPoint : int = int.MIN_VALUE;

		/**
		 * the referrer of the client
		 * 
		 **/
		public var referrer : String = null;

		/**
		 * will indicate if the event is thrown for the first video in the session
		 * 
		 * @see com.kaltura.types.kalturaBoolean
		 **/
		public var isFirstInSession : Boolean;

		/**
		 * kaltura application name
		 * 
		 **/
		public var applicationId : String = null;

		/**
		 **/
		public var contextId : int = int.MIN_VALUE;

		/**
		 * @see com.kaltura.types.KalturaStatsFeatureType
		 **/
		public var featureType : int = int.MIN_VALUE;

		/** 
		 * a list of attributes which may be updated on this object 
		 **/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('clientVer');
			arr.push('eventType');
			arr.push('eventTimestamp');
			arr.push('sessionId');
			arr.push('partnerId');
			arr.push('entryId');
			arr.push('uniqueViewer');
			arr.push('widgetId');
			arr.push('uiconfId');
			arr.push('userId');
			arr.push('currentPoint');
			arr.push('duration');
			arr.push('processDuration');
			arr.push('controlId');
			arr.push('seek');
			arr.push('newPoint');
			arr.push('referrer');
			arr.push('isFirstInSession');
			arr.push('applicationId');
			arr.push('contextId');
			arr.push('featureType');
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
