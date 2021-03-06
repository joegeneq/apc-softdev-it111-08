<?php
/**
 * @package    DPCalendar
 * @author     Digital Peak http://www.digital-peak.com
 * @copyright  Copyright (C) 2007 - 2014 Digital Peak. All rights reserved.
 * @license    http://www.gnu.org/licenses/gpl.html GNU/GPL
 */
defined('_JEXEC') or die();

$document = JFactory::getDocument();
$document->setMimeEncoding('application/json');

$data = array();

$tmp = array();
foreach ($this->items as $event)
{
	$start = DPCalendarHelper::getDate($event->start_date, $event->all_day == 1);
	$end = DPCalendarHelper::getDate($event->end_date, $event->all_day == 1);

	do
	{
		$date = $start->format('Y-m-d', true);
		if (! key_exists($date, $tmp))
		{
			$tmp[$date] = array();
		}
		$tmp[$date][] = $event;
		$start->modify("+1 day");
	}
	while ($start <= $end);
}

foreach ($tmp as $date => $events)
{
	$linkIDs = array();
	$itemId = '';
	foreach ($events as $event)
	{
		$linkIDs[$event->catid] = $event->catid;
		if ($itemId != null)
		{
			continue;
		}
		$needles = array(
				'event' => array(
						(int) $event->id
				)
		);
		$needles['calendar'] = array(
				(int) $event->catid
		);
		$needles['list'] = array(
				(int) $event->catid
		);

		if ($item = DPCalendarHelper::findItem($needles))
		{
			$itemId = '&Itemid=' . $item;
		}
	}

	$parts = explode('-', $date);
	$day = $parts[2];
	$month = $parts[1];
	$year = $parts[0];
	$url = JRoute::_(
			'index.php?option=com_dpcalendar&view=calendar&id=0&ids=' . implode(',', $linkIDs) . $itemId . '#year=' . $year . '&month=' . $month .
					 '&day=' . $day . '&view=agendaDay');

	$data[] = array(
			'id' => $date,
			'title' => utf8_encode(chr(160)), // Space only works in IE, empty only
			                                  // in Chrome
			'start' => DPCalendarHelper::getDate($date)->format('c'),
			'url' => $url,
			'allDay' => true,
			'description' => DPCalendarHelper::renderEvents($events,
					sprintf(JText::_('COM_DPCALENDAR_VIEW_EVENTS_EVENT_TITLE'), count($events)) . '<ul>{{#events}}<li>{{title}}</li>{{/events}}</ul>')
	);
}
ob_clean();
echo json_encode($data);
JFactory::getApplication()->close();
