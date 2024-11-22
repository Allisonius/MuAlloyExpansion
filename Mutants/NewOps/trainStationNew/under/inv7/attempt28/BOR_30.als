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
pred inv7[] {
((all t1,t2: (one Track) {
(((t1 !in (succs.t2)) && (t1 != t2)) => (t2 !in (succs.t1)))
}) && (all t: (one Track) {
(t !in (succs.t))
}))
}





