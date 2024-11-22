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
pred inv8[] {
(all t: (one Track) {
((t !in Exit) => (all t1: (one Track) {
((t1 in Entry) && (t in (t1.(^succs))))
}))
})
}





