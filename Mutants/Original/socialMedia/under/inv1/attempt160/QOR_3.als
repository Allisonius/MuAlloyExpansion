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
(lone photo: (one Photo) {
(all user1,user2: (one User) {
(((photo in (User.posts)) && (photo in (user1.posts)) && (photo in (user2.posts))) => (user1 = user2))
})
})
}





