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
(some t2: (one Track) {
(((((Track)) in (t2.(^succs))) && (no (((Track)).succs))) => (((Track)) in Exit))
})
}





