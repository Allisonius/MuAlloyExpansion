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
pred inv1[] {
(all t: (one Track) {
(one ent: (one Entry) {
(lone ex: (one Exit) {
((t in Entry) && (t in Exit))
})
})
})
}





