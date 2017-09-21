# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.delete_all
# Post.delete_all

cities_data = [{
  name: 'San Francisco',
  description: "San Francisco, in northern California, is a hilly city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay. It's known for its year-round fog, iconic Golden Gate Bridge, cable cars and colorful Victorian houses. The Financial District's Transamerica Pyramid is its most distinctive skyscraper. In the bay sits Alcatraz Island, site of the notorious former prison.",
  photo: 'san-francisco.jpg'
}, {
  name: 'London',
  description: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.",
  photo: 'london.jpg'
}, {
  name: 'Gibraltar',
  description: "Gibraltar is a British Overseas Territory and headland, on Spain's south coast. It’s dominated by the Rock of Gibraltar, a 426m-high limestone ridge. First settled by the Moors in the Middle Ages and later ruled by Spain, the outpost was ceded to the British in 1713. Layers of fortifications include the remains of a 14th-century Moorish Castle and the 18th century Great Siege Tunnels, which were expanded in WWII."
  photo: 'gibraltar.jpg'
}]

City.create(cities_data)
