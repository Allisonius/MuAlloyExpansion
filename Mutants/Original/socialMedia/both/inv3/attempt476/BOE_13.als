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
pred inv3[] {
(all x: (one Photo) {
((Ad !in x) => (all y,z: (one User) {
((((y->x) in posts) && ((z->x) in sees)) => ((z->y) in follows))
}))
})
}





