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
((((Person.Tutors).(^Tutors)) !in s) && (t !in ((Person.(~Tutors)).(^(~Tutors)))))
})
}





