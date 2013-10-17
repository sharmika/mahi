package com.tech;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/**
 * @author velmurugan pousel created on Sep 2, 2010 for RMS
 *         WorkingDaysFinder.java on Sep 2, 2010
 */
public class HolidaysFinder {

	/**
	 * holidaylist holds the list of national/local holidays for the date range
	 * the format of the calender is (year,month-1,date)
	 */
	static List holidayList = new ArrayList();

	// holiday list
	static {
		// holidayList.add(new GregorianCalendar(2010, 8, 18));// holiday on the
		// given month
		holidayList.add(new GregorianCalendar(2010, 11, 24));// holiday on the
																// given month
	}

	/**
	 * check the given date is on holiday list
	 * 
	 * @param calendardate
	 * @return
	 */
	public static boolean isHoliday(Calendar cal) {
		return holidayList.contains(cal);
	}

	/**
	 * method to find out number of holidays between the given date range
	 * 
	 * @param first
	 * @param second
	 * @return
	 */
	public static int countNumberOfSaturdaysAndSundays(GregorianCalendar first,
			GregorianCalendar second) {

		int count = 0;
		GregorianCalendar currentcalendarday = first;
		GregorianCalendar lastcalendarday = second;

		while (currentcalendarday.getTime().getTime() < lastcalendarday
				.getTime().getTime()) {
			if (isOnSaturday(currentcalendarday)) {
				count++;
			} else if (isOnSunday(currentcalendarday)) {
				count++;
			} else if (isHoliday(currentcalendarday)) {
				count++;
			}
			currentcalendarday.add(Calendar.DATE, 1);
		}

		if (isSameDay(currentcalendarday, lastcalendarday)) {

			if (isOnSaturday(currentcalendarday)) {
				count++;
			} else if (isOnSunday(currentcalendarday)) {
				count++;
			} else if (isHoliday(currentcalendarday)) {
				count++;
			}
		}
		return count;
	}

	/**
	 * check the given date is saturday
	 * 
	 * @param calendardate
	 * @return
	 */
	public static boolean isOnSaturday(Calendar calendardate) {

		if (calendardate.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY) {
			System.out.println("Debug: "
					+ String.valueOf(calendardate.get(Calendar.DATE)) + "-"
					+ String.valueOf(calendardate.get(Calendar.MONTH) + 1)
					+ "-" + String.valueOf(calendardate.get(Calendar.YEAR))
					+ " is a SATURDAY.");
		} else {
			System.out.println("Debug: "
					+ String.valueOf(calendardate.get(Calendar.DATE)) + "-"
					+ String.valueOf(calendardate.get(Calendar.MONTH) + 1)
					+ "-" + String.valueOf(calendardate.get(Calendar.YEAR))
					+ " is not a SATURDAY.");
		}

		return (calendardate.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY);
	}

	/**
	 * check the given date is sunday
	 * 
	 * @param calendardate
	 * @return
	 */
	public static boolean isOnSunday(Calendar calendardate) {

		if (calendardate.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY) {
			System.out.println("Debug: "
					+ String.valueOf(calendardate.get(Calendar.DATE)) + "-"
					+ String.valueOf(calendardate.get(Calendar.MONTH) + 1)
					+ "-" + String.valueOf(calendardate.get(Calendar.YEAR))
					+ " is a SUNDAY.");
		} else {
			System.out.println("Debug: "
					+ String.valueOf(calendardate.get(Calendar.DATE)) + "-"
					+ String.valueOf(calendardate.get(Calendar.MONTH) + 1)
					+ "-" + String.valueOf(calendardate.get(Calendar.YEAR))
					+ " is not a SUNDAY.");
		}

		return (calendardate.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY);
	}

	public static boolean isSameDay(Calendar cal1, Calendar cal2) {
		if (cal1 == null || cal2 == null) {
			throw new IllegalArgumentException("The date must not be null");
		}
		return (cal1.get(Calendar.ERA) == cal2.get(Calendar.ERA)
				&& cal1.get(Calendar.YEAR) == cal2.get(Calendar.YEAR) && cal1
					.get(Calendar.DAY_OF_YEAR) == cal2
				.get(Calendar.DAY_OF_YEAR));
	}

	public static void main(String args[]) {
		// to findout the number of holidays between these two dates
		GregorianCalendar firstdate = new GregorianCalendar(2013, 06, 01);
		GregorianCalendar seconddate = new GregorianCalendar(2013, 06, 31);
		System.out.println(" year..." + seconddate.get(Calendar.YEAR));
		System.out.println("holiday count = "
				+ countNumberOfSaturdaysAndSundays(firstdate, seconddate));
	}

}
