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
(some t: (one Teacher) {
((((t->((Class))) in Teaches) && (some (((Student)).(((Class)).Groups))) && (some (t.(((Class)).Groups)))) => (t in (((Student)).(^(~Tutors)))))
})
}





