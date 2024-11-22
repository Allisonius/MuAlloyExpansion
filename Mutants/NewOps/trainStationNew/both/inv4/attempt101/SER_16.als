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
pred inv4[] {
((all t: (one Junction) {
((t !in (Track.(^succs))) => (Entry in t))
}) && (all t: (one Track) {
((Entry in t) => ((t.succs) = none))
}))
}





