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
(all x1,x2: (one Track) {
(all y: (one Junction) {
(all z: (one Semaphore) {
(((z !in (x1.signals)) && (z !in (x2.signals))) => ((x2 in (x1.(^succs))) && (y !in (x1.(^succs)))))
})
})
})
}





