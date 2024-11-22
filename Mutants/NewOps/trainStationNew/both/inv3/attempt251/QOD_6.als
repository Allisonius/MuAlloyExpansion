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
pred inv3[] {
(((((Track)) in (((Track)).succs)) => (Exit !in ((Track)))) && (all t1: (one Track) {
((Exit in t1) => (no (t1.succs)))
}))
}





