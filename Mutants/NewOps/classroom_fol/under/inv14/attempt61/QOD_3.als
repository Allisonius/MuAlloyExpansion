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
(all s: (one Person),c: (one Class),g: (one Group) {
((((c->(s->g)) in Groups) && (((Person)) in Teacher) && (s in Student) && ((((Person))->c) in Teaches)) => ((((Person))->s) in Tutors))
})
}





