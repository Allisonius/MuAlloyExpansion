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
((t in Entry) <=> (no disj t1,t2: (one Track) {
((t1 + t2) in (succs.t))
}))
})
}





