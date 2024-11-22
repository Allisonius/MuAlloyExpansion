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
pred inv10[] {
(all t: (one Track) {
(((t in Junction) && (t !in Exit) && (t !in Entry)) => (some s: (one Semaphore) {
(all t1: (one Junction) {
((t1 in (succs.t)) => (s in (t1.signals)))
})
}))
})
}





