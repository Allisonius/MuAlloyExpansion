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
pred inv2[] {
(all t1,t2: (one Track) {
(some s: (one Signal) {
(((signals in (t1->s)) && ((t2->s) in signals)) => (t1 = t2))
})
})
}





