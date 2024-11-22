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
(some y: (one User) {
((((y->((Ad))) in posts) && ((((User))->((Ad))) in sees)) => (((((User))->y) in follows) || ((y->((User))) in suggested)))
})
}





