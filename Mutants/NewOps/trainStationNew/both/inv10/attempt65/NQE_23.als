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
(some e: (one Semaphore) {
(all t: (one Track) {
((Junction in (t.succs)) => (e in (t.signals)))
})
})
}





