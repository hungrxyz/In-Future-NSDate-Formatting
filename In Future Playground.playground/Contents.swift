//: Playground - noun: a place where people can play

import UIKit

func inTimeSinceDate(date:NSDate, numericDates:Bool) -> String {
	let calendar = NSCalendar.currentCalendar()
	
	let components:NSDateComponents = calendar.components([NSCalendarUnit.Minute , NSCalendarUnit.Hour , NSCalendarUnit.Day , NSCalendarUnit.WeekOfYear , NSCalendarUnit.Month , NSCalendarUnit.Year , NSCalendarUnit.Second], fromDate: date, toDate: NSDate(), options: NSCalendarOptions())
	
		print(components)
	
	
	
	if (components.year <= -2) {
		return "In \(abs(components.year)) years"
	} else if (components.year <= -1){
		if (numericDates){
			return "in 1 year"
		} else {
			return "This year"
		}
	} else if (components.month <= -2) {
		return "In \(abs(components.month)) months"
	} else if (components.month <= -1){
		if (numericDates){
			return "In 1 month"
		} else {
			return "This month"
		}
	} else if (components.weekOfYear <= -2) {
		return "In \(abs(components.weekOfYear)) weeks"
	} else if (components.weekOfYear <= -1){
		if (numericDates){
			return "In 1 week"
		} else {
			return "This week"
		}
	} else if (components.day <= -2) {
		return "In \(abs(components.day)) days"
	} else if (components.day <= -1){
		if (numericDates){
			return "In 1 day"
		} else {
			return "Tomorrow"
		}
	} else if (components.hour <= -2) {
		return "In \(abs(components.hour)) hours"
	} else if (components.hour <= -1){
		if (numericDates){
			return "In 1 hour"
		} else {
			return "This hour"
		}
	} else if (components.minute <= -2) {
		return "In \(abs(components.minute)) minutes"
	} else if (components.minute <= -1){
		if (numericDates){
			return "In 1 minute"
		} else {
			return "This minute"
		}
	} else if (components.second <= -3) {
		return "In \(abs(components.second)) seconds"
	} else {
		return "Just now"
	}
}

let in6hours = NSCalendar.currentCalendar().dateByAddingUnit(.Hour, value: 6, toDate: NSDate(), options: NSCalendarOptions(rawValue: 0))!
inTimeSinceDate(in6hours, numericDates: true)