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
(all x: (one User),a: (one Day) {
(((x->a) in sees) => (some y: (one User) {
(((y->a) in posts) && (((x->y) in follows) || ((y->x) in suggested)))
}))
})
}





