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
((one u: (one User) {
(all p: (one Photo) {
((u->p) in posts)
})
}) && (all u: (one User) {
((u->u) !in follows)
}))
}





