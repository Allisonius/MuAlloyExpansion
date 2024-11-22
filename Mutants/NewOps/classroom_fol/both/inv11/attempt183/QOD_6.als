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
(all s: (one Student) {
(some g: (one Group),t: (one Teacher) {
(((((Class))->(s->g)) in Groups) => ((t->((Class))) in Teaches))
})
})
}





