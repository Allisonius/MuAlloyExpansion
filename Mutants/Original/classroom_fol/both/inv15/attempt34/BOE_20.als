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
pred inv15[] {
((some Tutors) && (all t1,t2: (one Person) {
((Tutors in (t1->t2)) => ((t1 in Teacher) || (t2 in Teacher)))
}))
}





