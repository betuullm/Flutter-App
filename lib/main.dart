import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Falci());
}

class Falci extends StatefulWidget {
  const Falci({Key? key}) : super(key: key);

  @override
  State<Falci> createState() => _FalciState();
}

class _FalciState extends State<Falci> {
  int askFalNo = 1;
  int paraFalNo = 1;
  int gunlukTavsiyeNo = 1;
  String askfali = " ";
  String parafali = " ";
  String gunlukTavsiye = " ";
  bool buton = false;
  var fal = "";

  List askDurumu = [
    "Yakın zamanda ondan bir mesaj alabilirsin.",
    "Adında M,S,E,T harfleri geçen biri ile tanışabilirsin.",
    "Hiç beklemediğin bir anda aşk seni bulabilir.",
    "Sana yaptıklarından dolayı çok pişman, seninle iletişime geçmek istiyor fakat buna yüzü yok.",
    "Sana prenses gibi hissettiren kişiyle çok yakında tanışabilirsin.",
    "Doğru kişi tanıdığın biri ve çok yakında kim olduğunu öğrenebilirsin.",
    "Seni hala çok seviyor.",
    "Onunla okul, staj veya iş yeri gibi bir mekanda tanışabilirsin."
  ];
  List paraDurumu = [
    "Dolar ile maaş alacağın bir iş teklifi seni bekliyor.",
    "Sen bir para mıknatısısın resmen parayı kendine çekiyorsun.",
    "Maddi açıdan biraz zorlanacağın bir döneme girebilirsin.",
    "Paran çok bereketli harcadıkça çoğalıyor.",
    "Para harcama konusunda dikkatli olman gerekebilir.",
    "Beklenmedik bir anda ihtiyacın olan paraya kavuşabilirsin.",
    "Maddi sıkıntıların son bulacak.",
    "Hak ettiğin parayı kazanacaksın."
  ];
  List gunlukTavsiyeList = [
    "Bugün yarım bıraktığın bir işi tamamla.",
    "Bugün uzun zamandır yapmak istediğin bir şeyi yap.",
    "Yeni bir yabancı dil öğrenmeye başla.",
    "Kendini iyi hissettir. Seni mutlu eden bir şey yap..",
    "Yeni bir diziye ya da yeni bir kitaba başla.",
    "En sevdiğin müziği dinle.",
    "5 sene sonra nerede olmak istiyorsun? Hayal et.",
    "Bugün bir görev bitir. Seni mutlu edicektir.",
    "Uzun zamandır görüşmediğin bir arkadaşını ara ya da mesaj at.",
    "Sevdiklerine sevgini göster.",
    "En sevdiğin giysileri giy ve dışarı çık.",
    "Biraz rahatla belki bir meditasyon ya da yoga sana iyi gelebilir.",
    "Melisa çayını içmeyi unutma.",
    "Kendine değer ver."
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Mali'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Günün Falı',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            children: [
              const CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('img/falci.png')),
              TextButton(
                onPressed: () {
                  setState(() {
                    buton = true;
                    askFalNo = Random().nextInt(askDurumu.length - 1);
                    askfali = askDurumu[askFalNo];
                    if (buton = true) {
                      fal = askfali;
                      buton = false;
                    }
                  });
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(Icons.favorite, color: Colors.red),
                    title: Text(
                      'AŞK DURUMU',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    buton = true;
                    paraFalNo = Random().nextInt(askDurumu.length) + 1;
                    parafali = paraDurumu[paraFalNo];
                    if (buton = true) {
                      fal = parafali;
                      buton = false;
                    }
                  });
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(Icons.attach_money, color: Colors.green),
                    title: Text(
                      'PARA DURUMU',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    buton = true;
                    gunlukTavsiyeNo =
                        Random().nextInt(gunlukTavsiyeList.length) + 1;
                    gunlukTavsiye = gunlukTavsiyeList[gunlukTavsiyeNo];
                    if (buton = true) {
                      fal = gunlukTavsiye;
                      buton = false;
                    }
                  });
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.blue),
                    title: Text(
                      'GÜNLÜK TAVSİYE',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, bottom: 0.0, right: 0.0, top: 12),
                child: Container(
                  child: Text(
                    '$fal',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
