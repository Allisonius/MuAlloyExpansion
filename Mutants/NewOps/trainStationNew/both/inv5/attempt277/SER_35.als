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
(some disj t1,t2: (one Entry) {
((t1 != t2) && (t1 != j) && (t2 != j) && ((t1->j) in succs) && ((t2->t1) in succs))
})
})
}





