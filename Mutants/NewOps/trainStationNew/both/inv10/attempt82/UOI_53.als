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
pred inv10[] {
(all x: (one Track) {
(some y: (one (x.signals)) {
((Junction in (x.(*(^succs)))) => (y in Semaphore))
})
})
}





