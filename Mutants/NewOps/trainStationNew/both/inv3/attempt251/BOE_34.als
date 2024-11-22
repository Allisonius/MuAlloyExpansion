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
((all t1,t2: (one Track) {
((t2 in (t1.succs)) => (Exit !in t1))
}) && (all t1: (one Track) {
((no (t1.succs)) => (Exit in t1))
}))
}





