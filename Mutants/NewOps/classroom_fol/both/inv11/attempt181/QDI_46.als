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
pred inv11[] {
(all x: (one Class) {
(some p: (one Person),g: (one Group) {
(((x->(p->g)) in Groups) => (some t: (Person & Student) {
((t->x) in Teaches)
}))
})
})
}





