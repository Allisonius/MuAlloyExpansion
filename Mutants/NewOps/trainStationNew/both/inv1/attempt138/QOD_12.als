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
((((Track)) in ((Junction + Entry) + Exit)) => (((#((((Track)).succs) & Entry)) > 0) && ((#((((Track)).succs) & Exit)) > 0)))
}





