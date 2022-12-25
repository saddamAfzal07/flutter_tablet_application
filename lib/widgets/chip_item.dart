import 'package:flutter/material.dart';

class ChipsItem extends StatefulWidget {
  final List<ChipItemEntity> chips;
  final ValueSetter<ChipItemEntity> onChanged;
  const ChipsItem({
    Key? key,
    required this.chips,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ChipsItem> createState() => _ChipsItemState();
}

class _ChipsItemState extends State<ChipsItem> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.chips.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: ChoiceChip(
              elevation: 0,
              selected: selectedIndex == index,
              label: Text(
                widget.chips[index].title,
              ),
              labelStyle: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.black,
              ),
              backgroundColor: Colors.transparent,
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
              ),
              onSelected: (value) {
                widget.onChanged(
                  widget.chips[index],
                );
                setState(
                  () {
                    selectedIndex = value ? index : 0;
                  },
                );
              },
              selectedColor: Colors.yellow,
            ),
          );
        }),
      ),
    );
  }
}

class ChipItemEntity {
  final String title;
  const ChipItemEntity({
    required this.title,
  });
}
