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
((all u: (one User) {
(all p: (Photo & Ad) {
(p in (u.posts))
})
}) && (all p: (one Photo) {
(one u: (one User) {
(p in (u.posts))
})
}))
}





