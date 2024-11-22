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
(all x1: (Track - Entry) {
(all y: (one Junction) {
(some z: (one Semaphore) {
((y in (x1.(^succs))) => (z in (x1.signals)))
})
})
})
}





