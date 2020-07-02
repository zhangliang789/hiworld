<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8" />
<link href='fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />

<script src='fullcalendar/jquery/jquery-1.10.2.js'></script>
<script src='fullcalendar/jquery/jquery-ui.custom.min.js'></script>

<script src='fullcalendar/fullcalendar.js'></script>
<script src='fullcalendar/dialog.js'></script>
<link rel="stylesheet" type="text/css" href="iview/iview.css">

<script src="js/vue.js"></script>
		<script src="iview/iview.js"></script>
		<style type="text/css">
		/* .vertical-center-modal{
        display: flex;
        align-items: center;
        justify-content: center;

        .ivu-modal{
            top: 0;
        }
    } */
		</style>
<script>

	$(document).ready(function() {
	    var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();




		/*  className colors

		className: default(transparent), important(red), chill(pink), success(green), info(blue)

		*/


		/* initialize the external events
		-----------------------------------------------------------------*/

		$('#external-events div.external-event').each(function() {

			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};

			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});




		});


		/* initialize the calendar
		-----------------------------------------------------------------*/

		var calendar =  $('#calendar').fullCalendar({
			buttonText: {
            today: '今天',
            month: '月视图',
            week: '周视图',
            day: '日视图'
              },
            weekMode: "variable",
			monthNames: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],

            dayNames: ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
            timeFormat: {
        '': 'H:mm{-H:mm}'
    },
             columnFormat: {
        month: 'dddd',
        week: 'dddd M-d',
        day: 'dddd M-d'
    },
    titleFormat: {
        month: 'yyyy年 MMMM月',
        week: "[yyyy年] MMMM月d日 { '&#8212;' [yyyy年] MMMM月d日}",
        day: 'yyyy年 MMMM月d日 dddd'
    },
			header: {
				left: 'title',
//				center: 'month',//显示属性，日视图，周视图，agendaDay,agendaWeek,
				right: 'prev,next today'
			},
			editable: true,
			firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
			selectable: true,
			defaultView: 'month',

			axisFormat: 'h:mm',
			/*columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', // Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", // September 2009
                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
            },*/
			allDaySlot: false,
			selectHelper: true,
			select: function(start, end, allDay) {//点击添加事件
				/* var title = prompt('Event Title:');
				if (title) {
					calendar.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
				calendar.fullCalendar('unselect'); */
			},
			eventClick : function( event ){
                //do something here...

                var _self=this;
                $.ajax({
		            url: '<%=request.getContextPath() %>/findFullcalendaRisksite',
		            dataType: 'json',
		            data: {
		                itemID:event.id
		            },
		            success: function(data) {
		            	/* var di = dialog({
		            		quickClose: true,
		            	});
		            	di.content(data.name);
		            	di.show(_self); */
		            	var youWant;
		            	if(event.start!=null&&event.start!=""){
		            		youWant=event.start.getFullYear() + '/' + (event.start.getMonth() + 1) + '/' + event.start.getDate();
		            	}
		            	if(event.end!=null&&event.end!=""){
                            youWant +="--"+event.end.getFullYear() + '/' + (event.end.getMonth() + 1) + '/' + event.end.getDate();
                        }
		               vm.show(data,youWant,event.index);
		            }
		        });
                /* alert('eventClick中选中Event的id属性值为：'+event.id);
                alert('eventClick中选中Event的title属性值为：'+event.title); */
               /*  alert('eventClick中选中Event的start属性值为：'+event.start.format('YYYY-MM-DD HH:mm'));
                alert('eventClick中选中Event的end属性值为：'+event.end.format('YYYY-MM-DD HH:mm'));
                alert('eventClick中选中Event的color属性值为：'+event.color);
                alert('eventClick中选中Event的className属性值为：'+event.className); */
                // ...
           },
			droppable: true, // this allows things to be dropped onto the calendar !!!
			drop: function(date, allDay) { // this function is called when something is dropped

				// retrieve the dropped element's stored Event Object
				var originalEventObject = $(this).data('eventObject');

				// we need to copy it, so that multiple events don't have a reference to the same object
				var copiedEventObject = $.extend({}, originalEventObject);

				// assign it the date that was reported
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;

				// render the event on the calendar
				// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

				// is the "remove after drop" checkbox checked?
				if ($('#drop-remove').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}

			},

			events: function(start,end, callback) {
		        //var date = this.getDate().format('YYYY-MM');
		        $.ajax({
		            url: '<%=request.getContextPath() %>/findriskcontrolplanebymonthitemAll',
		            dataType: 'json',
		            data: {

		            },
		            success: function(json) { // 获取当前月的数据
		            	var events = [];
		                if (json.code == 0) {
		                	if(json.data.length>0){
		                		vm.events=json.data;
		                		for(var i=0;i<json.data.length;i++){
		                			events.push({
		                                id:json.data[i].itemID,
                                        title: json.data[i].planStartDate+"--"+json.data[i].planEndDate+" 检查风险点："+json.data[i].mriskSite.name,
		                                start: json.data[i].planStartDate, // will be parsed
                                        end:json.data[i].planEndDate,
		                                color: '#FFEBAC',
		                                index:i
		                            });
		                		}
		                	}
		                }
		                callback(events);
		            }
		        });
		    }


		});

	});




