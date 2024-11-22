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
((Photo in (User.posts)) || (some var123456 : User { (Ad in (var123456.posts))}) || (Photo in (Influencer.posts)) || (Ad in (Influencer.posts)))
}





