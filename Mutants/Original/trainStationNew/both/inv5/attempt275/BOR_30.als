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
(all t: (one Track) {
(some a: (one (Track - t)),b: (one ((Track - t) - a)) {
(((t = (a.succs)) && (t in (b.succs))) => (t in Junction))
})
})
}





