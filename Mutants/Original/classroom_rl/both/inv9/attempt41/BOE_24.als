module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv9[] {
(all t: (one Teacher) {
(all c1,c2: (one Class) {
((((t->c1) in Teaches) && (Teaches in (t->c2))) => (c1 = c2))
})
})
}





