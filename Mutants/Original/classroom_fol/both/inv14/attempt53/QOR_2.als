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
pred inv14[] {
(no s: (one Student),c: (one Class),t: (one Teacher) {
(((t->c) in Teaches) && (((t->s) in Tutors) || ((s->s) in Tutors)))
})
}





