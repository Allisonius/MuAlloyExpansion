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
(all s: (one Signal) {
(all t1,t2: (one Track) {
((s in (t1.signals)) && ((t2.signals) in s) && (t1 = t2))
})
})
}





