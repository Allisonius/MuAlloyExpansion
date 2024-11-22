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
(all y: (one Exit) {
(some z: (one Semaphore) {
((z in (x.signals)) => (x !in (y.(^succs))))
})
})
})
}





