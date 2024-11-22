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
(some s: (one Semaphore) {
(all t: (one Junction),x: (one Track) {
((t in (x.(^succs))) => ((x->s) in signals))
})
})
}





