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
pred inv1[] {
((all p: (one univ) {
((p !in Photo) => (some u: (one univ) {
((u in User) && ((u->p) in posts))
}))
}) && (some p: (one Photo) {
(some u1,u2: (one univ) {
(((u1 in (posts.p)) && (u2 in (posts.p))) => (u1 = u2))
})
}))
}





