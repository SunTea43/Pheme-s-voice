# Clear existing data
PodcastEpisode.destroy_all
OpinionColumn.destroy_all

# Create sample podcast episodes
episode1 = PodcastEpisode.create!(
  title: "Celebrity Breakups and Drama: The Latest Gossip",
  description: "In this episode, we dive deep into the most shocking celebrity breakups and drama that's been making headlines. From secret relationships to public feuds, we cover it all with our signature blend of humor and insight. Join us as we dissect the latest gossip and share our thoughts on what really happened behind the scenes.",
  publish_date: 1.week.ago,
  episode_url: "https://example.com/episode1",
  duration: 3600, # 1 hour
  show_notes: "Mentioned celebrities: Taylor Swift, Tom Hiddleston, Kim Kardashian, Pete Davidson. Resources: TMZ, People Magazine, Entertainment Weekly.",
  tags: "celebrity, breakup, drama, gossip, entertainment"
)

episode2 = PodcastEpisode.create!(
  title: "Reality TV Scandals: What Really Happened",
  description: "This week we're breaking down the biggest reality TV scandals and uncovering what really happened behind the cameras. From scripted drama to genuine conflicts, we separate fact from fiction and give you the inside scoop on your favorite reality shows.",
  publish_date: 3.days.ago,
  episode_url: "https://example.com/episode2",
  duration: 2700, # 45 minutes
  show_notes: "Shows covered: The Bachelor, Love Island, Real Housewives, Big Brother. Behind-the-scenes insights from former contestants.",
  tags: "reality tv, scandal, behind the scenes, drama"
)

episode3 = PodcastEpisode.create!(
  title: "Hollywood Secrets: Industry Insiders Speak Out",
  description: "Our industry insider sources are finally ready to talk! In this explosive episode, we reveal the secrets that Hollywood doesn't want you to know. From casting couch stories to behind-the-scenes politics, this is the episode everyone will be talking about.",
  publish_date: 1.day.ago,
  episode_url: "https://example.com/episode3",
  duration: 4200, # 70 minutes
  show_notes: "Anonymous sources from major studios. Topics covered: casting decisions, contract negotiations, studio politics.",
  tags: "hollywood, secrets, industry, insider, exclusive"
)

# Create opinion columns
OpinionColumn.create!(
  title: "Why Celebrity Culture is Toxic",
  content: "After listening to this episode about celebrity breakups, I can't help but reflect on how toxic our celebrity culture has become. We're obsessing over people's personal lives to an unhealthy degree, and the media feeds into this obsession for profit. These celebrities are human beings going through real struggles, and we're treating their pain as entertainment. It's time we step back and consider the human cost of our gossip consumption. While the podcast was entertaining and well-researched, I think we need to be more mindful of the impact our fascination with celebrity drama has on both the celebrities themselves and our own mental health.",
  author_name: "Sarah Johnson",
  publish_date: 6.days.ago,
  podcast_episode: episode1
)

OpinionColumn.create!(
  title: "Reality TV: Entertainment or Exploitation?",
  content: "This episode really made me think about the ethics of reality television. While we all love the drama and entertainment these shows provide, we need to consider the psychological impact on the contestants. Many of these people are young, vulnerable, and not prepared for the intense scrutiny and manipulation that comes with reality TV fame. The producers are essentially exploiting human emotions and relationships for ratings, and the contestants often pay the price long after the cameras stop rolling. I appreciate how the podcast balanced entertainment with some critical thinking about the industry.",
  author_name: "Michael Chen",
  publish_date: 2.days.ago,
  podcast_episode: episode2
)

OpinionColumn.create!(
  title: "The Dark Side of Hollywood",
  content: "This episode was absolutely eye-opening and disturbing. The stories shared by industry insiders paint a picture of an entertainment industry that prioritizes profit over people. The casting couch stories, the manipulation, the politics - it's all part of a system that needs to be reformed. While I'm grateful that some people are finally speaking out, I can't help but wonder how many more stories are still hidden. This podcast is doing important work by giving these voices a platform and helping to expose the systemic issues in Hollywood.",
  author_name: "Emma Rodriguez",
  publish_date: 12.hours.ago,
  podcast_episode: episode3
)

OpinionColumn.create!(
  title: "Gossip as Social Commentary",
  content: "What I found most interesting about this episode was how gossip often reflects larger social issues. The celebrity breakups and drama we consume aren't just entertainment - they're often microcosms of broader societal problems. Gender dynamics, power imbalances, and social expectations all play out in the public eye through these celebrity stories. While we shouldn't take gossip too seriously, we can use it as a lens to examine our own society and values. The podcast did a great job of balancing the fun aspects of gossip with some deeper social analysis.",
  author_name: "David Park",
  publish_date: 1.day.ago,
  podcast_episode: episode1
)

puts "Created #{PodcastEpisode.count} podcast episodes and #{OpinionColumn.count} opinion columns!"
