VAR HUNGRY = false
VAR SLEEPY = true
VAR TV = false
VAR TEL = false
VAR finished_once = 0

-> intro
== intro ==
Hikayeye başlamak için başlaya tıklayın.
+ [Başla]
    -> start
== start ==
Gözlerimi sabahın köründe açıyorum. Daha güneş bile çıkmamış, ya da perdelerden girmiyor en azından. Uykusuzum, dün gece geç saatlere kadar arkadaşlarla sohbet etmiştim, bu haftasonu Alsancak’a gidip bir şeyler içme planımızı konuşuyorduk ve aklım doluydu.
+ [...]
istemeye istemeye gözlerimi ovuşturuyorum ve telefonumun ekranına dokunuyorum. Korkunç parlak mavi bir ışık gözlerimi yakıyor. Saat 6.30, eğer kahvaltı etmezsem yirmi dakika daha uyumayı göze alabilirim, on dakika daha uyuyup kahvaltı da edebilirim ama biraz koşuşturmam gerekir ya da şimdi kalkabilirim...


++ [Yirmi dakika daha uyu...]
    ~ HUNGRY = true
    ~ SLEEPY = false
    Uykumu dolu dolu alıp kalkıyorum, zaten kahvaltı etmeye kimin ihtiyacı var ki? Kantinden bir kaşarlı simit ve Ice Tea alırım yeter.
    -> bus

++ [On dakika daha uyu...]
    ~ SLEEPY = false
    Uykumu aldım, gene de hafifçe yalpalayarak yataktan kalkıyorum, kahvaltıyı hızlıca ediyorum çünkü oyalanmaya zamanım yok.
    +++ [...]
        -> bus

++ [Uyanman lazım...]
    - "Başım" diye sızlanarak yataktan kalkıyorum, kendimi bir şekilde mutfağa kadar sürükleyip biraz tost ekmeğiyle peynir yemeye başlıyorum.
    +++ [Televizyonu aç]
        Televizyonu açıyorum, haberlerde pek birşey yok, hastanelere çok fazla insanın akın ettiğiyle ilgili bir şeyler diyor spiker.
        ~ TV = true
       ++++[...] 
            -> bus
    +++ [Telefona bak]
        Kız arkadaşımdan mesaj gelmiş, ben yattıktan sadece birkaç dakika sonra hem de: ''Bugün -evet bunu yazarken teknik olarak bugün- öğle arasında bir şeyler yiyip dolaşalım mı?'' yazmış. 12. sınıf olduğu için pek görüşmeye zaman bulamıyoruz. Sadece bir öğle yemeği bile çok hoş geçebiliyor bu yüzden. Üst dönemden bir kızla çıkmak bazen garip kaçabiiyor fakat şikayet ettiğim falan yok, hem de hiç.
        ~ TEL = true
        ++++[...]
            -> bus
    +++ {finished_once == 3} [İnternete bak]
        "OHA ZOMBİLER GERÇEK" diye çığlık atıyorum, o gün okula gitmiyorum ve hiç kimsenin gitmemesini sağlıyorum, ordu zombileri bir kaç saat sonra yok ediyor ve kimse zarar görmüyor.
        -> END

== bus ==

-    {SLEEPY:  Uykusuzluktan zorlukla kendimi sürükleyerek dışarı çıkıyorum.}
+ [...]
 Servise girip kendimi koltuğa atıyorum.
    + [...]
-    {not HUNGRY && SLEEPY: Gözlerimi kapatıp uykuya dalıyorum. Uykuluyken yemek yiyiyip servise binince hep böyle oluyor. Servis resmen rahatça uykuya dalayım diye hafif hafif sallıyor beni. Servisin güzel yanlarından biri denebilir sanırım.}
+[...]
-    {not HUNGRY && not SLEEPY: Böylece on dakikanın üstüne tamamlayıp tam anlamıyla uykusuzluğumu yenebilirim.}
+ [...]
-    {HUNGRY && not SLEEPY: Ama hem açım hem de uykum yok, bu yüzden bunun yerine telefonu açıyorum, kız arkadaşım bugün benimle görüşmek istiyor ne güzel bir gün olacak bugün.''Bugün -evet bunu yazarken teknik olarak bugün- öğle arasında bir şeyler yiyip dolaşalım mı?'' yazmış. 12. sınıf olduğu için pek görüşmeye zaman bulamıyoruz. Sadece bir öğle yemeği bile çok hoş geçebiliyor bu yüzden. Üst dönemden bir kızla çıkmak bazen garip kaçabiiyor fakat şikayet ettiğim falan yok, hem de hiç.}

