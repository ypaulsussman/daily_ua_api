# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

headlines = Headline.create([
  {text_ua: "В Індії від піщаних буревіїв загинули майже 100 людей", text_en_google: "In India, nearly 100 people were killed by sandstorms", text_en_user: "In India from (something?) almost one hundred people were lost."}, 
  {text_ua: "В останньому дослідженні Гокінг розв’язав парадокс паралельних всесвітів", text_en_google: "In a recent study, Goking solved the paradox of parallel universes", text_en_user: "In the final research of Hawking the paradox of parallel universes was explained."}, 
  {text_ua: "Зникнення українського морпіха: втеча чи полон?", text_en_google: "The disappearance of the Ukrainian sea-buckthorn: escape or captivity?", text_en_user: "The (something?) of Ukrainian (something?): (something?) or (something?)?"}, 
  {text_ua: "Пожежа в Балаклії: тривають 'вибухи низької інтенсивності'", text_en_google: "Fire in Balakliya: 'low intensity explosions' continue", text_en_user: "Fire in Balakliya: (something?) explosions of low intensity"}, 
  {text_ua: "Поланскі виключили з Кіноакадемії США через розбещення неповнолітньої", text_en_google: "Polanski was expelled from the US Film Academy due to the abuse of a minor", text_en_user: "Polanski sent out of the American Film Academy because of his (something?) of a minor"}, 
  {text_ua: "У Сирії розбився вже сьомий російський літак: пілоти загинули", text_en_google: "Seventh Russian plane crashed in Syria: pilots were killed", text_en_user: "In Syria already the seventh Russian plane (something?): the pilots are dead"}, 
  {text_ua: "Чому в Туреччині продають стародавнє місто?", text_en_google: "Why sell an ancient city in Turkey?", text_en_user: "Why in Turkey are they selling an ancient city?"}, 
  {text_ua: "Як легко перетнути кордон: поради прикордонників", text_en_google: "How to easily cross the border: the advice of the border guards", text_en_user: "How to easily (something?) the border: advice of the (something?)"}
])
