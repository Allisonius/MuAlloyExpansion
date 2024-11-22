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
(all x: (one Junction) {
(all t: (one Track) {
(some z: (one Semaphore) {
((x in (t.succs)) => (z in t))
})
})
})
}





