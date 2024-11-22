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
(some p: (one Person),t: (one Teacher) {
(((((Class))->(p->((Group)))) in Groups) => (((Class)) in (t.Teaches)))
})
}





