import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class CardWidget extends StatelessWidget {
   CardWidget({super.key,required this.title,required this.price,required this.image,required this.rating,required this.desc});
String title;
String price;
String image;
String rating;
String desc;
// String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: AppColors.primary, width: 1, style: BorderStyle.solid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,


        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      image,
                      fit: BoxFit.cover,
                      height: 148,
                    ),
                    Positioned(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title.toString(),style:TextStyle(
                      color: AppColors.black,
fontSize: 10,
                    fontWeight: FontWeight.w900
                  ) ,),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Text("EGP $price",style:TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w900
                      ) ,),
                      SizedBox(width: 10,),
                      Text('discount',style: TextStyle(
                          color: AppColors.gray.withValues(alpha: 170),
                          decoration: TextDecoration.lineThrough,

                          decorationColor: AppColors.gray.withValues(alpha: 170)



                      ),),
                    ],
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Review ($rating)',style:TextStyle(
                          color: AppColors.black,
                        fontSize: 12,
                      ) ,),
                      SizedBox(width: 5,),
                      Icon(Icons.star,color: AppColors.yellow,),
                      SizedBox(width: 23,),
                      CircleAvatar(
                          backgroundColor: AppColors.primary,
                          radius:15 ,
                          child: Icon(Icons.add,color: AppColors.white,size: 25,)),
                    ],
                  )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
