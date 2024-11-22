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
(all x: (one User),a: (one Ad) {
((((((User))->a) in posts) && ((x->a) in sees)) => (((x->((User))) in follows) || ((((User))->x) in suggested)))
})
}





