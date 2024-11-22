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
(!(some s: (one Student) {
(all p: (one Person) {
(((s->p) in Tutors) && (!(some t: (one Group) {
((p->t) in Tutors)
})))
})
}))
}





