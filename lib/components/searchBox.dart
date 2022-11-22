import 'package:flutter/material.dart';

//Creates an Animated Search box
class AnimatedSearchBar extends StatefulWidget {
  AnimatedSearchBar({super.key, required this.textEditingController});

  TextEditingController textEditingController;

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: _folded ? 56 : 250,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
        boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: !_folded
                  ? TextField(
                      controller: widget.textEditingController,
                      decoration: const InputDecoration(
                        hintText: "Search your NFT's",
                        hintStyle: TextStyle(
                          color: Color(0XFFEF972C),
                        ),
                        border: InputBorder.none,
                      ),
                    )
                  : null,
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_folded ? 32 : 0),
                  topRight: const Radius.circular(32),
                  bottomLeft: Radius.circular(_folded ? 32 : 0),
                  bottomRight: const Radius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    _folded ? Icons.search : Icons.cancel_outlined,
                    color: Colors.grey[800],
                  ),
                ),
                onTap: () {
                  setState(
                    () {
                      _folded = !_folded;
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
