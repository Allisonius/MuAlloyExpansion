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
(all disj c1,c2: (one Class) {
(((Teacher.Teaches) in c1) <=> (c2 !in (Teacher.Teaches)))
})
}





