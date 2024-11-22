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
(all t,t1: (one Track) {
(some s: (Signal & Semaphore) {
(((s in (t.signals)) && (s in (t1.signals))) => (t = t1))
})
})
}





