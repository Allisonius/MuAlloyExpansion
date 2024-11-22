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
(some c: (one Class),g: (one Group),p: (one Person),t: (one Teacher) {
(((c->(t->g)) in Groups) => ((t->c) in Teaches))
})
}





