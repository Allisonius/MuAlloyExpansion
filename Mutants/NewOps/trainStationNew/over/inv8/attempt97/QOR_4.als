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
(one t1: (one Track) {
(all t2: (one Track) {
(((t1 in Entry) && (t2 in Exit)) => (t2 in (t1.(^succs))))
})
})
}





