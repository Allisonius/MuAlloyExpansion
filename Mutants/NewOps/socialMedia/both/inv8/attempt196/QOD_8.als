module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(all a: (one Ad) {
(((((User))->a) in sees) => (some u2: (one User) {
(((u2->((User))) in follows) || ((u2->((User))) in suggested))
}))
})
}





