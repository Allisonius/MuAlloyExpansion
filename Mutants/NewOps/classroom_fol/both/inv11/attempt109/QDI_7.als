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
(all c: (one Class),p: (Person & Teacher),t: (one Teacher) {
(((t->c) in Teaches) => (all g: (one Group) {
((c->(p->g)) in Groups)
}))
})
}





