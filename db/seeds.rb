# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gakunenn.delete_all
Gakunenn.connection.execute("delete from sqlite_sequence where name='gakunenns'")
Gakunenn.create(nenndo: 2018,gakunenn: 3,kumi: 1,ninnzuu:20)
Gakunenn.create(nenndo: 2018,gakunenn: 3,kumi: 2,ninnzuu:20)
Gakunenn.create(nenndo: 2018,gakunenn: 3,kumi: 3,ninnzuu:20)
Gakunenn.create(nenndo: 2018,gakunenn: 3,kumi: 4,ninnzuu:20)

Byouketu.delete_all
Byouketu.connection.execute("delete from sqlite_sequence where name='byouketus'")
Byouketu.create(riyuu: "かぜ")
Byouketu.create(riyuu: "頭痛")
Byouketu.create(riyuu: "発熱")
Byouketu.create(riyuu: "悪心")
Byouketu.create(riyuu: "腹痛")
Byouketu.create(riyuu: "下痢")
Byouketu.create(riyuu: "歯")
Byouketu.create(riyuu: "目")
Byouketu.create(riyuu: "けが")
Byouketu.create(riyuu: "通院")
Byouketu.create(riyuu: "入院")
Byouketu.create(riyuu: "他、病気")
Byouketu.create(riyuu: "怠学")
Byouketu.create(riyuu: "登校拒否")
Byouketu.create(riyuu: "不明")
Byouketu.create(riyuu: "その他")

Tikoku.delete_all
Tikoku.connection.execute("delete from sqlite_sequence where name='tikokus'")
Tikoku.create(riyuu: "寝坊")
Tikoku.create(riyuu: "通院")
Tikoku.create(riyuu: "不明")
Tikoku.create(riyuu: "その他")

Seito.delete_all
Seito.connection.execute("delete from sqlite_sequence where name='seitos'")
Seito.create(gakunenn_id: 1,banngou: 3101,seibetu: "男",simei: "相田　恵一")
Seito.create(gakunenn_id: 1,banngou: 3102,seibetu: "男",simei: "石原　竜也")
Seito.create(gakunenn_id: 2,banngou: 3201,seibetu: "女",simei: "生田　桜")
Seito.create(gakunenn_id: 2,banngou: 3202,seibetu: "男",simei: "今西　雄介")
Seito.create(gakunenn_id: 3,banngou: 3301,seibetu: "女",simei: "池内　ひなの")
Seito.create(gakunenn_id: 3,banngou: 3302,seibetu: "女",simei: "泉　葵")
Seito.create(gakunenn_id: 4,banngou: 3401,seibetu: "女",simei: "乾　小春")
Seito.create(gakunenn_id: 4,banngou: 3402,seibetu: "男",simei: "出口　海人")
Seito.create(gakunenn_id: 4,banngou: 3403,seibetu: "男",simei: "臼井　勇気")
Seito.create(gakunenn_id: 4,banngou: 3404,seibetu: "女",simei: "岩間　裕子")
Seito.create(gakunenn_id: 4,banngou: 3404,seibetu: "女",simei: "上村　幸恵")
Seito.create(gakunenn_id: 4,banngou: 3405,seibetu: "男",simei: "大澤　康弘")
Seito.create(gakunenn_id: 4,banngou: 3406,seibetu: "男",simei: "古山　光輝")
Seito.create(gakunenn_id: 4,banngou: 3407,seibetu: "女",simei: "北条　香澄")
Seito.create(gakunenn_id: 4,banngou: 3408,seibetu: "男",simei: "吉田　健司")
Seito.create(gakunenn_id: 4,banngou: 3409,seibetu: "女",simei: "武藤　香")
Seito.create(gakunenn_id: 4,banngou: 3410,seibetu: "男",simei: "鳥居　虎太郎")














