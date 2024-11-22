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
pred inv5[] {
(all t: (one Semaphore) {
(some y,z: (one Track) {
((t in Junction) <=> ((t in (y.succs)) && (t in (z.succs)) && (y != z)))
})
})
}





