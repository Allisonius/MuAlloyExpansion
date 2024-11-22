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
(((User.posts) = Photo) && (((((User)).posts) != (((User)).posts)) || (((User)) = ((User)))) && (all p: (one Photo) {
(lone (posts.p))
}))
}





