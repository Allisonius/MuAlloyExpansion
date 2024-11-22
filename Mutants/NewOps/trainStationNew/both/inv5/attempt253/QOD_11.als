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
((((Track)) in Junction) <=> (all p1,p2: (one Track) {
((((Track)) in (p1.succs)) && (((Track)) in (p2.succs)) && (p1 != p2))
}))
}





