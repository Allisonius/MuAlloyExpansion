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
(all disj t1,t2: (one Track) {
(((t1->t2) !in succs) || ((((t1->t2) in succs) && (t2 !in Junction)) => (Track !in (t1.signals))))
})
}





