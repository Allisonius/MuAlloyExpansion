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
pred inv9[] {
(all t: (one Track) {
(all j: (one Junction) {
(no s: (one Semaphore) {
((t !in (j.succs)) => (s !in (t.signals)))
})
})
})
}





