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
(some e: (one Entry),x: (one Exit) {
(all j: (one Junction) {
(((e->j) in succs) && ((j->x) in succs) && (e != j) && (j != x))
})
})
}





