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
((one (posts.Photo)) && (all var123456 : User { (Photo in (var123456.posts))}) && (all u: (one User) {
(u !in (u.follows))
}))
}





