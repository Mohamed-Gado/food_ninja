import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import '../../../utils/constants.dart';

class DraggableWidget extends StatelessWidget {
  final String coverPhoto;
  final List<Widget> body;

  const DraggableWidget({
    Key? key,
    required this.coverPhoto,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            leading: Navigator.of(context).canPop()
                ? Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        Constants.iconBack,
                        height: 45,
                        width: 45,
                      ),
                    ),
                  )
                : null,
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            collapsedHeight: MediaQuery.of(context).size.height * 0.1,
            flexibleSpace: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 0.2),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(coverPhoto), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 43,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(43),
                      ),
                    ),
                    child: Container(
                      width: 58,
                      height: 5,
                      decoration: CustomThemes.decorationShadow(
                        context,
                        lightColor: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 200,
                    ),
                    Column(
                      children: body,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
