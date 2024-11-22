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
pred inv3[] {
((all t: (one Track) {
((t !in (Track.(^succs))) => (Signal in t))
}) && (all t: (one Track) {
((Exit in t) => (t !in (Track.(^succs))))
}))
}