</script>
<style>

	body {

		text-align: center;
		font-size: 14px;
		font-family: "Helvetica Nueue",Arial,Verdana,sans-serif;
		background-color: #fff;
		margin: 0;
		}

	#wrap {
		width:100%;
		}

	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		text-align: left;
		}

	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
		}

	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;

		cursor: pointer;
		}

	#external-events p {
		margin: 1.5em 0;
		font-size: 14px;
		color: #666;
		}

	#external-events p input {
		margin: 0;
		vertical-align: middle;
		}

	#calendar {
/* 		float: right; */

		width: 100%;
		background-color: #FFFFFF;
		  border-radius: 6px;
		}
		/* .jcnr p span{
		width:100px;
		text-align: right;
		} */

</style>
</head>
<body>
<div id='wrap'>

<div id='calendar'></div>

<div style='clear:both'></div>
<Modal
        v-bind:title="date"
        v-model="modal10"
        class-name="vertical-center-modal">
        <div style="margin-left: 0px;padding-left: 0px;text-align: left;" class="jcnr">
        <p style="margin-left: 10px;padding-left: 10px;"><span>风险点名称：</span>{{risksite.name}}</p>
        <p style="margin-left: 10px;padding-left: 10px;"><span>责任部门：</span>{{event.unitName}}</p>
        <p style="margin-left: 10px;padding-left: 10px;"><span>责任人：</span>{{event.itemcheckerName}}</p>
        <p style="margin-left: 10px;padding-left: 10px;" ><span>管控内容：</span>{{event.keyContent}}</p>
        <%--<p style="margin-left: 10px;padding-left: 10px;" ><span>管控时段：</span>{{event.planStartDate}}--{{event.planEndDate}}</p>--%>
        <p style="margin-left: 10px;padding-left: 10px;" v-if="risksite.riskAccident != '' && risksite.riskAccident != null" hidden><span>事故类型：</span>{{risksite.riskAccident}}</p>
            <p style="margin-left: 10px;padding-left: 10px;" v-else hidden>事故类型：无</p>
        <p style="margin-left: 10px;padding-left: 10px;"><span>风险点类型内容：</span>{{risksite.riskSiteTypeContent}}</p>
        <p style="margin-left: 10px;padding-left: 10px;" v-if="risksite.riskMajorType != '' && risksite.riskMajorType != null" hidden><span>专业类型：</span>{{risksite.riskMajorType}}</p>
            <p style="margin-left: 10px;padding-left: 10px;" v-else hidden>专业类型：无</p>
        </div>
    </Modal>
</div>
<script type="text/javascript">
var vm=new Vue({
	el:"#wrap",
	data:{
		risksite:{},
		modal10:false,
		date:"",
		events:[],
		event:{}
	},
	methods:{
		show:function(data,date,index){
			this.event=this.events[index];
			this.date=date;
			this.risksite=data;
			this.modal10=true;
		}
	}
});
</script>
</body>
</html>
