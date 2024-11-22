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
(one e: (one Entry) {
(all t: (one Track) {
((e in t) && (one x: (one Exit) {
(x in t)
}))
})
})
}





