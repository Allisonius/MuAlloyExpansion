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
(some g: (one Group) {
(all t,p: (one Person) {
((((t->c) in Teaches) && (t in Teacher)) => ((c->(p->g)) in Groups))
})
})
})
}





