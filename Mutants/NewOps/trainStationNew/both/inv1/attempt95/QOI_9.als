module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv1[] {
((succs in (Track->some Entry)) && (no var123456 : Track { (succs in (var123456->some Exit))}) && (signals in (Track->some Signal)))
}





