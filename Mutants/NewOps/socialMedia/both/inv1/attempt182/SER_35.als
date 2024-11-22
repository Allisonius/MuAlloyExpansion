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
((all p: (one Photo) {
(some u: (one User) {
(p in (u.posts))
})
}) && (all a: (one Influencer) {
(some u: (one User) {
(a in (u.posts))
})
}) && (all p: (one Photo) {
(some i: (one Influencer) {
(p in (i.posts))
})
}) && (all a: (one Ad) {
(some i: (one Influencer) {
(a in (i.posts))
})
}))
}





