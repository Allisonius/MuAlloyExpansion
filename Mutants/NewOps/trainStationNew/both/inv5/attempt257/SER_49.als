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
((t in Junction) <=> (all p1,p2: (one Speed) {
(((t in (p1.succs)) && (t in (p2.succs))) => (p1 != p2))
}))
})
}





