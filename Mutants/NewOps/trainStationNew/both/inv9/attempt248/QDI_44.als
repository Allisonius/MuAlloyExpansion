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
(all j: (one Junction) {
(all t: (one Track) {
(all s: (Semaphore + Signal) {
((no ((t.succs) & j)) => (s !in (t.signals)))
})
})
})
}





