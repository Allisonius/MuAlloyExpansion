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
((all user1,user2: (one Day) {
(all photo: (one Photo) {
(((photo in (user1.posts)) && (photo in (user2.sees))) => (user1 in (user2.follows)))
})
}) && (all user: (one User) {
(all photo: (one Photo) {
(all ad: (one Ad) {
((photo in (user.sees)) || (ad in (user.sees)))
})
})
}))
}





