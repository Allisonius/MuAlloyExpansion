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
(all c: (one Class) {
(all t: (one Teacher) {
(all g: (one Group),s: (one Person) {
(((t->c) in Teaches) && ((c->(s->g)) in Groups))
})
})
})
}