+ {not HUNGRY} [Uyan]
    Gözlerimi açıyorum, servis okula gelmiş. Benim gibi uykulu insanların servisten dışarı çıkmasını bekliyorum. Çıkarken servisçiye bir selam veriyorum ve indiğimde bir iki arkadaşımla karşılaşıyorum.
        ++ [...]
        En azından okula giderken biraz laflaşalım diyoruz ve hangimizin ders programının daha kötü olduğu üzerine hararetli bir tartışmaya giriyoruz, hem bizim servisimizde hem de diğer servislerden normalden çok daha az insan inmesi dikkatimizi çekiyor...
        +++ [...]
+ {HUNGRY} [Okula geldin.]
        Servis okulun park alanına girerken koltuğumda hafifçe yana sallanıyorum.
    ++[...]
- -> school

== school ==
Okula girdiğimiz anda bir yanlışlık olduğunu hissediyorum,  tam olarak adını koyamasam dahi, havada bir ağırlık, adeta bir çürümüşlük var, dikkatimi bir şey daha çekiyor, okulda ne bir köpek ne de bir kedi görebiliyorum, koruya mı gittiler acaba? Köşede birisi deli gibi öksürüyor.
+ [...]
    Durumu o kadar kötü görünüyor ki bazı insanlar yanına gidip onu kontrol ediyorlar. Ben de kalıp ciddi bir şey var mı diye baksam mı diye düşünsem de ilk dersin fizik olduğunu ve hocanın yok yazmak için fırsat kolladığını hatırladığımdan okula doğru yürüyorum. Bir öksürüğü hallederler diye düşünüyorum.
++ Sınıfa git[.]<>
    -> class

== class ==
mek için üçüncü kata kadar çıkıyor, pencere kenarındaki sırama oturuyorum, insanlarda bir gerginlik var, zil çalıyor, ders başlıyor... Fizik dersi dinlemem için fazla sıkıcı.
    + Dışarı bak[]tığımda binanın önünde insanların toplandığını görebiliyorum, uzaklarda bir yerlerden dumanlar yükseliyor, neler oluyor?
        ++[...]
    + Telefona bak[]tığımda sinyalin kesilmiş olduğunu görüyorum. Garip, normalde burada sinyal çok iyi çeker...
         ++ [...]
    - Kapıdan gürültülü bir vurma sesi geliyor, hepimiz donup kalıyoruz. Bu vuruşta insani olmayan bir şey var. Sınıfın salağı da içeride olduğuna göre birisinin böyle kapıya vurması için bir sebep de yok. Sonra art arda başka darbeler gelmeye başlıyor... Hoca dersi anlatmayı bırakıp bağırıyor. ''Oğlum gerizekalı mısın, gir içeri kapıyı kırmadığın kaldı bir tek!''.
    ++ [...]
        Okul binası yapılırken mühendisler aşırı zeki olduğu için sınıf kapılarındaki pencereleri ters takmışlar. Dışarıdan bakan biri içeriyi görebiliyor, fakat içeriden bakan biri kapıdakini göremiyor. Önde oturduğum için kapıdaki bir silüetin sarsıldığını görüyorum sadece. Neden biri böyle bir şey yapar ki? Ben bunlara bir anlam vermeye çalışırken cam bir anda kırılıyor ve korkunç anırma sesleri duyuluyor!
    +++ [...]
        Kırık camdan içeriye giren ellerden akan kanları görüyor, ellerine yer yer cam kırıkları saplı, hatta bir cam parçası avcundan içeri girmiş ve ters taraftan çıkmış, kanın bir kısmının kaynağı bu olmalı. Gözlerim yüzüne kaydığında, kusmamak için kendimi zor tutuyorum, yüzü sapsarı benekler ve lekelerle kaplı, gözlerinin feri sönmüş ve gözleri ufak beyaz lekeler dışında sapsarı...

    ++++ [...]Yaratığın arkasından bir başka yaratık onu insandışı bir kuvvetle tekmeleyerek kapıyı kırdı ve yaratık içeri savruldu, sonra içeri daldı ve kapının yanındaki donup kalmış çocuğun kolunu ısırarak koparıyor, çocuğun dehşet çığlıkları arasında kopan kolundankan fışkırmaya ve duvarı boyamaya başlıyor. Dehşet yaratıklar içeriye girmeye başlıyorlar, hepsinin yüzü benzer olsa da bir kısmının bir ya da iki kolu  birden eksik, kiminin ısırıklardan organları görünebiliyor.
    +++++[...]
        İnsanlara saldırmaya başlıyorlar, acilen ne yapacağıma karar vermeliyim, böyle durursam sıra bana da gelecek.
        -> choices

