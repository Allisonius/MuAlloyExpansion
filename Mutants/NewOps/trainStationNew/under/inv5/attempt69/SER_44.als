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
(all j: (one Junction) {
(some p1: (one (Signal - j)),p2: (one (Track - j)) {
(((p1->j) in succs) && ((p2->j) in succs))
})
})
}





