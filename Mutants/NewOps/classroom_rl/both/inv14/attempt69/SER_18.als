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
(all s: (one Group),t: (one Teacher),c: (one Class) {
(((some (s.(c.Groups))) && (some ((Teaches.c) & t))) => (some ((Tutors :> t).s)))
})
}





