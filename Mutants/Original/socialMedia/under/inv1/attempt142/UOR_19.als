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
((all x: (one Photo) {
(some y: (one User) {
((y->x) in posts)
})
}) && (all x: (one Photo) {
(one (posts.x))
}))
}





