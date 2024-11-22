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
pred inv4[] {
((all u: (one User),p: (one Photo) {
(((p in Ad) && ((u->p) in posts)) => (all ph: (one Photo) {
((posts in (u->ph)) => (ph in Ad))
}))
}) && (all u: (one User) {
(((u.posts) in Ad) => (all p: (one Photo) {
((posts.p) in Ad)
}))
}))
}





