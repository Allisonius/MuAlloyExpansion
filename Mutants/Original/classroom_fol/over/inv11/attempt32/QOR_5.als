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
(some c: (one Class),p: (one Person),g: (one Group) {
(some t: (one Teacher) {
(((t->c) in Teaches) && ((c->(p->g)) in Groups))
})
})
}





