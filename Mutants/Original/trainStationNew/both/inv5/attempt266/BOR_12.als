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
pred inv5[] {
(all t: (one Track) {
((t !in Junction) => (some t1,t2: (one (Track - t)) {
((t1 in (succs.t)) && (t2 in (succs.t)) && (t1 != t2))
}))
})
}





