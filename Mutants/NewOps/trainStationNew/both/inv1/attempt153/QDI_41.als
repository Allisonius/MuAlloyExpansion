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
pred inv1[] {
(all x: (one Track) {
(all y: (one Exit) {
(all z: (Track - Junction) {
((y in (x.succs)) && (z in (x.succs)) && (x != y) && (x != z) && (y != z) && (x !in (x.succs)))
})
})
})
}





