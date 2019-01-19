# pln
prolog life planner

poker player predictions

## schedule tasks for:
* `number(N).`
* `member(DS,[YEARS,MONTHS,DAYS]).`
* every `N` `DS` starting at `date/9`
	* `HOUR`, `MINUTE`, `SECOND` should never need to change, and should be anonymised for optimisation processing unless dependencies exist
	* 29ᵗʰ february; will goto 28ᵗʰ february during non leap years
* `=(T,[HOUR,MINUTE,SECOND]).`
* between `time(T1)` and `time(T2)` every `N` `DS` starting at `date/9`
* every `NTH` day of the month starting at `date/9`
* every `NTH` weekday of the month starting at `date/9`
* every `NTH` day of the week starting at `date/9` **is** every `=(N,7)` `=(DS,DAYS)` starting at `date/9`

## life rules:
* negative weather predictions = stock up on groceries
* consumption of expired food = statistical probability of getting sick
