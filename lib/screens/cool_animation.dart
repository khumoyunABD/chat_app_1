import 'package:flip_carousel/flip_carousel.dart';
import 'package:flutter/material.dart';

class CoolAnimation extends StatelessWidget {
  const CoolAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> cardItems = [
      'https://i.ibb.co/QYdQHBw/batman2.jpg',
      'https://i.ibb.co/vwhykYp/spider1.jpg',
      'https://i.ibb.co/H4VrQS4/spider2.jpg',
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/733b5da9-efe6-4697-a4f9-9e9d4975f828/de8g75a-a128f1ac-ec63-4485-b913-3b0f00fb9b63.jpg/v1/fill/w_730,h_1095,q_70,strp/madara_uchiha__by_sasukegfx_de8g75a-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDA5NiIsInBhdGgiOiJcL2ZcLzczM2I1ZGE5LWVmZTYtNDY5Ny1hNGY5LTllOWQ0OTc1ZjgyOFwvZGU4Zzc1YS1hMTI4ZjFhYy1lYzYzLTQ0ODUtYjkxMy0zYjBmMDBmYjliNjMuanBnIiwid2lkdGgiOiI8PTI3MzAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.maUBrrI4nlouojnf2IhpGFbcUpz9meNgsAGX92RZYI8',
      //Container(color: Colors.amber, child: const FlutterLogo()),
    ];

    return Center(
      child: FlipCarousel(
        items: cardItems,
        transitionDuration: const Duration(milliseconds: 400),
        isAssetImage: false,
        border: Border.all(width: 5, color: const Color(0xFFFFFFFF)),
        width: 250,
        height: 400,
        fit: BoxFit.cover,
        perspectiveFactor: 0.002,
        layersGap: 30,
        onChange: (int pageIndex) {
          print(pageIndex);
        },
        onTap: () {
          print("tap");
        },
      ),
    );
  }
}
