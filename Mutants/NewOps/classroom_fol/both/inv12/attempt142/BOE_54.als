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
pred inv12[] {
(some t: (one Teacher) {
(some g: (one Group) {
(some c: (one Class) {
(some p: (one Person) {
((Teaches in (t->c)) && ((c->(p->g)) in Groups))
})
})
})
})
}





