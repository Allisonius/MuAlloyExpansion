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
pred inv14[] {
(all s: (one Person),c: (one Class),g: (one Group),t: (one Person) {
((((c->(s->g)) in Groups) && (t in Teacher) && (s in Student) && ((t->c) in Teaches)) => ((t->s) in (^Tutors)))
})
}





