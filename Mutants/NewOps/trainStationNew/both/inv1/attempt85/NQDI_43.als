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
(all s: (one Track) {
(some e: (one Entry) {
(some e1: (one Exit) {e1 != s =>  {e1 != s =>  {
((e + e1) in s)
}}})
})
})
}





