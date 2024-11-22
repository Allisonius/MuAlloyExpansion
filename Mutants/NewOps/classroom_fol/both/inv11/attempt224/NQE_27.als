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
(all t,p: (one Person) {
(some g: (one Group) {
(all c: (one Class) {
((((c->(p->g)) in Groups) && ((c->(t->g)) in Groups)) => (((t->c) in Teaches) && (t in Teacher)))
})
})
})
}





