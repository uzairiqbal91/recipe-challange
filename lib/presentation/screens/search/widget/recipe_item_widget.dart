import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_challange/core/constants/app_colors.dart';

import '../../../../core/constants/app_constants.dart';

class RecipeItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String cheff;

  const RecipeItemWidget(
      {Key? key, required this.image, required this.name, required this.cheff})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppTextSizes.CIRCULAR_RADIUS_SIZE),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 5.0,
        child: SizedBox(
          height: 130,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: image,
                        imageBuilder: (context, imageProvider) => Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColors.PRIMARY_COLOR,
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context,url) => Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColors.PRIMARY_COLOR,
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),

                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            name,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Expanded(
                                        flex: 5,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                    AppColors.PRIMARY_COLOR,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        cheff,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
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
