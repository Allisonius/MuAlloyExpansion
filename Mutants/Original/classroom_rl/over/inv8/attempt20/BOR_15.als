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
pred inv8[] {
(all t: (one Teacher),c,c1: (one Class) {
((((t->c) + (t->c1)) in Teaches) => (c = c1))
})
}





