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
(some t: (one Teacher) {
(some p: (Person - Teacher) {
(((c->(p->g)) in Groups) => ((t->c) in Teaches))
})
})
})
})
}





