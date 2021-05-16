class DateTimeUtil {

  static int daysOneYear() {
    var year = DateTime.now().year;
    return DateTime.utc(year+1).difference(DateTime.utc(year)).inDays;
  }

  static int daysInYear() {
    var dateTime = DateTime.now();
    var year = dateTime.year;
    var month = dateTime.month;
    var day = dateTime.day;
    return DateTime.utc(year, month, day).difference(DateTime.utc(year)).inDays + 1;
  }


}