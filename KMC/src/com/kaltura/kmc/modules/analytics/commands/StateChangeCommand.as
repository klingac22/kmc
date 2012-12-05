package com.kaltura.kmc.modules.analytics.commands {
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.kaltura.kmc.modules.analytics.control.StateEvent;
	import com.kaltura.kmc.modules.analytics.model.AnalyticsModelLocator;
	import com.kaltura.kmc.modules.analytics.model.reportdata.ReportData;
	import com.kaltura.kmc.modules.analytics.model.types.ScreenTypes;
	import com.kaltura.kmc.modules.analytics.view.renderers.DrillDownLinkButton;

	/**
	 * inner page changes - sub navigation. 
	 */	
	public class StateChangeCommand implements ICommand {
		private var _model:AnalyticsModelLocator = AnalyticsModelLocator.getInstance();


		public function execute(event:CairngormEvent):void {
			var newState:int = (event as StateEvent).newState;
			cleanUpAfterReport(_model.currentScreenState);
			_model.currentScreenState = newState;
			setUpBeforeReport(newState);

			if (_model.reportDataMap[newState])
				_model.selectedReportData = _model.reportDataMap[newState];
			else
				_model.selectedReportData = _model.reportDataMap[newState] = new ReportData();
			
		}
		
		private function cleanUpAfterReport(screenType:int):void {
			_model.selectedEntry = null;
		
			switch (screenType) {
				case ScreenTypes.MAP_OVERLAY_DRILL_DOWN:
				case ScreenTypes.TOP_SYNDICATIONS_DRILL_DOWN:
				case ScreenTypes.TOP_CONTRIBUTORS:
				case ScreenTypes.END_USER_ENGAGEMENT:
				case ScreenTypes.MAP_OVERLAY:
				case ScreenTypes.TOP_SYNDICATIONS:
				case ScreenTypes.CONTENT_CONTRIBUTIONS:
				case ScreenTypes.PARTNER_BANDWIDTH_AND_STORAGE:
				case ScreenTypes.END_USER_STORAGE:
					break;
				
				case ScreenTypes.END_USER_ENGAGEMENT_DRILL_DOWN:
				case ScreenTypes.END_USER_STORAGE_DRILL_DOWN:
					// when leaving end user engagememnt drilldown, always reset user ids
					_model.filter.userIds = null;
					break;
				
				default:
					break;
			}
		}
		
		private function setUpBeforeReport(screenType:int):void {
			switch (screenType) {
				case ScreenTypes.MAP_OVERLAY_DRILL_DOWN:
				case ScreenTypes.TOP_SYNDICATIONS_DRILL_DOWN:
				case ScreenTypes.TOP_CONTRIBUTORS:
				case ScreenTypes.PARTNER_BANDWIDTH_AND_STORAGE:
					//if it's not drilldown make the name null
					_model.drillDownName = null;
					_model.tableSupportDrillDown = false;
					break;
				
				case ScreenTypes.END_USER_ENGAGEMENT:
				case ScreenTypes.MAP_OVERLAY:
				case ScreenTypes.TOP_SYNDICATIONS:
				case ScreenTypes.CONTENT_CONTRIBUTIONS:
					//if it's not drilldown make the name null
					_model.drillDownName = null;
					_model.tableSupportDrillDown = true;
					break;
				
				case ScreenTypes.END_USER_ENGAGEMENT_DRILL_DOWN:
					_model.tableSupportDrillDown = false;
					break;
				
				default:
					_model.tableSupportDrillDown = true;
					break;
			}
		}
	}
}