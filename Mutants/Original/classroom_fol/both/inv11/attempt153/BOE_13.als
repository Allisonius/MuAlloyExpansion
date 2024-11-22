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
(some c: (one Class),t: (one Teacher) {
((Teaches !in (t->c)) => (all g: (one Group),p: (one Person) {
((c->(p->g)) !in Groups)
}))
})
}





