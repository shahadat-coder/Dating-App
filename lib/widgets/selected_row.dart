import 'package:flutter/material.dart';

class SelectRow extends StatelessWidget {
  const SelectRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: const Icon(Icons.clear,color: Colors.deepOrangeAccent,size: 30,),
              ),
            ),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height:80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: const Icon(Icons.favorite,color: Colors.white,size: 50,),
              ),
            ),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: const Icon(Icons.star_purple500_sharp,color: Colors.purpleAccent,size: 30,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}