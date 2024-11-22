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
(all x: (Track - Entry) {
(some y: (one (x.signals)) {
(((x.(^succs)) in Junction) => (y in Semaphore))
})
})
}





