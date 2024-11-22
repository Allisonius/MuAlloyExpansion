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
((Photo in (User.posts)) || (Ad in (User.posts)) || (no var123456 : Photo { (var123456 in (Influencer.posts))}) || (Ad in (Influencer.posts)))
}





