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
((all u: (one User) {
(some a: (one Ad) {
((a in (u.posts)) => (some ((u.posts) & Ad)))
})
}) && (all u: (one Influencer) {
((u.posts) in Ad)
}))
}





