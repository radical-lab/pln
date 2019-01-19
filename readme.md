# pln
prolog life planner

## ideas

schedule tasks for:
* `member(DS,[YEARS,MONTHS,DAYS]).`
* every `N` `DS` starting at `date/9`
	* `hour`, `minute`, `second` should never need to change, and should be anonymised for optimisation unless dependencies exist
	* 29ᵗʰ february; will goto 28ᵗʰ february during non leap years
* `=(T,[HOUR,MINUTE,SECOND]).`
* between `time(T1)` and `time(T2)` every `N` `DS` starting at `date/9`
* every `NTH` day of the month starting at `date/9`
* every `NTH` weekday of the month starting at `date/9`
