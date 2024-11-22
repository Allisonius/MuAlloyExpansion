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
(some t: (one Teacher) {
(some c1,c2: (one Class) {
((((t->c1) in Teaches) && ((t->c2) in Teaches)) => (c1 != c2))
})
})
}





