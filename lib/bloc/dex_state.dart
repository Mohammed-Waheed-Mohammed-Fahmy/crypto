part of 'dex_bloc.dart';

// ignore: must_be_immutable
class DexState extends Equatable {
  final int? updatedValue;
  final int? pagenumber;

  final PageController key = PageController();
  final PageController sectionsKey = PageController();
  List<Onpoardingdata> poardinData = [
    Onpoardingdata(
        images: "assets/images/onboarding/1.jpeg",
        maintext: "تحكّم بمستقبلك المالي",
        suptitle:
            "منصتك الموثوقة لتقديم توصيات تداول العملات الرقمية وأخبار الشركات المالية"),
    Onpoardingdata(
        images: "assets/images/onboarding/2.jpeg",
        maintext: "تكنولوجيا بلا حدود، أمان لا مثيل له ",
        suptitle:
            " حلول مبتكرة لعالم العملات الرقمية، نقدم لك توصيات دقيقة وأخبار حية عن الشركات المالية"),
    Onpoardingdata(
        images: "assets/images/onboarding/3.jpeg",
        maintext: "الثقة في كل معاملة، المستقبل بين يديك",
        suptitle:
            "احصل على أفضل توصيات التداول وأحدث أخبار الشركات المالية، مع أدوات تحليلية متقدمة")
  ];
  List<Mainpages> pages = [
    Mainpages(
        imagepath: "assets/images/mainpage/5.jpeg",
        mainText: "سوق المال ",
        sybText: "ارتفاع أسهم شركة Tesla بعد إعلانها عن أرباح الربع الثاني"),
    Mainpages(
        imagepath: "assets/images/mainpage/4.jpeg",
        mainText: "سوق المال ",
        sybText: "شركات التكنولوجيا تسجل أداءً قويًا في البورصة"),
    Mainpages(
        imagepath: "assets/images/mainpage/6.jpeg",
        mainText: "سوق المال ",
        sybText: "شركات التكنولوجيا تسجل أداءً قويًا في البورصة"),
  ];
  List<Sectioncards> cards_section = [
    Sectioncards(
        imagepath: "assets/images/mainpage/4.jpeg",
        mainText: "البنك المركزي الأمريكي يعلن عن رفع سعر الفائدة",
        subText:
            "أعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالمية",
        BodyText:
            "أعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالمية أعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالمي  "),
    Sectioncards(
        imagepath: "assets/images/mainpage/5.jpeg",
        mainText: "إطلاق منصة  جديدة للعملات الرقمية في أوروبا",
        subText:
            "أعلنت شركة  Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائها",
        BodyText:
            "أعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائها"),
    Sectioncards(
        imagepath: "assets/images/mainpage/6.jpeg",
        mainText: "البنك المركزي الأمريكي يعلن عن رفع سعر الفائدة",
        subText:
            "أعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالمية",
        BodyText:
            "أعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالميةأعلن البنك المركزي الأمريكي عن رفع سعر الفائدة بمقدار 0.25% في محاولة للسيطرة على التضخم,مما أثر على أداء الأسهم في الأسواق الأمريكية والعالمية"),
    Sectioncards(
        imagepath: "assets/images/mainpage/8.jpeg",
        mainText: "إطلاق منصة  جديدة للعملات الرقمية في أوروبا",
        subText:
            "أعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائها",
        BodyText:
            "أعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائهاأعلنت شركة Binance عن إطلاق منصة تداول جديدة للعملات الرقمية في أوروبا، بهدف توسيع قاعدة عملائها"),
  ];
  List<OffersCards> offers_cards = [
    OffersCards(
        maintext: "اشتراك سنوي",
        subtext: "أول 30 يوم مجانا -ثم 330 دولارًا في السنة",
        itis: 0),
    OffersCards(
        maintext: "اشتراك شهري",
        subtext: "أول 7 يوم مجانا -ثم 30 دولارًا في الشهر",
        itis: 1),
  ];
  List<coinsCards> coins_cards = [
    coinsCards(
        coinChart: "assets/images/coinInfo/10.png",
        coinImage: "assets/images/coinInfo/13.png",
        coinName: "Bitcoin",
        coinPrice: "\$16050",
        percentage1: "\$22.0",
        percentage2: "0.52%",
        subtext: "0.4BTC"),
    coinsCards(
        coinChart: "assets/images/coinInfo/11.png",
        coinImage: "assets/images/coinInfo/12.png",
        coinName: "Etherum",
        coinPrice: "\$16050",
        percentage1: "\$22.0",
        percentage2: "0.52%",
        subtext: "0.4ETH"),
  ];
  List<News> news = [
    News(
        imagepath: "assets/images/news/22.jpeg",
        maintext:
            "تحقيق جميع الاهداف نسبة الربح 70%، تم اغلاق الصفقة مبارك يا وحوش",
        BodyText:
            '''/* اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي 
✅ الدخول بالأخضر على دفعتين.
✅ الاهداف بالاصفر.
❌ ستوب لوز بالاحمر (-11%) بشرط اغلاق 1D اسفله.

 يمكنك الشراء من السعر الحالي بجزء وانتظار مناطق الدخول الموضحة على الشارت.
🛑 لمعرفة استخدام ستوب لوز المشروط بالاغلاق يرجى مشاهدة الفيديو التالي'''),
    News(
        imagepath: "assets/images/news/22.jpeg",
        maintext:
            "تحقيق جميع الاهداف نسبة الربح 70%، تم اغلاق الصفقة مبارك يا وحوش",
        BodyText:
            ''' اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي 
✅ الدخول بالأخضر على دفعتين.
✅ الاهداف بالاصفر.
❌ ستوب لوز بالاحمر (-11%) بشرط اغلاق 1D اسفله.

 يمكنك الشراء من السعر الحالي بجزء وانتظار مناطق الدخول الموضحة على الشارت.
🛑 لمعرفة استخدام ستوب لوز المشروط بالاغلاق يرجى مشاهدة الفيديو التالي'''),
    News(
        imagepath: "assets/images/news/23.jpeg",
        maintext:
            "اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي",
        BodyText:
            ''' اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي 
✅ الدخول بالأخضر على دفعتين.
✅ الاهداف بالاصفر.
❌ ستوب لوز بالاحمر (-11%) بشرط اغلاق 1D اسفله.

 يمكنك الشراء من السعر الحالي بجزء وانتظار مناطق الدخول الموضحة على الشارت.
🛑 لمعرفة استخدام ستوب لوز المشروط بالاغلاق يرجى مشاهدة الفيديو التالي'''),
    News(
        imagepath: "assets/images/news/22.jpeg",
        maintext:
            "اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي",
        BodyText:
            ''' اختراق واضح لنموذج العلم الايجابي، والسعر اعلى متوسط 50 على الفريم اليومي 
✅ الدخول بالأخضر على دفعتين.
✅ الاهداف بالاصفر.
❌ ستوب لوز بالاحمر (-11%) بشرط اغلاق 1D اسفله.

 يمكنك الشراء من السعر الحالي بجزء وانتظار مناطق الدخول الموضحة على الشارت.
🛑 لمعرفة استخدام ستوب لوز المشروط بالاغلاق يرجى مشاهدة الفيديو التالي'''),
  ];

  List<Notifications> notify = [
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
    Notifications(
        date: "06/7",
        mainText: "الدفع لصديق",
        subText: "تحويل بنكي بمبلغ 20000 ILS إالى المهندس محمود أبو سل"),
  ];
  DexState({
    this.updatedValue = 0,
    this.pagenumber = 0,
  });

  DexState copywith(
    int? updatedValue,
  ) =>
      DexState(
        updatedValue: updatedValue ?? this.updatedValue,
      );

  DexState getPageNumber(int? pagenumber) =>
      DexState(pagenumber: pagenumber ?? this.pagenumber);

  @override
  List<Object?> get props => [updatedValue, pagenumber];
}