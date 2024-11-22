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
((all ad: (one Ad) {
(ad in (User.sees))
}) && (one photo: (one (Photo - Ad)) {
(all user1,user2: (one User) {
(((photo in (user1.sees)) && (photo in (user2.posts))) => (user2 in (user1.follows)))
})
}))
}





