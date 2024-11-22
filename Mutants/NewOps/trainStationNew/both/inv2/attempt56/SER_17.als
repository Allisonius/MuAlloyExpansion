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
pred inv2[] {
(all t1: (one Speed) {
(all t2: (one Track) {
(all s: (one Signal) {
((s in (t1.signals)) => (s !in (t2.signals)))
})
})
})
}





