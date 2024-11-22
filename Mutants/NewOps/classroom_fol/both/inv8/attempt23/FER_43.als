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
(all c1,c2: (one Class) {
(some t: (one Teacher) {
((((t->c1) in Teaches) && ((t->c2) in Tutors)) => (c1 = c2))
})
})
}