== choices
        +++ [Pencereden çatıya atla]
            Pencereden kantinin çatısına sarkarak dışarı çıkıyorum.
            -> rooftop
        +++ [Zombileri engellemeye çalış]
            Zombileri durdurmak için sıralardan bir bariyer yapmaya çalışıyoruz, şimdilik onları engellese de çok yakında bu engeli aşacakları da açık...
            ++++ [Kaç]
            Biraz zaman kazandıktan sonra arkadaşlarımla beraber pencereden kantinin çatısına sarkıyoruz.
            -> rooftop
        +++ [Zombilere karşı koy] Öndeki çocuk bana zamanında çok yardım etmişti ve şimdi onu bırakamazdım. Onu yemekte olan yaratığı omzundan çekip yere fırlatmaya çalıştım, fakat yere düşer düşmez ilk yaptığı şey ayağıma yapışmak oldu. Ayağımdaki o korkunç acı, ayağıma bakıp her tarafın kan olduğunu görmem, yere düşmem ve bilincimi yitirmem sadece saniyeler sürdü...
        -> Dead

== rooftop ==
Vücudumdaki bütün enerjiyi sarfederek cama tırmanıyorum. Elim ayağım korkunç titriyor. Camdan çatıya atlarken geriye bir bakış atıyorum, sınıfta adeta bir vahşet sahnesi var: üç yıldır tanıdığım insaların, arkadaşlarımın; lime lime edilirken çığlıkları, ağlamaları ve bana bakan gözleri.

+ [...]

Yere zarar görmeden indikten sonra, gözlerimle okulun dışına bakıyorum, Forum Bornova'dan dumanlar yükseliyor, yollarda arabalar kıyametten kaçmak için var güçleriyle gidiyor. Birdenbire acı fren sesleri eşliğinde birbirlerine giriyorlar, metal metali ezerken arabalardan biri yoldan çıkıp demirlere saplanırken sürücüsü camdan dışarıya fırlıyor.

++ [...]
Bahçeye bakıyorum, aşağıda kaos hüküm sürüyor, insanlar kaçarken birbirlerine çarpıyorlar, cesetlere takılıp yere düşüyorlar, bazen cesetlerin arasından fırlayan bir el onları tutup yakalıyor, bazense üstlerine atlayan yaratıklar sonlarını getiriyor, kantinin yanındaki sıkışık yere baktığımda dehşete düşüyorum, gözlerimi çeviriyorum.

+++ [...]
Gözlerim sulanırken kulaklarımı kollarımla tutuyorum ve yere çöküyorum, ağlamaya başlarken aklım düşünceler seline yakalanıyor, bu gerçek olamaz diyorum kendi kendime, şimdi uyanacağım deyip gözlerimi kapatıyorum.
++++ [...]
Burası sessiz. Burası güvenli. Kabus bitti mi?
+++++ [...]
Gözlerimi ve kulaklarımı açtığımda beni karşılayan şey evimin sessizliği değil, durumun dehşeti oluyor, yaratıkların homurtuları ve insan çığlıkları kulaklarımı dolduruyor... Bu gerçek, yapabileceğim hiç bir şey yok.

++++++[...]
Onlar beni görmeden bir karara varmalıyım...
+++++++[...]
Şimdi nereye gideceğim?
-> rooftop_choices

== rooftop_choices
+ [Başka bir sınıfın penceresinden gir.]
    Başka bir sınıfın penceresinden okula giriyorum, bu sınıf bomboş, "olay" sırasında beden dersinde olsalar gerek.
    ++ Kapıyı aralayıp dışarı bak

+ [Kütüphaneden gir.]
    Kütüphaneden içeriye atlıyorsun, henüz ilk ders olduğu için kütüphanede kimse olmasa gerek ki içeride sadece bir köşede saklanmış nöbetçi öğrenci var.
    ++ Kapıdan dışarıya bak.

- Bir öğrenci koridor boyunca onu kovalayan zombiden kaçıyor, zombi gözlerimin önünde çocuğu yakalayıp yere yıkıyor, ısırdığı kolundan kan süzülüyor ve çocuk debelenmeye başlıyor. Çocuğun biraz gerisinde acil çıkış kapısı var, ya da koridor boyunca kaçmayı deneyebilirsin.

