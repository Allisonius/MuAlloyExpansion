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
(one c: (one Class),t: (one Teacher),s: (one Student) {
((c in (t.Teaches)) => (s in (t.Tutors)))
})
}





