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
((all t1,t2: (one (Track & t)) {
((t in (t1.succs)) && (t in (t2.succs)) && (t1 != t2))
}) <=> (t in Junction))
})
}