+ [Yardım et]
    Çocuğa yardım etmeye çalışıyorsun, ancak yanına yaklaşamadan yaratık seni görüp üzerine atlıyor. Parçalanarak ölüyorsun, çığlıkların koridorda yankılanıyor.
    ->Dead

+ [Gizlenerek acil çıkış kapısına git.]
    Çocuğa yardım etmem mümkün değil, yaratığa görünmemeye çalışarak çocuğun yanından geçiyorum ve yaratık beni görmeden acil çıkış kapısından içeri giriyorum.
    -> emergency_exit

+ [Koridordan kaç]
    Koridordan kaçmayı denediğinde yaratık seni görüp koşmaya başlıyor, ondan daha hızlı koşmayı deniyorsun ancak onun insanüstü hızına ulaşman mümkün değil.
    -> Dead

== emergency_exit ==
Acil çıkış kapısını arkamdan kapatıyorum, içeriye girdiğimde kapının önüne çöküp nefesimi toparlamaya çalışıyorum. Nedensonra kendimi toparlayıp ayağa kalkıyorum ve aşağı kata iniyorum, dışarıya açılan kapıyı açacakken kapının arkasından yumruklama sesleri gelmeye başlıyor, bunlar zayıf sesler, üst kat kapısından gürültülü vurma sesleri gelmeye başlıyor aynı anda... ne yapmalıyım?
-> choices2

== choices2
+ [Dışarı açılan kapıdan çık. (zayıf yumruk sesleri geliyor.)]
    Kapıyı açmamla beraber, kapıyı yumruklayanın ölmek üzere olan bir öğrenci olduğunu fark ediyorum, kapıyı açmamla beraber kafasını şiddetle yere vuruyor ve bayılıyor.
    -> outside
+ [Birinci kat koridoruna açılan kapıdan çık.]
    Kapıyı açmamla beraber yaratıklar beni fark edip bana doğru koşmaya başlıyor. kapıyı yaratıklar bana ulaşmadan kapatıyorum.
    -> choices2
+ [Üçüncü kat koridoruna açılan kapıdan çık.]
    Kapıyı açmamla beraber yaratıklar beni fark edip bana doğru koşmaya başlıyor. kapıyı yaratıklar bana ulaşmadan kapatıyorum.
    -> choices2
+ [İkinci kat koridoruna açılan kapıdan çık. (Gürültülü yumruklama sesleri geliyor.)]
    Kapıyı açtığımda yumruklamadan sorumlu olanın bir yaratık olduğunu fark ediyorum, ben kapıyı kapatamadan üstüme çullanıyor.
    -> Dead

== outside ==
Dışarısı cesetlerle kaplı. Sanki bir savaş olmuş ve bitmiş gibi, üst üste yığılmış cesetlerle dolu her yer, yaratıklar burada kimseyi bırakmamış olsalar ki gitmişler, her yer parçalanmış vücutlarla ve kanla kaplı.

Kırmızı bir derya adeta... Kıpkırmızı...

Telefonuma bir mesaj geliyor.

<text><b>Canım <3</b> </br> G blok bodrumunda kısılı kaldım yardım et bana! </text>

Hemen sonra bir tane daha.

<text> <b>Bro</b> </br> Abi G bloğun en tepesindeyim nasıl çıkacağım bilmiyorum.</text>

Dişlerimi sıkıyorum... İkisini de kurtarabilir miyim... Ya da... herhangi birini kurtarmalı mıyım?

+ [G bloğa müzik atolyesi tarafından gir.]
    Doğrudan G bloğa gitmek intihar olur, daha ihtiyatlı olmalıyım, diye düşündüm kendi kendime, böylece müzik atolyesinin arkasına geçtim ve G bloğun arkasına doğru yürümeye başladım. Yürürken birdenbire çalılardan bir ses geldi.
    ++ [Ne olduğuna bak.]
        Yaratığı görme beklentisiyle çalıların içinde bakıyorum? Bu bir yaratık değil sadece her şeyden habersiz sigara içen bir kardo; Birdenbire zombi çocuğun üstüne atlıyor.
        +++ [Kaçmaya çalış.]
            Zombi çocuğun işini bitirip bana doğru koşmaya başlıyor.
            -> Dead
        +++ [Savaş]
         ++++ [İttir.]
            Zombi geriye doğru gerileyip devriliyor şansı kullanıp koşarak uzaklaşıyorsun.
            -> G_blok_arka
         ++++ [Bacağına vur.]
            Zombinin bacağına vurulur mu?
            -> Dead
    ++ [Görmezden gel]
        Zombi üstüme atlıyor. Savaşmak faydasız.
        -> Dead
