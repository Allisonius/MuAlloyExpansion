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
(some a: (one (Track - ((Track)))),b: (one ((Track - ((Track))) - a)) {
(((((Track)) in (a.succs)) && (((Track)) in (b.succs))) => (((Track)) in Junction))
})
}





