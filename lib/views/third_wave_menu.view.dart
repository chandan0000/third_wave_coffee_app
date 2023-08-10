import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:third_wave_app/utils/colors.dart';
import 'package:third_wave_app/utils/font_size.widget.dart';
import 'package:third_wave_app/utils/text_styles.dart';
import '../utils/custom_textfield.dart';
import '../utils/dimensions.dart';

List<Product> coffeeProducts = [
  const Product(
      productOffer: 10,
      productTitle: "Americano",
      productCategory: "with creame",
      productPrice: 9,
      productImage:
          "https://b.zmtcdn.com/data/reviews_photos/a2c/91ae8549d06d769b8d15cc44c45fea2c_1671534027.jpg"),
  const Product(
      productOffer: 15,
      productTitle: "Mocha",
      productCategory: "with creame",
      productPrice: 7,
      productImage:
          "https://b.zmtcdn.com/data/dish_photos/b49/57b4b1e02e032a452826cf272876eb49.jpg"),
  const Product(
      productOffer: 25,
      productTitle: "Late",
      productCategory: "with creame",
      productPrice: 6,
      productImage:
          "https://b.zmtcdn.com/data/reviews_photos/121/7e7ef3beeb4026df1bacb721adedb121_1645690913.jpg"),
  const Product(
      productOffer: 8,
      productTitle: "Espresso",
      productCategory: "with creame",
      productPrice: 4,
      productImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9EP7WxIuNzPyNuGXL1RHXzNWRNb9yQiI5l_JIlUrUnwf4vccdiu3KGThOUygCP_AA0Jg&usqp=CAU")
];

List<Map> menuCategories = [
  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_1LFuIOXUrwigvmO6Q3GmDx584ZqJfu0qG2F5AcGh6DZgbf8OtHJ_mCDVCH6UFEK-rGQ&usqp=CAU",
    "title": "Coffee"
  },
  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ1_dAajOw1tG2hweWztWXmS9CcqnhBMG_WG7hwUCaRja8gErzhdz_aIPczS4fhvzdEPc&usqp=CAU",
    "title": "Burger"
  },
  {
    "image":
        "https://bakewithshivesh.com/wp-content/uploads/2021/03/IMG-3300-scaled.jpg",
    "title": "Shakes"
  },
  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxjGCqLgkuYuMnRxN3CvZ8y8HiYH1_6UtFklXefIInHpcacJ8Q_wpu3_dQd0PN19ZqqxY&usqp=CAU",
    "title": "Smoothie"
  },
  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdMexNO7bFFSXvkk_jFSjw8oa9tX93FAQnihMaj-OMbIeq9TPux79-5IduGhSwBXj4Qvw&usqp=CAU",
    "title": "Pancakes"
  },
];

class ThirdWaveCoffeeBaseView extends StatelessWidget {
  const ThirdWaveCoffeeBaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [ThirdWaveCoffeeMenuView()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KConstantColors.bgColorFaint,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.basketShopping,
                color: KConstantColors.greyColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: KConstantColors.greyColor,
              ),
              label: ""),
        ],
      ),
    );
  }
}

class ThirdWaveCoffeeMenuView extends StatelessWidget {
  const ThirdWaveCoffeeMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KConstantColors.bgColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: KConstantColors.bgColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const HomeHeaderWidget(),
                const HomeMidSection(),
                vSizedBox2,
                vSizedBox1,
                HomeCategoryBlock(
                    title: "Classics",
                    description: "Best items from the shop! ❤️",
                    products: coffeeProducts),
                // vSizedBox2,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(FontAwesomeIcons.mapPin,
                  color: KConstantColors.whiteColor),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Third Wave Shop #12",
                      style: KConstantTextstyles.bold(fontSize: 20)),
                  Text("Koramangala block 3",
                      style: KConstantTextstyles.light(fontSize: 12)),
                ],
              ),
              const Spacer(),
              const Icon(FontAwesomeIcons.bellConcierge,
                  color: Colors.greenAccent)
            ],
          ),
          vSizedBox2,
          Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/2023-01/third%20wave%20coffee%20%281%29.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadiusDirectional.circular(25)),
            height: 200,
            width: 400,
          ),
          vSizedBox2,
        ],
      ),
    );
  }
}

class HomeMidSection extends StatelessWidget {
  const HomeMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
            hintText: "Search your favorite coffee...",
            onChanged: (val) {},
            textEditingController: textEditingController),
        vSizedBox2,
        SizedBox(
          height: 10.h,
          width: 100.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: menuCategories.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: KConstantColors.bgColorFaint),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 5.h,
                            width: 100.w,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  menuCategories[index]['image'],
                                  fit: BoxFit.cover,
                                ))),
                        vSizedBox1,
                        Text(menuCategories[index]['title'],
                            style: KConstantTextstyles.light(
                                fontSize: FontSize.kMedium)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class Product {
  final String productImage;
  final String productTitle;
  final String productCategory;
  final double productPrice;
  final int productOffer;
  const Product(
      {required this.productTitle,
      required this.productCategory,
      required this.productPrice,
      required this.productOffer,
      required this.productImage});
}

class HomeCategoryBlock extends StatelessWidget {
  final String title;
  final String description;
  final List<Product> products;
  const HomeCategoryBlock(
      {required this.title,
      required this.description,
      required this.products,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: KConstantColors.bgColorFaint,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: KConstantTextstyles.bold(
                              fontSize: FontSize.header)),
                      Text(description,
                          style: KCustomTextStyle.kSemiBold(
                              context, FontSize.kMedium)),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.greenAccent))
                ],
              ),
              vSizedBox2,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.66, crossAxisCount: 2),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductBlock(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductBlock extends StatelessWidget {
  final Product product;
  const ProductBlock({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: KConstantColors.bgColor,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(product.productImage),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.productTitle,
                      style: KCustomTextStyle.kBold(context, FontSize.kLarge)),
                  Text(product.productCategory,
                      style:
                          KCustomTextStyle.kLight(context, FontSize.kMedium)),
                  vSizedBox0,
                  Text("- ${product.productOffer}% off",
                      style: KCustomTextStyle.kSemiBold(context,
                          FontSize.kMedium - 2, KConstantColors.greyColor)),
                  Row(
                    children: [
                      Text("\$${product.productPrice.toInt()}",
                          style: KCustomTextStyle.kBold(
                              context, FontSize.header - 5)),
                      const Spacer(),
                      const CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Icon(Icons.add,
                              color: KConstantColors.whiteColor))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