+ [G bloğun ön kapısına doğrudan yürü.]
    Ön kapıya doğru yürümeye başlarken, yaratıklara karşı bazı öğretmenlerin silahlanıp kendilerini savunduğunu görüyorum. Silah sesleri yaratıkların homurtularını kesiyor.
    ++ [Yardım et.]
        Kimyacım elime bir kürek tutuşturuyor, matematikçim de "Bize yardım et." diye sesleniyor. Küreği alıp zombilere savurmaya başlıyorum, bir süre sonra zombiler öğretmenleri birer birer yakalamaya başlıyor, küreğin başı yamulduğu için yere atıyorum ve G bloğa koşuyorum.
            -> G_blok_on
    ++ [Görmezden gel.]
    Zombiler beni yakalayıp öldürüyorlar.
    -> Dead
+ [Okuldan ayrıl.]
    Telefonumu kapatıyorum. Her koyun kendi bacağından asılır, okulun kapısından çıkıp gidiyorum.
    -> Lone_survivor.

== G_blok_on ==
    G bloğun önüne geliyorum, öğrenciler yaratıklardan korunmak için kapının önüne sıralarla barikat kurmuşlar. İçeriye sesleniyorum: "Beni içeri alın.", barikatın başındaki Fındıklılı üst dönem başını sallıyor. "Hayır."
    + [İkna etmeye çalış.]
        ++ "İki ayağım üstündeyim, zombi olamam?"
        ++ "Zombiye benzer hâlim var mı?"
        ++ "Kimse beni ısırmadı."
        - Sen cümleni bitiremeden binanın içinden devasa bir gürültü geliyor, kapının arkasında zombiler kapıyı koruyan öğrencilere saldırıyor. Karmaşadan yararlanarak içeri giriyorsun
        -> G_blok_main
    + [Geriye koşup arkadan dolan.]
        -> G_blok_arka
    + [Geriye koşup A bloğa dön.]
        Koşarken yaratıklar beni fark ediyorlar ve ölüyorum.
        -> Dead
== G_blok_arka ==
    G bloğun arkasına geliyorum. Çetin hocanın penceresinin önündeyim, pencere açık kalmış. Buradan içeriye giriyorum. Allah'a şükür Çetin hoca olay sırasında izindeymiş, tam ne yapacağımı düşünüyorken dışardan dehşet bir gürültü kopuyor.
    + [Dışarı çık]
    -> G_blok_main
    -> END

== G_blok_main ==
G bloğun giriş katı kıyamet sahnesine dönmüş, yerler kanla paspaslanmış gibi, cesetler her yeri dolduruyorlar, camlar kırık, sıralar yerlerde. Koridorun ilersinde bir yerlerde yaratıklardan kaçmaya çalışan öğrencilerin beyhude çığlıkları geliyor. Nereye gitmelisin?
    + [Kız arkadaşını kurtar.]
        Aşkım en son sığınaktaydı, önce ona gitmeliyim. Koşa koşa acil çıkış kapısından aşağı inip sığınağın kapısını aralıyorum, kapıyı açmamla beraber bir ceset kapıdan düşüyor. İçerisi kapkaranlık ve kokuyor.
        ++ [İçeri gir.]
            Kapıdan içeri giriyorum, ben ne olduğunu anlamadan karanlık üzerime çullanıyor, çığlıklarım koridorlarda yankılanıyor.
            -> Dead
        ++ [Önce kankanı kurtar.]
            Önce kankamı kurtarmaya karar verip yukarı çıkıyorum.
            -> G_blok_upper
    + [Öğrencileri kurtarmayı dene]
            Öğrencileri kurtarmak için seslerin geldiği yöne doğru koşarken, yanından geçtiğin sınıftan bir çift el seni çekip öldürüyor.
            -> Dead
    + [Kankanı kurtar.]
        Önce biraderimi kurtarmaya karar veriyorum.
        -> G_blok_upper

