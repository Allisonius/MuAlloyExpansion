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
((some Tutors) && (all t1,t2,t3: (one Teacher) {
(((t1->t2) in Tutors) => ((t1 in Teacher) || (t2 in Teacher)))
}))
}





