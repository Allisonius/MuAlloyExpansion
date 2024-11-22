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
(all x: (one Track) {
(some y: (Track + Entry) {
(all z: (one Semaphore) {
((y in (succs.x)) => (z !in (x.signals)))
})
})
})
}





