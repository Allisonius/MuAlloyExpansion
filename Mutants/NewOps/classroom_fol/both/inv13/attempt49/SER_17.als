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
pred inv13[] {
(all t: (one Person),s: (one Student),c: (one Class) {
(((t->c) in Teaches) && ((t->s) in Tutors))
})
}





