package com.tech;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;


public class Test {
public static void main(String a[]){
	/*Calendar cal = new GregorianCalendar(2013, 6, 1);
	int increamentValue=0;
	int weekEndValue=0;
	List<Object> weekEndList=new ArrayList<Object>();
	List<Object> weekEnd=new ArrayList<Object>();
	do {
		
	    // get the day of the week for the current day
	    int day = cal.get(Calendar.DAY_OF_WEEK);
	    System.out.println("day of=="+cal.get(Calendar.DAY_OF_MONTH));
	    System.out.println("Calendar.SATURDAY--"+Calendar.SATURDAY);
	    // check if it is a Saturday or Sunday
	    if (day == Calendar.SATURDAY || day == Calendar.SUNDAY) {
	    	increamentValue++;
	        // print the day - but you could add them to a list or whatever
	    	@SuppressWarnings("deprecation")
			Long dateInMilliSeconds = Date.UTC(2013,6,day, 0, 0, 0);
	    	
	    	weekEnd.add(dateInMilliSeconds);
	        System.out.println(cal.get(Calendar.DAY_OF_MONTH));
	        if(increamentValue==2)
	        {
	        	weekEndList.add(weekEnd);
	        	increamentValue=0;
	        	weekEnd=new ArrayList<Object>();
	        	
	        }
	    }
	    // advance to the next day
	    cal.add(Calendar.DAY_OF_YEAR, 1);
	}  while (cal.get(Calendar.MONTH) == 6);
	System.out.println("ggggggggg  "+weekEndList);*/
	
	int year = 2013;
	int month = Calendar.JULY;
	int monthvalues=0;
	Calendar cal = new GregorianCalendar(year, month, 1);
	do {
		monthvalues++;
	    // get the day of the week for the current day
	    int day = cal.get(Calendar.DAY_OF_WEEK);
	    // check if it is a Saturday or Sunday
	    if (day == Calendar.SATURDAY || day == Calendar.SUNDAY) {
	        // print the day - but you could add them to a list or whatever
	        System.out.println(cal.get(Calendar.DAY_OF_MONTH));
	        Long dateInMilliSeconds = Date.UTC(year,month,monthvalues, 0, 0, 0);
	        System.out.println(dateInMilliSeconds);
	    }
	    // advance to the next day
	    cal.add(Calendar.DAY_OF_YEAR, 1);
	}  while (cal.get(Calendar.MONTH) == month);
}
}
