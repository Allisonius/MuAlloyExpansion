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
(((User.posts) = Photo) && (all p1,p2: (one User) {
(((p1.posts) != (p2.posts)) || (p1 !in p2))
}))
}





