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
pred inv10[] {
(all x: (one Teacher),p: (one Person) {
(some g: (one Group) {
((x->(p->g)) in Groups)
})
})
}





