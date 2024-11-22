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
pred inv8[] {
(all disj c1,c2: (one Group) {
(((c1 in (Teacher.Teaches)) && (c2 !in (Teacher.Teaches))) || ((c1 !in (Teacher.Teaches)) && (c2 in (Teacher.Teaches))))
})
}





