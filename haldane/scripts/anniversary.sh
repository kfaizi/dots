#!/bin/bash

# for keeping track of arbitrary anniversaries :)
# e.g. ./anniversary.sh YYYY-MM-DD

event_date="$1"

# grab current date
today=$(date +%Y-%m-%d)

# convert dates to epoch seconds
event_secs=$(date -d "$event_date" +%s)
today_secs=$(date -d "$today" +%s)

# compute delta
delta_secs=$((today_secs - event_secs))

### CODE BELOW PASTED FROM o1; VERIFY

# calculate days and weeks elapsed
days_elapsed=$(( delta_secs / 86400 ))
weeks_elapsed=$(( days_elapsed / 7 ))

# parse individual components
event_year=$(date -d "$event_date" +%Y)
event_month=$(date -d "$event_date" +%m)
event_day=$(date -d "$event_date" +%d)
current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)

# approximate month difference
month_diff=$(( (current_year - event_year)*12 + (10#$current_month - 10#$event_month) ))

# adjust if we haven't hit the day-of-month yet
if [ "$current_day" -lt "$event_day" ]; then
  ((month_diff--))
fi

# derive total years and leftover months
years_elapsed=$(( month_diff / 12 ))
months_elapsed=$(( month_diff % 12 ))

# next monthly anniversary
next_monthly_ordinal=$(( month_diff + 1 ))
next_monthly_date=$(date -d "$event_date +${next_monthly_ordinal} month" +%Y-%m-%d)

# next yearly anniversary
next_yearly_ordinal=$(( years_elapsed + 1 ))
next_yearly_date=$(date -d "$event_date +${next_yearly_ordinal} year" +%Y-%m-%d)

# print results
echo "event date:       $event_date"
echo "today:            $today"
echo "days elapsed:     $days_elapsed"
echo "weeks elapsed:    $weeks_elapsed"
echo "months elapsed:   $months_elapsed"
echo "years elapsed:    $years_elapsed"
echo "next monthly anniv (#$next_monthly_ordinal): $next_monthly_date"
echo "next yearly anniv (#$next_yearly_ordinal):   $next_yearly_date"

