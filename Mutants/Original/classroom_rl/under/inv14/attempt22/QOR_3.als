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
(one s: (one Student),c: (one Class),t: (one Teacher) {
(((some (c.(s.Groups))) && (some (Teacher & (Teaches.c)))) => (some (Tutors.s)))
})
}





