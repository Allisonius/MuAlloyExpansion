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
(all p: (one Person),c: (one Class) {
((some t: (one Person) {
(((t->c) in Teaches) => ((t->p) in Tutors))
}) => (some g: (one Group) {
((c->(p->g)) in Groups)
}))
})
}





