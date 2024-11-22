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
pred inv7[] {
(all x,y,z: (Track & Junction) {
(((y in (x.succs)) && (z in (y.succs))) => ((x != y) && (y != z) && (x != z)))
})
}





