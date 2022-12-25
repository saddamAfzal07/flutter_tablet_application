import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tablet_application/widgets/chip_item.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        child: Column(
          children: [
            ChipsItem(
              onChanged: (value) {},
              chips: const [
                ChipItemEntity(
                  title: "Biryani",
                ),
                ChipItemEntity(
                  title: "Salads",
                ),
                ChipItemEntity(
                  title: "Chicken Tikka",
                ),
                ChipItemEntity(
                  title: "Desi Chowmein",
                ),
                ChipItemEntity(
                  title: "Chicken Chargha",
                ),
                ChipItemEntity(
                  title: "Balochi Karahi",
                ),
                ChipItemEntity(
                  title: "Chicken Roast",
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.3.w / 2.w,
                ),
                itemCount: foods.length,
                itemBuilder: (BuildContext ctx, index) {
                  return LayoutBuilder(
                    builder: (context, constraints) => Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 4.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                foods[index].image.toString(),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              foods[index].title.toString(),
                              style: TextStyle(
                                fontSize: 50.sp,
                              ),
                            ),
                            Text(
                              foods[index].price.toString(),
                              style: TextStyle(
                                fontSize: 32.sp,
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListOfFoods {
  String? image;
  String? title;

  String? price;
  ListOfFoods({
    required this.image,
    required this.price,
    required this.title,
  });
}

List<ListOfFoods> foods = [
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
  ListOfFoods(
    title: "Chorizo ",
    price: "PKR 300",
    image:
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=300,272",
  ),
];