== G_blok_upper ==
    Üst kata çıktığımda Özkan yanıma geliyor, "Abi çok iyi oldu geldiğin, burdan çıkmanın bir yolunu bulmamız lazım, yaratıklar koruda şu an, sanırım giriş kapısından çıkabiliriz."
    + [Tamamdır.]
    -> savingbro
    + [Önce Eylül'yi kurtarmalıyız.]
    -> theprincessisinanothercastlemario
== Lone_survivor ==
Kurtuldun, ama arkanda ölüm bıraktın... Gerçekten değdi mi sana güvenenleri arkanda bırakmana? Ölene kadar merak edeceksin bunu... hatta belki daha bile sonra...
-> Survived

== theprincessisinanothercastlemario ==
"Yengemi bırakamayız di mi?" diyen Özkan'yla beraber aşağı kata iniyoruz, Özkan'nun yanında telefonu da olduğundan flaşı açıp içeri giriyoruz. İçeri girer girmez bir yaratık Özkan'nun üstüne atlıyor.
    + [Savaş]
    Yaratığı tekmeyle yana savuruyorum, sonra yaratığı tutarak bir kapıdan içeriye atıyoruz ve kapıyı arkasından kitliyoruz.
    Tünelin sonunda Eylül'yle karşılaşıyoruz. "Burada okulun dışına çıkan bir tünel girişi var, kapıyı hep beraber açabiliriz." diyor, arkamızda hiç bir yaratık olmadığından, kapıyı zorlayarak çok uğraşsak da açabiliyoruz.
    On dakika boyunca karanlıkta süründükten sonra, en sonunda dışarı çıkıyoruz, güneş ışığı gözlerimizi yakıyor.
    -> best_ending
    + [Kaç]
        Sığınağın içine doğru koşarak kaçıyorum Eylül beni sığınağın sonunda bekliyor, "Burada okuldan dışarı giden tüneller var, ama kapıyı açamıyorum, yardım et bana." Beraber kapıyı açmaya çalışıyoruz, ancak ne kadar zorlasak da kapı açılmıyor. Kapıyı açmaya çalışırken, Özkan'ye saldıran yaratık kız arkadaşımı tutup ısırmaya çalışıyor.
        ++ [Yardım et.]
        Kız arkadaşıma yardım etmek için yaratığın üzerine atlayıp boğuşmaya başlıyorum, tünel kapısını açması için ona bağırıyorum, adranelinin verdiği güçle kapıyı zorlayarak açıyor. Yaratık beni ısırdığında kaderimi anlıyorum ve ona kaçması için bağırıyorum. Gözlerimi kapatırken, düşünebildiğim tek şey, en azından onun güvende olduğu.
        -> END
        ++ [Kaç.]
        Kaçmaya çalışırken ayağımı burkup düşüyorum.
        Kız arkadaşımın gözlerindeki ihanete uğramışlıkla göz göze geliyorum, yaratığın dişleri boynuna geçerken, bana hain diyen gözlerin gözbebekleri ufalanıp gözlerine dağılmaya başlıyor; kanı duvarı boyuyor.
        Ben geriye doğru gitmeye çalışırken, eskiden kız arkadaşım olan canavar, seri hareketlerle boynumu koparıyor.
        -> Dead

== best_ending ==

    Dışarı çıkıp bir kaç saat boyunca dolandıktan sonra, yetkililerin bölgeyi karantinaya alıp başarıyla hastalığı sınırladığını öğreniyorsunuz.
    Bir kaç gün sonra, içeride canlı hiç kimsenin kalmadığından emin olduktan sonra, bölge halı gibi düzleşene kadar bombalanıyor.
    Hayatın hiç bir zaman aynısı gibi olmayacak, ama hayattasın, çok fazla ölüm gördün, gözlerinin önünde çok fazla insan kaybetti hayatını.
    Ancak hayatta bazen ulaşılabilecek en iyi sonlar dahi, bir yere kadar iyidirler. Herkesi kurtarabildin mi? Yoksa daha iyisini yapabilir misin?..
    Bu soru hep aklını kurcalayacak, geceleri kabuslarından sıçrayıp uyandığında aklında kalacak...
    Daha iyisini yapabilir misin?
    + [Evet, her kabusun daha iyi bir sonu vardır.]
    ->start
    + [Hayır, her kabusun bir sonu vardır.]
    -> END

== savingbro ==
Özkan'yla dışarı çıkarken Eylül'yi düşünmeden edemiyorum, onu arkada bıraktığıma değdi mi, gidip onu da mı kurtarmalıydık?
->Survived
== Dead ==
- Denedin ama başaramadın.

+ [Bir daha dene?]
-> start
+ [Vazgeç.]
-> END
== Survived ==
- Daha iyisini yapabilir misin?
~ finished_once = finished_once + 1
+ [Bir daha dene]
-> start
+ [Bu son bana yeter.]
-> END
-> END
