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
(all t1: (one Track),t2: (one (t1.(^succs))) {
(((t1 != t2) && (some (t1 & Entry))) => (t2 in Exit))
})
}





