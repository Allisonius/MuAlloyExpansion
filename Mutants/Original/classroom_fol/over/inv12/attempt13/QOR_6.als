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
pred inv12[] {
(all t: (one Teacher) {
(all g: (one Group),s: (one Student),c: (one Class) {
(((t->c) in Teaches) && ((s->g) in (c.Groups)))
})
})
}





