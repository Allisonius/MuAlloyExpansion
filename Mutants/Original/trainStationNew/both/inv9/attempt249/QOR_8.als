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
(one y: (one Junction) {
(some z: (one Semaphore) {
((x in (y.(^succs))) || (z !in (x.signals)))
})
})
})
}





