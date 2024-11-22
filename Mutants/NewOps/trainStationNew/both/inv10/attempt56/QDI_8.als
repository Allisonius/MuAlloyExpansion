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
(all t: (Track - Entry) {
(one s: (one Semaphore) {
(((t.succs) in Junction) => (s in (t.signals)))
})
})
}





