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
(lone x: (one Junction) {
(some z: (one Semaphore) {
(all y: (one Track) {
((x in (y.succs)) => (z in (y.signals)))
})
})
})
}





