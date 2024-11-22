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
pred inv13[] {
(all s: (one Student),t: (one Teacher) {
((s !in (Person.(^Tutors))) && (t !in (Person.(^(~Tutors)))))
})
}





