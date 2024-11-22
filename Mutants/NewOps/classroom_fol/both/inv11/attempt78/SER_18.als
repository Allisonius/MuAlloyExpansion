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
(all c: (one Teacher),g: (one Group),p: (one Person),t: (one Teacher) {
(((c->(p->g)) in Groups) => ((t->c) in Teaches))
})
}





