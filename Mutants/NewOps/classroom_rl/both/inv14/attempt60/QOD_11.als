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
(one c: (one Class) {
(all t: (one Teacher) {
(((c->(t->((Student)))) in Groups) => ((t->((Student))) in Tutors))
})
})
}





