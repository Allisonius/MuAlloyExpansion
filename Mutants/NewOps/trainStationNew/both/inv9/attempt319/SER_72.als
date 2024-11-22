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
((all t1,t2: (one Track) {
(((t2 in (t1.succs)) && (t1 !in Junction)) => (no ((t1.signals) & Semaphore)))
}) && (all t: (one Entry) {
((no (t.succs)) => (no ((t.signals) & Semaphore)))
}))
}





