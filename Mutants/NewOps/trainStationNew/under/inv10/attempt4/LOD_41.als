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
(all t1: (one Track) {
(some t2: (one Track) {
((one (Junction & t2)) => (some s: (one Signal) {
((s in (t1.signals)) && (s in Semaphore))
}))
})
})
}





