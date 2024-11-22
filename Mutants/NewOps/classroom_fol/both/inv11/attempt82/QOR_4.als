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
(one c: (one Class),g: (one Group),t: (one Teacher),p: (one Person) {
(((c->(p->g)) in Groups) => ((t->c) in Teaches))
})
}





