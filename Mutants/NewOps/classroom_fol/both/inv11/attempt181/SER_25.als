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
(some p: (one Person),g: (one Person) {
(((x->(p->g)) in Groups) => (some t: (one Teacher) {
((t->x) in Teaches)
}))
})
})
}





