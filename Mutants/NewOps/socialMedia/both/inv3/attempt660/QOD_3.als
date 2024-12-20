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
pred inv3[] {
((all user1,user2: (one User) {
(((((Photo)) in (user1.sees)) && (((Photo)) in (user2.posts))) => (user2 in (user1.follows)))
}) && (some ad: (one Ad) {
(ad in (User.sees))
}))
}





