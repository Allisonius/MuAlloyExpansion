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
(all c: (one Group),t: (one Teacher),s: (one Student) {
(some g: (one Group) {
(((s->(c->g)) in Groups) => ((t->c) in Teaches))
})
})
}





